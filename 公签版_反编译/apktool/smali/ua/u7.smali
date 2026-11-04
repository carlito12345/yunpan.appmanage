.class public final synthetic Lua/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lha/ia;
.implements Lec/d;
.implements Lc6/f;
.implements Lc6/e;
.implements Lea/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/x7;


# direct methods
.method public synthetic constructor <init>(Lua/x7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/u7;->a:I

    iput-object p1, p0, Lua/u7;->b:Lua/x7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 12

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lua/u7;->b:Lua/x7;

    .line 5
    .line 6
    iget v4, p0, Lua/u7;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 14
    .line 15
    check-cast p1, Lda/g;

    .line 16
    .line 17
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    if-ne p1, v2, :cond_2

    .line 25
    .line 26
    iget-object p1, v3, Lda/h;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadPhoneStatePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    new-instance p1, Lha/z6;

    .line 39
    .line 40
    iget-object v5, v3, Lda/h;->f:Landroid/app/Activity;

    .line 41
    .line 42
    iget-object v6, v3, Lda/h;->e:Landroid/content/Context;

    .line 43
    .line 44
    new-instance v11, Lua/i1;

    .line 45
    .line 46
    const/16 v0, 0x17

    .line 47
    .line 48
    invoke-direct {v11, v0, v3}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string v7, "\u8bfb\u53d6sim\u5361\u6d41\u91cf\u4f7f\u7528\u60c5\u51b5\uff0c\u9700\u8981\u3010\u8bfb\u53d6\u7535\u8bdd\u72b6\u6001\u3011\u6743\u9650"

    .line 52
    .line 53
    const-string v8, ""

    .line 54
    .line 55
    const-string v9, "\u77e5\u9053\u4e86"

    .line 56
    .line 57
    const-string v10, ""

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 68
    .line 69
    check-cast p1, Lda/g;

    .line 70
    .line 71
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v2, 0x2

    .line 78
    if-ne p1, v2, :cond_3

    .line 79
    .line 80
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 81
    .line 82
    check-cast p1, Lda/g;

    .line 83
    .line 84
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    if-ne p1, v1, :cond_4

    .line 91
    .line 92
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 93
    .line 94
    check-cast p1, Lda/g;

    .line 95
    .line 96
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppHistoryLog;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const/4 v1, 0x4

    .line 103
    if-ne p1, v1, :cond_5

    .line 104
    .line 105
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 106
    .line 107
    check-cast p1, Lda/g;

    .line 108
    .line 109
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-ne p1, v0, :cond_6

    .line 119
    .line 120
    new-instance p1, Lha/ba;

    .line 121
    .line 122
    iget-object v0, v3, Lda/h;->f:Landroid/app/Activity;

    .line 123
    .line 124
    iget-object v1, v3, Lda/h;->e:Landroid/content/Context;

    .line 125
    .line 126
    invoke-direct {p1, v0, v1}, Lha/ba;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    const-string p1, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u53d1"

    .line 134
    .line 135
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    new-instance p1, Lha/y3;

    .line 145
    .line 146
    iget-object v0, v3, Lda/h;->f:Landroid/app/Activity;

    .line 147
    .line 148
    iget-object v1, v3, Lda/h;->e:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {p1, v0, v1}, Lha/y3;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    new-instance p1, Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v1, "json"

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v1, Lph/j;

    .line 168
    .line 169
    invoke-direct {v1, v0, p1}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lmc/c;

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance v0, Lua/v7;

    .line 193
    .line 194
    invoke-direct {v0, v3, v2}, Lua/v7;-><init>(Lua/x7;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 198
    .line 199
    .line 200
    :goto_1
    return-void

    .line 201
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    const/16 v0, 0x8

    .line 205
    .line 206
    if-ne p1, v0, :cond_8

    .line 207
    .line 208
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 209
    .line 210
    check-cast p1, Lda/g;

    .line 211
    .line 212
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_8
    if-ne p1, v2, :cond_9

    .line 219
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .line 222
    const/16 v2, 0x1a

    .line 223
    .line 224
    if-ge v0, v2, :cond_9

    .line 225
    .line 226
    const-string p1, "\u7cfb\u7edf\u4f4e\u4e8e8.0\uff0c\u65e0\u9700\u7ba1\u7406\u6b64\u6743\u9650"

    .line 227
    .line 228
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_9
    if-ne p1, v1, :cond_a

    .line 233
    .line 234
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 235
    .line 236
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 237
    .line 238
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 239
    .line 240
    if-nez v0, :cond_a

    .line 241
    .line 242
    const-string p1, "\u6b64\u529f\u80fd\u65e0\u6cd5\u7ba1\u7406\u6b64\u6743\u9650"

    .line 243
    .line 244
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_a
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 249
    .line 250
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v1, "type"

    .line 254
    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    iget-object p1, v3, Lda/h;->f:Landroid/app/Activity;

    .line 259
    .line 260
    check-cast p1, Lda/g;

    .line 261
    .line 262
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/content/Intent;

    .line 268
    .line 269
    iget-object v3, p1, Lda/g;->A:Lda/g;

    .line 270
    .line 271
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    :catch_0
    :goto_2
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lua/u7;->b:Lua/x7;

    .line 2
    .line 3
    iget-object v0, p2, Lua/x7;->h:Lx9/b1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/CmdBean;->name:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "\u5b9e\u9a8c\u5ba4"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p2, Lda/h;->f:Landroid/app/Activity;

    .line 22
    .line 23
    check-cast p1, Lda/g;

    .line 24
    .line 25
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/u7;->b:Lua/x7;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lda/h;->l(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne p1, v1, :cond_2

    .line 17
    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x18

    .line 21
    .line 22
    if-ge p1, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v1, v0, Lda/h;->e:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "str"

    .line 33
    .line 34
    const-string v2, "\u5728\u5c0f\u7a97\u53e3\u4e2d\u627e\u5230\u914d\u5bf9\u7801\u540e\uff0c\u5728\u8fd9\u91cc\u8f93\u5165"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 43
    .line 44
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v1, Lha/db;

    .line 49
    .line 50
    const/16 v2, 0x1d

    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lua/u7;->b:Lua/x7;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 7
    .line 8
    const v2, 0x7f0802fa

    .line 9
    .line 10
    .line 11
    const-string v3, "\u6587\u4ef6\u4e0b\u8f7d"

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lua/x7;->h:Lx9/b1;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 22
    .line 23
    const v3, 0x7f080288

    .line 24
    .line 25
    .line 26
    const-string v4, "\u5185\u5b58\u6e05\u7406"

    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 35
    .line 36
    const v3, 0x7f0802ee

    .line 37
    .line 38
    .line 39
    const-string v4, "\u5e94\u7528\u7ba1\u7406"

    .line 40
    .line 41
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 48
    .line 49
    const v5, 0x7f0802bf

    .line 50
    .line 51
    .line 52
    const-string v6, "\u5feb\u6377\u6743\u9650\u7ba1\u7406"

    .line 53
    .line 54
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 61
    .line 62
    const v5, 0x7f0802de

    .line 63
    .line 64
    .line 65
    const-string v6, "\u5e94\u7528\u7edf\u8ba1\u5206\u6790"

    .line 66
    .line 67
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 74
    .line 75
    const v5, 0x7f0802ef

    .line 76
    .line 77
    .line 78
    const-string v6, "\u6267\u884c\u547d\u4ee4"

    .line 79
    .line 80
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 87
    .line 88
    const v5, 0x7f080271

    .line 89
    .line 90
    .line 91
    const-string v6, "\u91cd\u542f/\u5173\u673a"

    .line 92
    .line 93
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 100
    .line 101
    const v5, 0x7f0802e2

    .line 102
    .line 103
    .line 104
    const-string v6, "OTG-ADB"

    .line 105
    .line 106
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 113
    .line 114
    const v5, 0x7f080289

    .line 115
    .line 116
    .line 117
    const-string v6, "\u5df2\u8fd0\u884c\u5e94\u7528"

    .line 118
    .line 119
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 126
    .line 127
    const v5, 0x7f08021c

    .line 128
    .line 129
    .line 130
    const-string v6, "\u65e0\u969c\u788d\u670d\u52a1"

    .line 131
    .line 132
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 139
    .line 140
    const-string v6, "\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 141
    .line 142
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 149
    .line 150
    const-string v6, "\u5f00\u673a\u6267\u884c\u4efb\u52a1"

    .line 151
    .line 152
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 159
    .line 160
    const v5, 0x7f0802a8

    .line 161
    .line 162
    .line 163
    const-string v6, "\u8f66\u673a\u5e94\u7528\u6c89\u6d78"

    .line 164
    .line 165
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 172
    .line 173
    const v5, 0x7f0802f0

    .line 174
    .line 175
    .line 176
    const-string v6, "\u81ea\u542f\u52a8\u7ba1\u7406"

    .line 177
    .line 178
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 185
    .line 186
    const v5, 0x7f0801ff

    .line 187
    .line 188
    .line 189
    const-string v6, "\u8bbe\u5907\u4fe1\u606f"

    .line 190
    .line 191
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 198
    .line 199
    const v5, 0x7f130050

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    const v6, 0x7f080305

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v6, v5}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 216
    .line 217
    const v5, 0x7f0801f8

    .line 218
    .line 219
    .line 220
    const-string v6, "\u539f\u751f\u529f\u80fd"

    .line 221
    .line 222
    invoke-direct {v1, v5, v6}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 229
    .line 230
    const v6, 0x7f080214

    .line 231
    .line 232
    .line 233
    const-string v7, "adb\u5f00/\u5173"

    .line 234
    .line 235
    invoke-direct {v1, v6, v7}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 242
    .line 243
    const/16 v7, 0x1e

    .line 244
    .line 245
    if-lt v1, v7, :cond_0

    .line 246
    .line 247
    new-instance v7, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 248
    .line 249
    const-string v8, "\u9002\u914d\u7801adb"

    .line 250
    .line 251
    invoke-direct {v7, v6, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_0
    new-instance v6, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 258
    .line 259
    const v7, 0x7f0802f2

    .line 260
    .line 261
    .line 262
    const-string v8, "\u5b9e\u9a8c\u5ba4"

    .line 263
    .line 264
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    new-instance v6, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 271
    .line 272
    const v7, 0x7f0802c2

    .line 273
    .line 274
    .line 275
    const-string v8, "\u914d\u7f6e\u5907\u4efd"

    .line 276
    .line 277
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    new-instance v6, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 284
    .line 285
    const v7, 0x7f0802d9

    .line 286
    .line 287
    .line 288
    const-string v8, "\u7ba1\u5bb6\u8bbe\u7f6e"

    .line 289
    .line 290
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    new-instance v6, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 297
    .line 298
    const v7, 0x7f080126

    .line 299
    .line 300
    .line 301
    const-string v8, "\u53cd\u9988\u5efa\u8bae"

    .line 302
    .line 303
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    new-instance v6, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 310
    .line 311
    const v7, 0x7f0802dc

    .line 312
    .line 313
    .line 314
    const-string v8, "\u66f4\u65b0\u68c0\u6d4b"

    .line 315
    .line 316
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 323
    .line 324
    new-instance v6, Landroid/content/Intent;

    .line 325
    .line 326
    const-string v7, "android.settings.SETTINGS"

    .line 327
    .line 328
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    iget-object v6, v0, Lua/x7;->i:Lx9/b1;

    .line 336
    .line 337
    const-string v8, ""

    .line 338
    .line 339
    if-eqz v2, :cond_1

    .line 340
    .line 341
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 342
    .line 343
    const-string v9, "\u539f\u751f\u8bbe\u7f6e"

    .line 344
    .line 345
    invoke-direct {v2, v5, v9, v7, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_1
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 352
    .line 353
    const v7, 0x7f08024c

    .line 354
    .line 355
    .line 356
    const-string v9, "\u9009\u62e9\u9ed8\u8ba4\u684c\u9762"

    .line 357
    .line 358
    invoke-direct {v2, v7, v9, v8, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 365
    .line 366
    new-instance v7, Landroid/content/Intent;

    .line 367
    .line 368
    const-string v9, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 369
    .line 370
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_2

    .line 378
    .line 379
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 380
    .line 381
    const v7, 0x7f0802f3

    .line 382
    .line 383
    .line 384
    const-string v10, "\u8bbe\u7f6e\u9ed8\u8ba4\u5e94\u7528"

    .line 385
    .line 386
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_2
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 393
    .line 394
    new-instance v7, Landroid/content/Intent;

    .line 395
    .line 396
    const-string v9, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    .line 397
    .line 398
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_3

    .line 406
    .line 407
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 408
    .line 409
    const v7, 0x7f080213

    .line 410
    .line 411
    .line 412
    const-string v10, "\u5f00\u53d1\u8005\u9009\u9879"

    .line 413
    .line 414
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_3
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 421
    .line 422
    new-instance v7, Landroid/content/Intent;

    .line 423
    .line 424
    const-string v9, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    .line 425
    .line 426
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_4

    .line 434
    .line 435
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 436
    .line 437
    const v7, 0x7f08028a

    .line 438
    .line 439
    .line 440
    const-string v10, "\u901a\u77e5\u4f7f\u7528\u6743"

    .line 441
    .line 442
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    :cond_4
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 449
    .line 450
    new-instance v7, Landroid/content/Intent;

    .line 451
    .line 452
    const-string v9, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

    .line 453
    .line 454
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_5

    .line 462
    .line 463
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 464
    .line 465
    const v7, 0x7f0802f6

    .line 466
    .line 467
    .line 468
    const-string v10, "\u901a\u77e5\u6388\u6743"

    .line 469
    .line 470
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    :cond_5
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 477
    .line 478
    new-instance v7, Landroid/content/Intent;

    .line 479
    .line 480
    const-string v9, "android.settings.DATE_SETTINGS"

    .line 481
    .line 482
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    if-eqz v2, :cond_6

    .line 490
    .line 491
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 492
    .line 493
    const v7, 0x7f0802dd

    .line 494
    .line 495
    .line 496
    const-string v10, "\u65f6\u95f4\u65e5\u671f"

    .line 497
    .line 498
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_6
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 505
    .line 506
    new-instance v7, Landroid/content/Intent;

    .line 507
    .line 508
    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 509
    .line 510
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_7

    .line 518
    .line 519
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 520
    .line 521
    const v7, 0x7f0802f1

    .line 522
    .line 523
    .line 524
    const-string v10, "\u65e0\u969c\u788d"

    .line 525
    .line 526
    invoke-direct {v2, v7, v10, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    :cond_7
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 533
    .line 534
    new-instance v7, Landroid/content/Intent;

    .line 535
    .line 536
    const-string v9, "android.settings.APPLICATION_SETTINGS"

    .line 537
    .line 538
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v2, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_8

    .line 546
    .line 547
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 548
    .line 549
    invoke-direct {v2, v3, v4, v9, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_8
    iget-object v2, v0, Lda/h;->e:Landroid/content/Context;

    .line 556
    .line 557
    new-instance v3, Landroid/content/Intent;

    .line 558
    .line 559
    const-string v4, "android.settings.WIFI_SETTINGS"

    .line 560
    .line 561
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-static {v2, v3}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    if-eqz v2, :cond_9

    .line 569
    .line 570
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 571
    .line 572
    const v3, 0x7f0802e8

    .line 573
    .line 574
    .line 575
    const-string v7, "WIFI"

    .line 576
    .line 577
    invoke-direct {v2, v3, v7, v4, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    :cond_9
    const/16 v2, 0x1c

    .line 584
    .line 585
    if-lt v1, v2, :cond_a

    .line 586
    .line 587
    iget-object v1, v0, Lda/h;->e:Landroid/content/Context;

    .line 588
    .line 589
    new-instance v2, Landroid/content/Intent;

    .line 590
    .line 591
    const-string v3, "android.settings.DATA_USAGE_SETTINGS"

    .line 592
    .line 593
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-static {v1, v2}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_a

    .line 601
    .line 602
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 603
    .line 604
    const v2, 0x7f0802ea

    .line 605
    .line 606
    .line 607
    const-string v4, "\u6d41\u91cf\u7edf\u8ba1"

    .line 608
    .line 609
    invoke-direct {v1, v2, v4, v3, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    :cond_a
    iget-object v1, v0, Lda/h;->e:Landroid/content/Context;

    .line 616
    .line 617
    new-instance v2, Landroid/content/Intent;

    .line 618
    .line 619
    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    .line 620
    .line 621
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-static {v1, v2}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_b

    .line 629
    .line 630
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 631
    .line 632
    const v2, 0x7f080294

    .line 633
    .line 634
    .line 635
    const-string v4, "\u84dd\u7259"

    .line 636
    .line 637
    invoke-direct {v1, v2, v4, v3, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    :cond_b
    iget-object v1, v0, Lda/h;->e:Landroid/content/Context;

    .line 644
    .line 645
    new-instance v2, Landroid/content/Intent;

    .line 646
    .line 647
    const-string v3, "android.settings.DEVICE_INFO_SETTINGS"

    .line 648
    .line 649
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-static {v1, v2}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eqz v1, :cond_c

    .line 657
    .line 658
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 659
    .line 660
    const v2, 0x7f080210

    .line 661
    .line 662
    .line 663
    const-string v4, "\u5173\u4e8e\u8bbe\u5907"

    .line 664
    .line 665
    invoke-direct {v1, v2, v4, v3, v8}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v6, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    :cond_c
    const-string v1, "\u5b8c\u6210\u521d\u59cb\u5316"

    .line 672
    .line 673
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    :cond_d
    const-wide/16 v1, 0x1f4

    .line 677
    .line 678
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 679
    .line 680
    .line 681
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 682
    .line 683
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 684
    .line 685
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->B:Z

    .line 686
    .line 687
    if-eqz v1, :cond_d

    .line 688
    .line 689
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    :cond_e
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-eqz v2, :cond_1a

    .line 710
    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 716
    .line 717
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 718
    .line 719
    if-nez v3, :cond_e

    .line 720
    .line 721
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 722
    .line 723
    if-nez v3, :cond_e

    .line 724
    .line 725
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 726
    .line 727
    if-nez v3, :cond_e

    .line 728
    .line 729
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-eqz v3, :cond_f

    .line 736
    .line 737
    goto :goto_0

    .line 738
    :cond_f
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 739
    .line 740
    const-string v4, "com.android.tv.settings"

    .line 741
    .line 742
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-eqz v3, :cond_10

    .line 747
    .line 748
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 749
    .line 750
    const-string v3, "com.android.tv.settings.MainSettings"

    .line 751
    .line 752
    const-string v6, "\u539f\u751f\u8bbe\u7f6e(TV)"

    .line 753
    .line 754
    invoke-direct {v2, v5, v6, v4, v3}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    goto :goto_0

    .line 761
    :cond_10
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 762
    .line 763
    const-string v4, "com.android.settings"

    .line 764
    .line 765
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-eqz v3, :cond_18

    .line 770
    .line 771
    new-instance v2, Landroid/content/ComponentName;

    .line 772
    .line 773
    const-string v3, "com.android.settings.Settings"

    .line 774
    .line 775
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 779
    .line 780
    new-instance v6, Landroid/content/Intent;

    .line 781
    .line 782
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    invoke-static {v3, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    const v6, 0x7f080239

    .line 794
    .line 795
    .line 796
    if-eqz v3, :cond_11

    .line 797
    .line 798
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 799
    .line 800
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    const-string v8, "\u7cfb\u7edf\u8bbe\u7f6e(\u6d4b)"

    .line 809
    .line 810
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    :cond_11
    new-instance v2, Landroid/content/ComponentName;

    .line 817
    .line 818
    const-string v3, "com.android.settings.LanguageSettings"

    .line 819
    .line 820
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 824
    .line 825
    new-instance v7, Landroid/content/Intent;

    .line 826
    .line 827
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    if-eqz v3, :cond_12

    .line 839
    .line 840
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 841
    .line 842
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v7

    .line 846
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    const-string v8, "\u8f93\u5165\u6cd5\u8bbe\u7f6e(\u6d4b)"

    .line 851
    .line 852
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 856
    .line 857
    .line 858
    :cond_12
    new-instance v2, Landroid/content/ComponentName;

    .line 859
    .line 860
    const-string v3, "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    .line 861
    .line 862
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 866
    .line 867
    new-instance v7, Landroid/content/Intent;

    .line 868
    .line 869
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 873
    .line 874
    .line 875
    move-result-object v7

    .line 876
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    if-eqz v3, :cond_13

    .line 881
    .line 882
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 883
    .line 884
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v7

    .line 888
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    const-string v8, "\u5f00\u53d1\u8005\u9009\u9879(\u6d4b)"

    .line 893
    .line 894
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 898
    .line 899
    .line 900
    :cond_13
    new-instance v2, Landroid/content/ComponentName;

    .line 901
    .line 902
    const-string v3, "com.android.settings.Settings$HighPowerApplicationsActivity"

    .line 903
    .line 904
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 908
    .line 909
    new-instance v7, Landroid/content/Intent;

    .line 910
    .line 911
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 915
    .line 916
    .line 917
    move-result-object v7

    .line 918
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    if-eqz v3, :cond_14

    .line 923
    .line 924
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 925
    .line 926
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v7

    .line 930
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    const-string v8, "\u7535\u6c60\u4f18\u5316(\u6d4b)"

    .line 935
    .line 936
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 940
    .line 941
    .line 942
    :cond_14
    new-instance v2, Landroid/content/ComponentName;

    .line 943
    .line 944
    const-string v3, "com.android.settings.Settings$MyDeviceInfoActivity"

    .line 945
    .line 946
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 950
    .line 951
    new-instance v7, Landroid/content/Intent;

    .line 952
    .line 953
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    if-eqz v3, :cond_15

    .line 965
    .line 966
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 967
    .line 968
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v7

    .line 972
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v2

    .line 976
    const-string v8, "\u5173\u4e8e\u8bbe\u5907(\u6d4b)"

    .line 977
    .line 978
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 982
    .line 983
    .line 984
    :cond_15
    new-instance v2, Landroid/content/ComponentName;

    .line 985
    .line 986
    const-string v3, "com.android.settings.Settings$OverlaySettingsActivity"

    .line 987
    .line 988
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 992
    .line 993
    new-instance v7, Landroid/content/Intent;

    .line 994
    .line 995
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v3

    .line 1006
    if-eqz v3, :cond_16

    .line 1007
    .line 1008
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 1009
    .line 1010
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v7

    .line 1014
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    const-string v8, "\u60ac\u6d6e\u7a97\u6743\u9650(\u6d4b)"

    .line 1019
    .line 1020
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_16
    new-instance v2, Landroid/content/ComponentName;

    .line 1027
    .line 1028
    const-string v3, "com.android.settings.Settings$PictureInPictureSettingsActivity"

    .line 1029
    .line 1030
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 1034
    .line 1035
    new-instance v7, Landroid/content/Intent;

    .line 1036
    .line 1037
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    invoke-static {v3, v7}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_17

    .line 1049
    .line 1050
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 1051
    .line 1052
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v7

    .line 1056
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    const-string v8, "\u753b\u4e2d\u753b\u6743\u9650(\u6d4b)"

    .line 1061
    .line 1062
    invoke-direct {v3, v6, v8, v7, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    :cond_17
    new-instance v2, Landroid/content/ComponentName;

    .line 1069
    .line 1070
    const-string v3, "com.android.settings.Settings$StorageDashboardActivity"

    .line 1071
    .line 1072
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 1076
    .line 1077
    new-instance v4, Landroid/content/Intent;

    .line 1078
    .line 1079
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v4

    .line 1086
    invoke-static {v3, v4}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v3

    .line 1090
    if-eqz v3, :cond_e

    .line 1091
    .line 1092
    new-instance v3, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 1093
    .line 1094
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v4

    .line 1098
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    const-string v7, "\u5b58\u50a8\u7a7a\u95f4(\u6d4b)"

    .line 1103
    .line 1104
    invoke-direct {v3, v6, v7, v4, v2}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_0

    .line 1111
    .line 1112
    :cond_18
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1113
    .line 1114
    const-string v4, "\u8bbe\u7f6e"

    .line 1115
    .line 1116
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    if-nez v3, :cond_19

    .line 1121
    .line 1122
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1123
    .line 1124
    const-string v4, "\u7535\u89c6\u8bbe\u7f6e"

    .line 1125
    .line 1126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v3

    .line 1130
    if-nez v3, :cond_19

    .line 1131
    .line 1132
    iget-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1133
    .line 1134
    const-string v4, "\u7cfb\u7edf\u8bbe\u7f6e"

    .line 1135
    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v3

    .line 1140
    if-eqz v3, :cond_e

    .line 1141
    .line 1142
    :cond_19
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 1143
    .line 1144
    if-eqz v3, :cond_e

    .line 1145
    .line 1146
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1147
    .line 1148
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1149
    .line 1150
    iget-object v4, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1151
    .line 1152
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    if-eqz v3, :cond_e

    .line 1157
    .line 1158
    new-instance v4, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 1159
    .line 1160
    iget-object v6, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1161
    .line 1162
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    invoke-direct {v4, v5, v6, v2, v3}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {p1, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1176
    .line 1177
    .line 1178
    goto/16 :goto_0

    .line 1179
    .line 1180
    :cond_1a
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 1181
    .line 1182
    .line 1183
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 11

    .line 1
    iget-object v1, p0, Lua/u7;->b:Lua/x7;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lua/x7;->h:Lx9/b1;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/CmdBean;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/CmdBean;->str2:Ljava/lang/String;

    .line 49
    .line 50
    const/high16 p3, 0x10000000

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, v1, Lda/h;->e:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v3, p2, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :catch_0
    nop

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v2, Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-direct {v2, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iget-object p2, v1, Lda/h;->e:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v3, p2, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :goto_0
    const-string p2, "com.android.settings.Settings"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 104
    .line 105
    const-string p2, "android.settings.SETTINGS"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    iget-object p2, v1, Lda/h;->e:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v3, p2, p1}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :catch_1
    :cond_1
    const-string p1, "\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u8c03\u7528\u6b64\u529f\u80fd\uff01"

    .line 121
    .line 122
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_2
    const-string v2, "\u5185\u5b58\u6e05\u7406"

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    new-instance p1, Lha/t4;

    .line 136
    .line 137
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 138
    .line 139
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 140
    .line 141
    invoke-direct {p1, p2, p3}, Lha/t4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Lua/u7;

    .line 145
    .line 146
    const/4 p3, 0x6

    .line 147
    invoke-direct {p2, v1, p3}, Lua/u7;-><init>(Lua/x7;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 151
    .line 152
    .line 153
    iput-object p2, p1, Lha/t4;->i:Lua/u7;

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_3
    const-string v2, "\u7ba1\u5bb6\u8bbe\u7f6e"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    new-instance p1, Lha/fc;

    .line 166
    .line 167
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 168
    .line 169
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 170
    .line 171
    invoke-direct {p1, p2, p3}, Lha/fc;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lha/fc;->show()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :cond_4
    const-string v2, "\u914d\u7f6e\u5907\u4efd"

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    new-instance v8, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string p1, "\u5bfc\u51fa\u914d\u7f6e"

    .line 193
    .line 194
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    const-string p1, "\u5bfc\u5165\u914d\u7f6e"

    .line 198
    .line 199
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance p1, Lha/ja;

    .line 203
    .line 204
    iget-object v5, v1, Lda/h;->f:Landroid/app/Activity;

    .line 205
    .line 206
    iget-object v6, v1, Lda/h;->e:Landroid/content/Context;

    .line 207
    .line 208
    new-instance v9, Lua/u7;

    .line 209
    .line 210
    const/4 p3, 0x1

    .line 211
    invoke-direct {v9, v1, p3}, Lua/u7;-><init>(Lua/x7;I)V

    .line 212
    .line 213
    .line 214
    move-object v4, p1

    .line 215
    move-object v7, p2

    .line 216
    invoke-direct/range {v4 .. v9}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_5
    const-string v2, "\u5f00\u673a\u6267\u884c\u4efb\u52a1"

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_6

    .line 231
    .line 232
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 233
    .line 234
    check-cast p1, Lda/g;

    .line 235
    .line 236
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :cond_6
    const v2, 0x7f130050

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_7

    .line 255
    .line 256
    new-instance p1, Lha/i;

    .line 257
    .line 258
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 259
    .line 260
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const v2, 0x7f13004f

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-direct {p1, p2, p3, v0, v1}, Lha/i;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_7

    .line 280
    .line 281
    :cond_7
    const-string v2, "\u8bbe\u5907\u4fe1\u606f"

    .line 282
    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_8

    .line 288
    .line 289
    new-instance p1, Lha/q6;

    .line 290
    .line 291
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 292
    .line 293
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 294
    .line 295
    invoke-direct {p1, p2, p3}, Lha/q6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_7

    .line 302
    .line 303
    :cond_8
    const-string v2, "\u539f\u751f\u529f\u80fd"

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_9

    .line 310
    .line 311
    new-instance p1, Lha/id;

    .line 312
    .line 313
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 314
    .line 315
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 316
    .line 317
    iget-object v0, v1, Lua/x7;->i:Lx9/b1;

    .line 318
    .line 319
    invoke-direct {p1, p2, p3, v0}, Lha/id;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/b1;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_7

    .line 326
    .line 327
    :cond_9
    const-string v2, "\u6267\u884c\u547d\u4ee4"

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_a

    .line 334
    .line 335
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 336
    .line 337
    check-cast p1, Lda/g;

    .line 338
    .line 339
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_7

    .line 345
    .line 346
    :cond_a
    const-string v2, "\u4e0b\u8f7d"

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_b

    .line 353
    .line 354
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 355
    .line 356
    check-cast p1, Lda/g;

    .line 357
    .line 358
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :cond_b
    const-string v2, "\u6253\u8d4f\u7ba1\u5bb6"

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_c

    .line 372
    .line 373
    new-instance p1, Lha/p5;

    .line 374
    .line 375
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 376
    .line 377
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 378
    .line 379
    const/4 v0, 0x1

    .line 380
    invoke-direct {p1, p2, p3, v0}, Lha/p5;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_7

    .line 387
    .line 388
    :cond_c
    const-string v2, "\u591a\u5c4f\u5f02\u663e"

    .line 389
    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_f

    .line 395
    .line 396
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 397
    .line 398
    const-string p2, "display"

    .line 399
    .line 400
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 405
    .line 406
    if-eqz p1, :cond_e

    .line 407
    .line 408
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    array-length p1, p1

    .line 413
    const/4 p2, 0x2

    .line 414
    if-ge p1, p2, :cond_d

    .line 415
    .line 416
    goto :goto_1

    .line 417
    :cond_d
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 418
    .line 419
    check-cast p1, Lda/g;

    .line 420
    .line 421
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 422
    .line 423
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :cond_e
    :goto_1
    const-string p1, "\u6ca1\u6709\u8fde\u63a5\u591a\u5c4f"

    .line 429
    .line 430
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_7

    .line 434
    .line 435
    :cond_f
    const-string v2, "\u5e94\u7528\u7edf\u8ba1\u5206\u6790"

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    const/16 v4, 0x17

    .line 442
    .line 443
    if-eqz v2, :cond_12

    .line 444
    .line 445
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 446
    .line 447
    if-ge p1, v4, :cond_10

    .line 448
    .line 449
    const-string p1, "\u6b64\u529f\u80fd\u9700\u8981\u5b89\u53536.0\u4ee5\u4e0a\u7cfb\u7edf"

    .line 450
    .line 451
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_7

    .line 455
    .line 456
    :cond_10
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 457
    .line 458
    invoke-static {p1}, Lif/a;->a0(Landroid/content/Context;)Z

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    if-nez p1, :cond_11

    .line 463
    .line 464
    invoke-static {v1}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 469
    .line 470
    .line 471
    move-result-object p3

    .line 472
    invoke-virtual {p1, p3}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    new-instance p3, Lua/g6;

    .line 477
    .line 478
    const/4 v0, 0x3

    .line 479
    invoke-direct {p3, v1, v0, p2}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, p3}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_7

    .line 486
    .line 487
    :cond_11
    invoke-virtual {v1}, Lua/x7;->p()V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :cond_12
    const-string p2, "\u81ea\u542f\u52a8\u7ba1\u7406"

    .line 493
    .line 494
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 495
    .line 496
    .line 497
    move-result p2

    .line 498
    if-eqz p2, :cond_13

    .line 499
    .line 500
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 501
    .line 502
    check-cast p1, Lda/g;

    .line 503
    .line 504
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityStart;

    .line 505
    .line 506
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_7

    .line 510
    .line 511
    :cond_13
    const-string p2, "\u5e94\u7528\u7ba1\u7406"

    .line 512
    .line 513
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result p2

    .line 517
    if-eqz p2, :cond_14

    .line 518
    .line 519
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 520
    .line 521
    check-cast p1, Lda/g;

    .line 522
    .line 523
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 524
    .line 525
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :cond_14
    const-string p2, "\u65e0\u969c\u788d"

    .line 531
    .line 532
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result p2

    .line 536
    if-eqz p2, :cond_15

    .line 537
    .line 538
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 539
    .line 540
    check-cast p1, Lda/g;

    .line 541
    .line 542
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 543
    .line 544
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_7

    .line 548
    .line 549
    :cond_15
    const-string p2, "\u81ea\u52a8\u5316\u4efb\u52a1"

    .line 550
    .line 551
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 552
    .line 553
    .line 554
    move-result p2

    .line 555
    if-eqz p2, :cond_18

    .line 556
    .line 557
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 558
    .line 559
    invoke-static {p1}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 560
    .line 561
    .line 562
    move-result p1

    .line 563
    if-nez p1, :cond_17

    .line 564
    .line 565
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 566
    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-static {}, La2/w0;->J()Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_16

    .line 575
    .line 576
    const-string p1, "adb\u65e0\u6cd5\u6388\u4e88\u6743\u9650\uff0c\u6b64\u7cfb\u7edf\u6709\u9650\u5236"

    .line 577
    .line 578
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_7

    .line 582
    .line 583
    :cond_16
    const-string p1, "\u9996\u6b21\u4f7f\u7528\u6b64\u529f\u80fd\u9700 \u8fde\u63a5adb \u6216 root \u6216 \u516c\u7b7e\u7cfb\u7edf"

    .line 584
    .line 585
    invoke-virtual {v1, p1}, Lua/x7;->r(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_7

    .line 589
    .line 590
    :cond_17
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 591
    .line 592
    check-cast p1, Lda/g;

    .line 593
    .line 594
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 595
    .line 596
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_7

    .line 600
    .line 601
    :cond_18
    const-string p2, "\u6c89\u6d78"

    .line 602
    .line 603
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 604
    .line 605
    .line 606
    move-result p2

    .line 607
    if-eqz p2, :cond_1b

    .line 608
    .line 609
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 610
    .line 611
    invoke-static {p1}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 612
    .line 613
    .line 614
    move-result p1

    .line 615
    if-nez p1, :cond_1a

    .line 616
    .line 617
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 618
    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    invoke-static {}, La2/w0;->P()Z

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    if-eqz p1, :cond_19

    .line 627
    .line 628
    goto :goto_2

    .line 629
    :cond_19
    const-string p1, "\u9996\u6b21\u4f7f\u7528\u6b64\u529f\u80fd\u9700\u8fde\u63a5adb\u6216root\u6216\u516c\u7b7e\u7cfb\u7edf"

    .line 630
    .line 631
    invoke-virtual {v1, p1}, Lua/x7;->r(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    goto/16 :goto_7

    .line 635
    .line 636
    :cond_1a
    :goto_2
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 637
    .line 638
    check-cast p1, Lda/g;

    .line 639
    .line 640
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 641
    .line 642
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_7

    .line 646
    .line 647
    :cond_1b
    const-string p2, "\u5df2\u8fd0\u884c\u5e94\u7528"

    .line 648
    .line 649
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 650
    .line 651
    .line 652
    move-result p2

    .line 653
    const-string v2, "\u4f7f\u7528\u6b64\u529f\u80fd\u9700\u8fde\u63a5adb \u6216 root \u6216 \u516c\u7b7e\u7cfb\u7edf"

    .line 654
    .line 655
    const/16 v5, 0x15

    .line 656
    .line 657
    if-eqz p2, :cond_1d

    .line 658
    .line 659
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 660
    .line 661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    invoke-static {}, La2/w0;->N()Z

    .line 665
    .line 666
    .line 667
    move-result p1

    .line 668
    if-nez p1, :cond_1c

    .line 669
    .line 670
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 671
    .line 672
    if-lt p1, v5, :cond_1c

    .line 673
    .line 674
    invoke-virtual {v1, v2}, Lua/x7;->r(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_7

    .line 678
    .line 679
    :cond_1c
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 680
    .line 681
    check-cast p1, Lda/g;

    .line 682
    .line 683
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 684
    .line 685
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_7

    .line 689
    .line 690
    :cond_1d
    const-string p2, "\u5173\u673a"

    .line 691
    .line 692
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 693
    .line 694
    .line 695
    move-result p2

    .line 696
    if-nez p2, :cond_31

    .line 697
    .line 698
    const-string p2, "\u91cd\u542f"

    .line 699
    .line 700
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 701
    .line 702
    .line 703
    move-result p2

    .line 704
    if-eqz p2, :cond_1e

    .line 705
    .line 706
    goto/16 :goto_6

    .line 707
    .line 708
    :cond_1e
    const-string p2, "\u5b9e\u9a8c\u5ba4"

    .line 709
    .line 710
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 711
    .line 712
    .line 713
    move-result p2

    .line 714
    if-eqz p2, :cond_1f

    .line 715
    .line 716
    iget-object p1, v1, Lda/h;->f:Landroid/app/Activity;

    .line 717
    .line 718
    check-cast p1, Lda/g;

    .line 719
    .line 720
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 721
    .line 722
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_7

    .line 726
    .line 727
    :cond_1f
    const-string p2, "OTG"

    .line 728
    .line 729
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 730
    .line 731
    .line 732
    move-result p2

    .line 733
    if-eqz p2, :cond_28

    .line 734
    .line 735
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 736
    .line 737
    const-string p2, "usb"

    .line 738
    .line 739
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    move-object v2, p1

    .line 744
    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 745
    .line 746
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    const-string p2, "\u8bf7\u7528OTG\u8f6c\u63a5\u7ebf \u8fde\u63a5\u5176\u5b83\u5b89\u5353\u8bbe\u5907"

    .line 755
    .line 756
    if-eqz p1, :cond_20

    .line 757
    .line 758
    invoke-static {p2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_7

    .line 762
    .line 763
    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .line 767
    .line 768
    new-instance v4, Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 774
    .line 775
    .line 776
    move-result-object p3

    .line 777
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 778
    .line 779
    .line 780
    move-result-object p3

    .line 781
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 782
    .line 783
    .line 784
    move-result-object p3

    .line 785
    :cond_21
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    const/4 v6, 0x0

    .line 790
    if-eqz v0, :cond_25

    .line 791
    .line 792
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    check-cast v0, Ljava/lang/String;

    .line 797
    .line 798
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 799
    .line 800
    .line 801
    move-result-object v7

    .line 802
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 807
    .line 808
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 809
    .line 810
    if-lt v7, v5, :cond_22

    .line 811
    .line 812
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 813
    .line 814
    invoke-static {v0}, Ltb/b;->o(Landroid/hardware/usb/UsbDevice;)V

    .line 815
    .line 816
    .line 817
    invoke-static {v0}, Ltb/b;->A(Landroid/hardware/usb/UsbDevice;)V

    .line 818
    .line 819
    .line 820
    invoke-static {v0}, Lua/t7;->n(Landroid/hardware/usb/UsbDevice;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .line 830
    .line 831
    invoke-static {v0}, Lwa/h;->w(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    const-string v8, " "

    .line 839
    .line 840
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-static {v0}, Lwa/h;->m(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v8

    .line 847
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v7

    .line 854
    const-string v8, "LTE Module"

    .line 855
    .line 856
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 857
    .line 858
    .line 859
    move-result v7

    .line 860
    if-eqz v7, :cond_22

    .line 861
    .line 862
    goto :goto_3

    .line 863
    :cond_22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 864
    .line 865
    .line 866
    move-result v7

    .line 867
    :goto_4
    if-ge v6, v7, :cond_24

    .line 868
    .line 869
    invoke-virtual {v0, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 870
    .line 871
    .line 872
    move-result-object v8

    .line 873
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 874
    .line 875
    .line 876
    move-result v9

    .line 877
    const/16 v10, 0xff

    .line 878
    .line 879
    if-ne v9, v10, :cond_23

    .line 880
    .line 881
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 882
    .line 883
    .line 884
    move-result v9

    .line 885
    const/16 v10, 0x42

    .line 886
    .line 887
    if-ne v9, v10, :cond_23

    .line 888
    .line 889
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 890
    .line 891
    .line 892
    move-result v9

    .line 893
    if-ne v9, v3, :cond_23

    .line 894
    .line 895
    goto :goto_5

    .line 896
    :cond_23
    add-int/lit8 v6, v6, 0x1

    .line 897
    .line 898
    goto :goto_4

    .line 899
    :cond_24
    const/4 v8, 0x0

    .line 900
    :goto_5
    if-eqz v8, :cond_21

    .line 901
    .line 902
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    goto :goto_3

    .line 909
    :cond_25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 910
    .line 911
    .line 912
    move-result p3

    .line 913
    if-eqz p3, :cond_26

    .line 914
    .line 915
    invoke-static {p2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_7

    .line 919
    .line 920
    :cond_26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 921
    .line 922
    .line 923
    move-result p2

    .line 924
    if-ne p2, v3, :cond_27

    .line 925
    .line 926
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 931
    .line 932
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object p2

    .line 936
    check-cast p2, Landroid/hardware/usb/UsbInterface;

    .line 937
    .line 938
    invoke-virtual {v1, v2, p1, p2, v6}, Lua/x7;->n(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_7

    .line 942
    .line 943
    :cond_27
    new-instance p2, Lha/ta;

    .line 944
    .line 945
    iget-object p3, v1, Lda/h;->f:Landroid/app/Activity;

    .line 946
    .line 947
    iget-object v6, v1, Lda/h;->e:Landroid/content/Context;

    .line 948
    .line 949
    new-instance v7, Landroidx/fragment/app/f;

    .line 950
    .line 951
    const/4 v5, 0x4

    .line 952
    move-object v0, v7

    .line 953
    move-object v3, p1

    .line 954
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 955
    .line 956
    .line 957
    invoke-direct {p2, p3, v6, p1, v7}, Lha/ta;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;Landroidx/fragment/app/f;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 961
    .line 962
    .line 963
    goto/16 :goto_7

    .line 964
    .line 965
    :cond_28
    const-string p2, "\u5feb\u6377\u6743\u9650\u7ba1\u7406"

    .line 966
    .line 967
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 968
    .line 969
    .line 970
    move-result p2

    .line 971
    if-eqz p2, :cond_2c

    .line 972
    .line 973
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 974
    .line 975
    if-ge p1, v4, :cond_29

    .line 976
    .line 977
    const-string p1, "\u4f4e\u4e8e\u5b89\u53536.0\uff0c\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 978
    .line 979
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 980
    .line 981
    .line 982
    goto/16 :goto_7

    .line 983
    .line 984
    :cond_29
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 985
    .line 986
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    invoke-static {}, La2/w0;->O()Z

    .line 990
    .line 991
    .line 992
    move-result p1

    .line 993
    if-nez p1, :cond_2a

    .line 994
    .line 995
    invoke-virtual {v1, v2}, Lua/x7;->r(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    goto/16 :goto_7

    .line 999
    .line 1000
    :cond_2a
    iget-object p1, v1, Lda/h;->e:Landroid/content/Context;

    .line 1001
    .line 1002
    invoke-static {p1}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result p1

    .line 1006
    if-nez p1, :cond_2b

    .line 1007
    .line 1008
    invoke-static {}, La2/w0;->J()Z

    .line 1009
    .line 1010
    .line 1011
    move-result p1

    .line 1012
    if-eqz p1, :cond_2b

    .line 1013
    .line 1014
    const-string p1, "\u60a8\u53ef\u80fd\u65e0\u6cd5\u6388\u4e88\u6743\u9650\uff0c\u7cfb\u7edf\u6709\u9650\u5236"

    .line 1015
    .line 1016
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1017
    .line 1018
    .line 1019
    :cond_2b
    new-instance v6, Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    const-string p1, "\u60ac\u6d6e\u7a97"

    .line 1025
    .line 1026
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    const-string p1, "\u5b89\u88c5\u5e94\u7528"

    .line 1030
    .line 1031
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    const-string p1, "\u901a\u77e5\u4f7f\u7528\u6743"

    .line 1035
    .line 1036
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    const-string p1, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 1040
    .line 1041
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    const-string p1, "\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e"

    .line 1045
    .line 1046
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    const-string p1, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e"

    .line 1050
    .line 1051
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    const-string p1, "\u4f7f\u7528\u60c5\u51b5\u8bbf\u95ee\u6743\u9650"

    .line 1055
    .line 1056
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    const-string p1, "\u7cfb\u7edf\u65e5\u5fd7(READ_LOGS)"

    .line 1060
    .line 1061
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    const-string p1, "\u4e00\u952e\u6388\u4e88\u5e94\u7528\u6240\u6709\u6743\u9650"

    .line 1065
    .line 1066
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    new-instance p1, Lha/fa;

    .line 1070
    .line 1071
    iget-object v3, v1, Lda/h;->f:Landroid/app/Activity;

    .line 1072
    .line 1073
    iget-object v4, v1, Lda/h;->e:Landroid/content/Context;

    .line 1074
    .line 1075
    new-instance v7, Lua/u7;

    .line 1076
    .line 1077
    const/4 p2, 0x0

    .line 1078
    invoke-direct {v7, v1, p2}, Lua/u7;-><init>(Lua/x7;I)V

    .line 1079
    .line 1080
    .line 1081
    const/4 v5, 0x0

    .line 1082
    move-object v2, p1

    .line 1083
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 1087
    .line 1088
    .line 1089
    goto/16 :goto_7

    .line 1090
    .line 1091
    :cond_2c
    const-string p2, "\u9002\u914d\u7801"

    .line 1092
    .line 1093
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result p2

    .line 1097
    if-eqz p2, :cond_2e

    .line 1098
    .line 1099
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 1100
    .line 1101
    invoke-virtual {p1}, Lfa/h0;->f()Z

    .line 1102
    .line 1103
    .line 1104
    move-result p1

    .line 1105
    if-eqz p1, :cond_2d

    .line 1106
    .line 1107
    const-string p1, "\u60a8\u662f\u5c0a\u8d35\u7684root\u7528\u6237\uff0c\u65e0\u9700\u6b64\u529f\u80fd"

    .line 1108
    .line 1109
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    goto/16 :goto_7

    .line 1113
    .line 1114
    :cond_2d
    new-instance p1, Lha/i;

    .line 1115
    .line 1116
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 1117
    .line 1118
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 1119
    .line 1120
    new-instance v0, Lua/u7;

    .line 1121
    .line 1122
    const/4 v2, 0x7

    .line 1123
    invoke-direct {v0, v1, v2}, Lua/u7;-><init>(Lua/x7;I)V

    .line 1124
    .line 1125
    .line 1126
    invoke-direct {p1, p2, p3, v0}, Lha/i;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/u7;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_7

    .line 1133
    :cond_2e
    const-string p2, "\u66f4\u65b0\u68c0\u6d4b"

    .line 1134
    .line 1135
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result p2

    .line 1139
    if-eqz p2, :cond_2f

    .line 1140
    .line 1141
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 1142
    .line 1143
    .line 1144
    new-instance p1, Lua/t6;

    .line 1145
    .line 1146
    const/4 p2, 0x4

    .line 1147
    invoke-direct {p1, p2}, Lua/t6;-><init>(I)V

    .line 1148
    .line 1149
    .line 1150
    new-instance p2, Lmc/c;

    .line 1151
    .line 1152
    const/4 p3, 0x0

    .line 1153
    invoke-direct {p2, p3, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 1157
    .line 1158
    invoke-virtual {p2, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1159
    .line 1160
    .line 1161
    move-result-object p1

    .line 1162
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1163
    .line 1164
    .line 1165
    move-result-object p2

    .line 1166
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    new-instance p2, Lua/v7;

    .line 1171
    .line 1172
    const/4 p3, 0x2

    .line 1173
    invoke-direct {p2, v1, p3}, Lua/v7;-><init>(Lua/x7;I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_7

    .line 1180
    :cond_2f
    const-string p1, "\u53cd\u9988"

    .line 1181
    .line 1182
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1183
    .line 1184
    .line 1185
    move-result p1

    .line 1186
    if-eqz p1, :cond_30

    .line 1187
    .line 1188
    new-instance p1, Lha/p5;

    .line 1189
    .line 1190
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 1191
    .line 1192
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 1193
    .line 1194
    const/4 v0, 0x0

    .line 1195
    invoke-direct {p1, p2, p3, v0}, Lha/p5;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 1199
    .line 1200
    .line 1201
    goto :goto_7

    .line 1202
    :cond_30
    const-string p1, "adb\u5f00"

    .line 1203
    .line 1204
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result p1

    .line 1208
    if-eqz p1, :cond_33

    .line 1209
    .line 1210
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 1211
    .line 1212
    invoke-virtual {v1, p1}, Lda/h;->l(Ljava/lang/Class;)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_7

    .line 1216
    :cond_31
    :goto_6
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 1217
    .line 1218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    invoke-static {}, La2/w0;->M()Z

    .line 1222
    .line 1223
    .line 1224
    move-result p1

    .line 1225
    if-nez p1, :cond_32

    .line 1226
    .line 1227
    invoke-virtual {v1, v2}, Lua/x7;->r(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    goto :goto_7

    .line 1231
    :cond_32
    new-instance p1, Lha/cb;

    .line 1232
    .line 1233
    iget-object p2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 1234
    .line 1235
    iget-object p3, v1, Lda/h;->e:Landroid/content/Context;

    .line 1236
    .line 1237
    invoke-direct {p1, p2, p3}, Lha/cb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 1241
    .line 1242
    .line 1243
    :cond_33
    :goto_7
    return-void
.end method
