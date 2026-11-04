.class public final synthetic Lha/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;
.implements Lc6/f;


# instance fields
.field public final synthetic a:Lha/za;


# direct methods
.method public synthetic constructor <init>(Lha/za;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/va;->a:Lha/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lha/va;->a:Lha/za;

    .line 2
    .line 3
    iget-object p2, p2, Lha/za;->l:Lx9/x3;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 10
    .line 11
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 12
    .line 13
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "----"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionLabel:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionDesc:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/util/k;->c(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method public g(Lmc/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/va;->a:Lha/za;

    invoke-virtual {v0, p1}, Lha/za;->b(Lmc/b;)V

    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 18

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    iget-object v4, v3, Lha/va;->a:Lha/za;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v7, Lfa/b0;->a:La2/w0;

    .line 13
    .line 14
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, La2/w0;->O()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const-string v0, "\u9700\u8981 root \u6216 adb \u624d\u53ef\u66f4\u6539\u6743\u9650"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    invoke-static/range {p2 .. p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, v4, Lha/za;->l:Lx9/x3;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/yunpan/appmanage/bean/PermissionBean;

    .line 40
    .line 41
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v8, 0x17

    .line 44
    .line 45
    if-ge v6, v8, :cond_1

    .line 46
    .line 47
    iget-boolean v8, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 48
    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    const-string v0, "\u4f4e\u4e8e\u5b89\u53536.0\u65e0\u9700\u7ba1\u7406\u6743\u9650"

    .line 52
    .line 53
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_1
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    iget-object v9, v4, Lha/za;->g:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 69
    .line 70
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 71
    .line 72
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    const/16 v8, 0x1e

    .line 81
    .line 82
    if-ge v6, v8, :cond_2

    .line 83
    .line 84
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 85
    .line 86
    const-string v8, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 87
    .line 88
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    new-instance v2, Lha/z6;

    .line 95
    .line 96
    new-instance v6, Lha/ya;

    .line 97
    .line 98
    invoke-direct {v6, v4, v5, v0, v1}, Lha/ya;-><init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V

    .line 99
    .line 100
    .line 101
    iget-object v11, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 102
    .line 103
    iget-object v12, v4, Lha/a4;->b:Landroid/content/Context;

    .line 104
    .line 105
    const-string v15, "\u597d\u7684"

    .line 106
    .line 107
    const-string v16, ""

    .line 108
    .line 109
    const-string v13, "\u81ea\u8eab\u7ed9\u8fd9\u4e2a\u6743\u9650\u6388\u6743\u65f6\uff0c\u53ef\u80fd\u4f1a\u88ab\u7cfb\u7edf\u5f3a\u884c\u5173\u95ed\uff0c\u8fd9\u662f\u6b63\u5e38\u7684\uff0c\u671b\u77e5\u6653"

    .line 110
    .line 111
    const-string v14, ""

    .line 112
    .line 113
    move-object v10, v2

    .line 114
    move-object/from16 v17, v6

    .line 115
    .line 116
    invoke-direct/range {v10 .. v17}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_2
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 125
    .line 126
    iget-boolean v8, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 127
    .line 128
    xor-int/2addr v2, v8

    .line 129
    new-instance v8, Lha/xa;

    .line 130
    .line 131
    invoke-direct {v8, v4, v5, v0, v1}, Lha/xa;-><init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V

    .line 132
    .line 133
    .line 134
    iput-object v8, v7, La2/w0;->c:Ljava/lang/Object;

    .line 135
    .line 136
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 137
    .line 138
    new-instance v1, Lfa/t;

    .line 139
    .line 140
    invoke-direct {v1, v7, v6, v2, v9}, Lfa/t;-><init>(La2/w0;Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 148
    .line 149
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    iget-object v1, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 160
    .line 161
    const-string v6, "android.permission.READ_LOGS"

    .line 162
    .line 163
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    new-instance v1, Lha/z6;

    .line 170
    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object v7, v4, Lha/a4;->b:Landroid/content/Context;

    .line 177
    .line 178
    const v8, 0x7f13016f

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v7, "\u81ea\u8eab\u7ed9\u8fd9\u4e2a\u6743\u9650\u6388\u6743\u65f6\uff0c\u53ef\u80fd\u4f1a\u88ab\u7cfb\u7edf\u5f3a\u884c\u5173\u95ed\uff0c\u8fd9\u662f\u6b63\u5e38\u7684\uff0c\u671b\u77e5\u6653\uff01"

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    new-instance v6, Lha/ya;

    .line 198
    .line 199
    invoke-direct {v6, v4, v5, v0, v2}, Lha/ya;-><init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V

    .line 200
    .line 201
    .line 202
    iget-object v12, v4, Lha/a4;->b:Landroid/content/Context;

    .line 203
    .line 204
    iget-object v11, v4, Lha/a4;->a:Landroid/app/Activity;

    .line 205
    .line 206
    const-string v15, "\u597d\u7684"

    .line 207
    .line 208
    const-string v16, ""

    .line 209
    .line 210
    const-string v14, ""

    .line 211
    .line 212
    move-object v10, v1

    .line 213
    move-object/from16 v17, v6

    .line 214
    .line 215
    invoke-direct/range {v10 .. v17}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_4
    iget-object v1, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 223
    .line 224
    iget-boolean v6, v5, Lcom/yunpan/appmanage/bean/PermissionBean;->isOpen:Z

    .line 225
    .line 226
    xor-int/lit8 v10, v6, 0x1

    .line 227
    .line 228
    new-instance v6, Lha/xa;

    .line 229
    .line 230
    invoke-direct {v6, v4, v5, v0, v2}, Lha/xa;-><init>(Lha/za;Lcom/yunpan/appmanage/bean/PermissionBean;II)V

    .line 231
    .line 232
    .line 233
    iput-object v6, v7, La2/w0;->c:Ljava/lang/Object;

    .line 234
    .line 235
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 236
    .line 237
    new-instance v2, Lfa/t;

    .line 238
    .line 239
    const/4 v6, 0x0

    .line 240
    move-object v5, v2

    .line 241
    move-object v8, v9

    .line 242
    move-object v9, v1

    .line 243
    invoke-direct/range {v5 .. v10}, Lfa/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    .line 248
    .line 249
    :goto_0
    return-void
.end method
