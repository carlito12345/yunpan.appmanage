.class public final synthetic Lua/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityDesktop;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h1;->a:I

    iput-object p1, p0, Lua/h1;->b:Lcom/yunpan/appmanage/ui/ActivityDesktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p2, 0x3

    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lua/h1;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 10
    .line 11
    iget-object p1, p0, Lua/h1;->b:Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lha/o;

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-direct {v1, p3, v2, p1}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lmc/c;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lha/s2;

    .line 43
    .line 44
    invoke-direct {v1, p3, p2, p1}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 52
    .line 53
    iget-object v4, p0, Lua/h1;->b:Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    iget-object p1, v4, Lda/g;->A:Lda/g;

    .line 59
    .line 60
    invoke-static {p1}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ge p1, v1, :cond_0

    .line 69
    .line 70
    const-string p1, "\u53ea\u6709\u4e00\u4e2a\u684c\u9762\u5e94\u7528\uff0c\u65e0\u9700\u8bbe\u7f6e"

    .line 71
    .line 72
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    new-instance p1, Lha/z6;

    .line 78
    .line 79
    new-instance v9, Ll5/y;

    .line 80
    .line 81
    const/16 p2, 0x1d

    .line 82
    .line 83
    invoke-direct {v9, p2, v4}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-string v7, "\u597d\u7684"

    .line 87
    .line 88
    const-string v8, ""

    .line 89
    .line 90
    const-string v5, "\u5373\u5c06\u5f39\u51fa\u7cfb\u7edf\u684c\u9762\u9009\u62e9\u5668\uff0c\u8bf7\u9009\u4e2d\u4f60\u9700\u8981\u7684\u684c\u9762\u5e94\u7528 \n\u7136\u540e\u70b9\u51fb\u3010\u59cb\u7ec8\u3011\u5373\u53ef\u8bbe\u7f6e\u4e3a\u9ed8\u8ba4\u684c\u9762\uff01"

    .line 91
    .line 92
    const-string v6, "\u5982\u679c\u4e0d\u80fd\u70b9\u59cb\u7ec8\uff0c\u5c31\u91cd\u65b0\u70b9\u51fb\u672c\u6309\u94ae"

    .line 93
    .line 94
    move-object v2, p1

    .line 95
    move-object v3, v4

    .line 96
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_1
    if-ne p3, p1, :cond_3

    .line 105
    .line 106
    iget-object p1, v4, Lda/g;->A:Lda/g;

    .line 107
    .line 108
    new-instance p2, Landroid/content/Intent;

    .line 109
    .line 110
    const-string p3, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 111
    .line 112
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    const-string p1, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 122
    .line 123
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_2
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/high16 p2, 0x10000000

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    iget-object p2, v4, Lda/g;->A:Lda/g;

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :catch_0
    const-string p1, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301"

    .line 146
    .line 147
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    if-ne p3, v1, :cond_4

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/yunpan/appmanage/ui/ActivityDesktop;->x()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    if-ne p3, p2, :cond_5

    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const/4 p2, 0x4

    .line 167
    if-ne p3, p2, :cond_a

    .line 168
    .line 169
    new-instance v6, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance p2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    :goto_0
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 180
    .line 181
    invoke-virtual {p3}, Lc6/g;->b()I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-ge v0, p3, :cond_8

    .line 186
    .line 187
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 188
    .line 189
    invoke-virtual {p3, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    check-cast p3, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 194
    .line 195
    iget-boolean v1, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isDefaultDesktop:Z

    .line 196
    .line 197
    if-nez v1, :cond_7

    .line 198
    .line 199
    iget-boolean v1, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 200
    .line 201
    if-nez v1, :cond_7

    .line 202
    .line 203
    iget-boolean v1, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 204
    .line 205
    if-nez v1, :cond_7

    .line 206
    .line 207
    iget-boolean v1, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 208
    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :cond_7
    :goto_1
    add-int/2addr v0, p1

    .line 221
    goto :goto_0

    .line 222
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    const-string p1, "\u6ca1\u6709\u53ef\u8bbe\u7f6e\u684c\u9762\u7684\u5e94\u7528"

    .line 229
    .line 230
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    new-instance p1, Lha/fa;

    .line 235
    .line 236
    new-instance v7, Lma/b;

    .line 237
    .line 238
    const/16 p3, 0x9

    .line 239
    .line 240
    invoke-direct {v7, v4, p3, p2}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    move-object v2, p1

    .line 245
    move-object v3, v4

    .line 246
    invoke-direct/range {v2 .. v7}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 250
    .line 251
    .line 252
    :cond_a
    :goto_2
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
