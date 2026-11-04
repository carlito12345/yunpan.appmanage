.class public final synthetic Lha/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/f;
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/v5;


# direct methods
.method public synthetic constructor <init>(Lha/v5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/t5;->a:I

    iput-object p1, p0, Lha/t5;->b:Lha/v5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lha/t5;->b:Lha/v5;

    .line 2
    .line 3
    iget-object v0, p2, Lha/v5;->m:Lx9/t1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lx9/l3;

    .line 10
    .line 11
    iget-object p1, p1, Lx9/l3;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "\u6253\u5f00"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p2, Lha/v5;->q:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 31
    .line 32
    iget-object v0, p2, Lha/v5;->q:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p2, Lha/v5;->q:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "\u5df2\u53d6\u6d88["

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p2, Lha/v5;->q:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "]\u7c7b\u578b\u6587\u4ef6\u7684\u9ed8\u8ba4\u6253\u5f00\u7a0b\u5e8f"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p2, Lha/v5;->n:Landroid/widget/TextView;

    .line 74
    .line 75
    const/16 p2, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "\u590d\u5236"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-object p1, p2, Lha/a4;->a:Landroid/app/Activity;

    .line 90
    .line 91
    const-string v0, "clipboard"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/content/ClipboardManager;

    .line 98
    .line 99
    iget-object p2, p2, Lha/v5;->p:Lx9/w3;

    .line 100
    .line 101
    iget-object p2, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string v0, "label"

    .line 108
    .line 109
    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "\u5df2\u590d\u5236\u6587\u4ef6\u8def\u5f84"

    .line 117
    .line 118
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1
.end method

.method public g(Lmc/b;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/t5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/t5;->b:Lha/v5;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 12
    .line 13
    iget-object v0, v0, Lha/v5;->p:Lx9/w3;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, La2/w0;->c0(Lx9/w3;)Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "\u67e5\u8be2\u5c5e\u6027\u5931\u8d25"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lha/t5;->b:Lha/v5;

    .line 40
    .line 41
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v0, v0, Lha/v5;->p:Lx9/w3;

    .line 50
    .line 51
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Lcom/yunpan/appmanage/db/ApkFileDao;->getApkFileBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 16

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    iget-object v3, v2, Lha/t5;->b:Lha/v5;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v3, Lha/v5;->m:Lx9/t1;

    .line 15
    .line 16
    invoke-virtual {v4, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Lx9/l3;

    .line 21
    .line 22
    iget-object v5, v5, Lx9/l3;->b:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "\u8fd4\u56de"

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_0
    const-string v6, "\u6253\u5f00"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object v7, v3, Lha/a4;->b:Landroid/content/Context;

    .line 44
    .line 45
    const-string v8, ".fileprovider"

    .line 46
    .line 47
    const/4 v9, 0x2

    .line 48
    const/16 v10, 0x40

    .line 49
    .line 50
    const/4 v12, 0x1

    .line 51
    if-eqz v6, :cond_d

    .line 52
    .line 53
    const-string v0, "/data/"

    .line 54
    .line 55
    iget-object v4, v3, Lha/v5;->p:Lx9/w3;

    .line 56
    .line 57
    iget-boolean v6, v4, Lx9/w3;->c:Z

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 62
    .line 63
    .line 64
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 65
    .line 66
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_b

    .line 70
    .line 71
    :cond_1
    :try_start_0
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    const-string v4, "\u7b2c\u4e09\u65b9\u5e94\u8be5\u65e0\u6743\u9650\u6253\u5f00\u6b64\u6587\u4ef6"

    .line 80
    .line 81
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :cond_2
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 85
    .line 86
    .line 87
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 88
    .line 89
    iget-object v5, v3, Lha/v5;->q:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget-object v5, v3, Lha/v5;->q:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    const/16 v6, 0x18

    .line 102
    .line 103
    const/high16 v13, 0x10000000

    .line 104
    .line 105
    const-string v14, "android.intent.action.VIEW"

    .line 106
    .line 107
    if-nez v5, :cond_8

    .line 108
    .line 109
    const-string v5, "----"

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-eqz v15, :cond_8

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    aget-object v5, v4, v1

    .line 122
    .line 123
    aget-object v4, v4, v12

    .line 124
    .line 125
    :try_start_1
    new-instance v15, Ljava/io/File;

    .line 126
    .line 127
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 128
    .line 129
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Landroid/content/Intent;

    .line 135
    .line 136
    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    if-lt v13, v6, :cond_6

    .line 145
    .line 146
    sget-object v13, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 147
    .line 148
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 149
    .line 150
    iget-boolean v6, v13, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 151
    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-string v11, "/data/data/"

    .line 159
    .line 160
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_4

    .line 165
    .line 166
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance v11, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, "/"

    .line 181
    .line 182
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_3
    const/high16 v0, 0x4000000

    .line 197
    .line 198
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    const-string v0, "file_path"

    .line 202
    .line 203
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    const-string v0, "file_type"

    .line 211
    .line 212
    invoke-static {v15}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    const-string v0, "pkg"

    .line 220
    .line 221
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    const-string v0, "cls"

    .line 225
    .line 226
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    new-instance v0, Landroid/content/ComponentName;

    .line 230
    .line 231
    const-string v4, "com.gj.openfile"

    .line 232
    .line 233
    const-string v5, "com.gj.openfile.MainActivity"

    .line 234
    .line 235
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .line 243
    .line 244
    goto/16 :goto_b

    .line 245
    .line 246
    :catch_1
    move-exception v0

    .line 247
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_b

    .line 251
    .line 252
    :catch_2
    const-string v0, "\u516c\u7b7eUID\u7248\u9700\u5b89\u88c5\u7ba1\u5bb6\u6253\u5f00\u63d2\u4ef6\uff0c\u5426\u5219\u65e0\u6cd5\u8ba9\u7b2c\u4e09\u65b9\u5e94\u7528\u6253\u5f00\u6587\u4ef6"

    .line 253
    .line 254
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_b

    .line 258
    .line 259
    :cond_4
    :goto_0
    const-string v0, "\u516c\u7b7eUID\u7248\u7684\u6587\u4ef6\uff0c\u7b2c\u4e09\u65b9\u5e94\u7528\u65e0\u6743\u6253\u5f00"

    .line 260
    .line 261
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v7, v0, v15}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    const/16 v6, 0x80

    .line 299
    .line 300
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_6
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :goto_1
    invoke-static {v15}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    .line 314
    .line 315
    const/high16 v0, 0x7f130000

    .line 316
    .line 317
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_7

    .line 326
    .line 327
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 328
    .line 329
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    .line 334
    .line 335
    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    :goto_2
    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 342
    .line 343
    .line 344
    goto/16 :goto_b

    .line 345
    .line 346
    :catch_3
    const-string v0, "\u9ed8\u8ba4\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u7a0b\u5e8f"

    .line 347
    .line 348
    const/4 v1, 0x0

    .line 349
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 353
    .line 354
    iget-object v1, v3, Lha/v5;->q:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->a(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_8
    new-instance v0, Ljava/io/File;

    .line 360
    .line 361
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 362
    .line 363
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 364
    .line 365
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    new-instance v1, Landroid/content/Intent;

    .line 369
    .line 370
    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const/high16 v4, 0x10000000

    .line 374
    .line 375
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 379
    .line 380
    const/16 v5, 0x18

    .line 381
    .line 382
    if-lt v4, v5, :cond_9

    .line 383
    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-static {v7, v4, v0}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    .line 415
    .line 416
    const/16 v5, 0x80

    .line 417
    .line 418
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_9
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    :goto_3
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    const/4 v4, 0x0

    .line 438
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    new-instance v13, Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_b

    .line 456
    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 462
    .line 463
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 464
    .line 465
    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 466
    .line 467
    if-nez v4, :cond_a

    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_a
    new-instance v4, Lx9/t3;

    .line 471
    .line 472
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 481
    .line 482
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 495
    .line 496
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 497
    .line 498
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 499
    .line 500
    invoke-direct {v4, v5, v6, v8, v1}, Lx9/t3;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_4

    .line 507
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_c

    .line 512
    .line 513
    const-string v0, "\u6ca1\u627e\u5230\u5408\u9002\u7684\u7b2c\u4e09\u65b9\u5e94\u7528\u6253\u5f00\u6b64\u7c7b\u578b\u6587\u4ef6"

    .line 514
    .line 515
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_b

    .line 519
    .line 520
    :cond_c
    new-instance v0, Lha/oa;

    .line 521
    .line 522
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 523
    .line 524
    iget-object v11, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 525
    .line 526
    iget-object v12, v3, Lha/v5;->q:Ljava/lang/String;

    .line 527
    .line 528
    iget-object v9, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 529
    .line 530
    iget-object v10, v3, Lha/a4;->b:Landroid/content/Context;

    .line 531
    .line 532
    move-object v8, v0

    .line 533
    invoke-direct/range {v8 .. v13}, Lha/oa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_b

    .line 540
    .line 541
    :cond_d
    const-string v1, "\u6d4f\u89c8"

    .line 542
    .line 543
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_e

    .line 548
    .line 549
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 550
    .line 551
    .line 552
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 553
    .line 554
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_b

    .line 558
    .line 559
    :cond_e
    const-string v1, "\u5220\u9664"

    .line 560
    .line 561
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_f

    .line 566
    .line 567
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 568
    .line 569
    .line 570
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 571
    .line 572
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_b

    .line 576
    .line 577
    :cond_f
    const-string v1, "\u76ee\u5f55"

    .line 578
    .line 579
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    if-eqz v6, :cond_10

    .line 584
    .line 585
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 586
    .line 587
    .line 588
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 589
    .line 590
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_b

    .line 594
    .line 595
    :cond_10
    const-string v6, "\u590d\u5236"

    .line 596
    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    const v11, 0x7f0802f9

    .line 602
    .line 603
    .line 604
    if-eqz v6, :cond_12

    .line 605
    .line 606
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    check-cast v0, Lx9/l3;

    .line 614
    .line 615
    iget v0, v0, Lx9/l3;->a:I

    .line 616
    .line 617
    if-ne v0, v11, :cond_11

    .line 618
    .line 619
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 620
    .line 621
    const-string v1, "\u590d\u5236\u5230"

    .line 622
    .line 623
    invoke-virtual {v0, v1}, Lua/c8;->b(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_b

    .line 627
    .line 628
    :cond_11
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 629
    .line 630
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_b

    .line 634
    .line 635
    :cond_12
    const-string v6, "\u526a\u5207"

    .line 636
    .line 637
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    if-eqz v6, :cond_14

    .line 642
    .line 643
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Lx9/l3;

    .line 651
    .line 652
    iget v0, v0, Lx9/l3;->a:I

    .line 653
    .line 654
    if-ne v0, v11, :cond_13

    .line 655
    .line 656
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 657
    .line 658
    const-string v1, "\u526a\u5207\u5230"

    .line 659
    .line 660
    invoke-virtual {v0, v1}, Lua/c8;->b(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_b

    .line 664
    .line 665
    :cond_13
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 666
    .line 667
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_b

    .line 671
    .line 672
    :cond_14
    const-string v0, "\u6539\u540d"

    .line 673
    .line 674
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_17

    .line 679
    .line 680
    iget-object v0, v3, Lha/v5;->p:Lx9/w3;

    .line 681
    .line 682
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 683
    .line 684
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    if-nez v0, :cond_16

    .line 689
    .line 690
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 691
    .line 692
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    invoke-static {}, La2/w0;->P()Z

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-nez v0, :cond_16

    .line 700
    .line 701
    iget-object v0, v3, Lha/v5;->p:Lx9/w3;

    .line 702
    .line 703
    iget-boolean v0, v0, Lx9/w3;->c:Z

    .line 704
    .line 705
    if-eqz v0, :cond_15

    .line 706
    .line 707
    goto :goto_5

    .line 708
    :cond_15
    const-string v1, "\u6587\u4ef6"

    .line 709
    .line 710
    :goto_5
    const-string v0, "\u65e0\u6743\u9650\u66f4\u6539\u6b64"

    .line 711
    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-static {v0, v12}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_b

    .line 720
    .line 721
    :cond_16
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 722
    .line 723
    .line 724
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 725
    .line 726
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    goto/16 :goto_b

    .line 730
    .line 731
    :cond_17
    const-string v0, "\u5c5e\u6027"

    .line 732
    .line 733
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    if-eqz v0, :cond_18

    .line 738
    .line 739
    new-instance v0, Lha/t5;

    .line 740
    .line 741
    const/4 v1, 0x3

    .line 742
    invoke-direct {v0, v3, v1}, Lha/t5;-><init>(Lha/v5;I)V

    .line 743
    .line 744
    .line 745
    new-instance v1, Lmc/c;

    .line 746
    .line 747
    const/4 v4, 0x0

    .line 748
    invoke-direct {v1, v4, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 752
    .line 753
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    new-instance v1, Lha/u5;

    .line 766
    .line 767
    invoke-direct {v1, v3, v4}, Lha/u5;-><init>(Lha/v5;I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_b

    .line 774
    .line 775
    :cond_18
    const/4 v4, 0x0

    .line 776
    const-string v0, "\u542f\u52a8"

    .line 777
    .line 778
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-eqz v0, :cond_1a

    .line 783
    .line 784
    iget-object v0, v3, Lha/v5;->r:Lcom/yunpan/appmanage/db/AppBean;

    .line 785
    .line 786
    iget-boolean v0, v0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 787
    .line 788
    if-eqz v0, :cond_19

    .line 789
    .line 790
    const-string v0, "\u6b64\u5e94\u7528\u5df2\u88ab\u7981\u7528\u65e0\u6cd5\u6253\u5f00,\u8bf7\u5148\u89e3\u7981"

    .line 791
    .line 792
    invoke-static {v0, v4}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 793
    .line 794
    .line 795
    goto/16 :goto_b

    .line 796
    .line 797
    :cond_19
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 798
    .line 799
    .line 800
    iget-object v0, v3, Lha/a4;->a:Landroid/app/Activity;

    .line 801
    .line 802
    iget-object v1, v3, Lha/v5;->r:Lcom/yunpan/appmanage/db/AppBean;

    .line 803
    .line 804
    invoke-static {v0, v7, v1}, Lif/a;->E0(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/db/AppBean;)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_b

    .line 808
    .line 809
    :cond_1a
    const-string v0, "\u5b89\u88c5"

    .line 810
    .line 811
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-nez v0, :cond_27

    .line 816
    .line 817
    const-string v0, "\u91cd\u88c5"

    .line 818
    .line 819
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    if-eqz v0, :cond_1b

    .line 824
    .line 825
    goto/16 :goto_a

    .line 826
    .line 827
    :cond_1b
    const-string v0, "\u89e3\u538b"

    .line 828
    .line 829
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-eqz v0, :cond_1f

    .line 834
    .line 835
    new-instance v0, Ljava/io/File;

    .line 836
    .line 837
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 838
    .line 839
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 840
    .line 841
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 845
    .line 846
    iget-object v4, v1, Lx9/w3;->n:Lv3/f;

    .line 847
    .line 848
    const-string v6, "\u6b64\u76ee\u5f55\u65e0\u6cd5\u5199\u5165\u6587\u4ef6\uff0c\u4e0d\u80fd\u5728\u6b64\u89e3\u538b\uff01"

    .line 849
    .line 850
    if-eqz v4, :cond_1c

    .line 851
    .line 852
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 853
    .line 854
    const-string v4, ".zip"

    .line 855
    .line 856
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-eqz v1, :cond_1c

    .line 861
    .line 862
    iget-object v0, v3, Lha/v5;->p:Lx9/w3;

    .line 863
    .line 864
    iget-object v0, v0, Lx9/w3;->n:Lv3/f;

    .line 865
    .line 866
    iget-object v0, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v0, Lv3/f;

    .line 869
    .line 870
    invoke-virtual {v0}, Lv3/f;->s()Z

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    if-nez v0, :cond_1e

    .line 875
    .line 876
    const/4 v1, 0x0

    .line 877
    invoke-static {v6, v1}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_b

    .line 881
    .line 882
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-eqz v1, :cond_1d

    .line 887
    .line 888
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    if-nez v0, :cond_1e

    .line 897
    .line 898
    :cond_1d
    const/4 v1, 0x0

    .line 899
    goto :goto_6

    .line 900
    :cond_1e
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 901
    .line 902
    .line 903
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 904
    .line 905
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_b

    .line 909
    .line 910
    :goto_6
    invoke-static {v6, v1}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 911
    .line 912
    .line 913
    goto/16 :goto_b

    .line 914
    .line 915
    :cond_1f
    const-string v0, "\u538b\u7f29"

    .line 916
    .line 917
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    if-eqz v0, :cond_23

    .line 922
    .line 923
    iget-object v0, v3, Lha/v5;->p:Lx9/w3;

    .line 924
    .line 925
    iget-object v0, v0, Lx9/w3;->n:Lv3/f;

    .line 926
    .line 927
    const-string v1, "\u6b64\u76ee\u5f55\u65e0\u6cd5\u5199\u5165\u6587\u4ef6\uff0c\u4e0d\u80fd\u5728\u6b64\u538b\u7f29\u6587\u4ef6\uff01"

    .line 928
    .line 929
    if-eqz v0, :cond_20

    .line 930
    .line 931
    iget-object v0, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v0, Lv3/f;

    .line 934
    .line 935
    invoke-virtual {v0}, Lv3/f;->s()Z

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    if-nez v0, :cond_22

    .line 940
    .line 941
    const/4 v4, 0x0

    .line 942
    invoke-static {v1, v4}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_b

    .line 946
    .line 947
    :cond_20
    new-instance v0, Ljava/io/File;

    .line 948
    .line 949
    iget-object v4, v3, Lha/v5;->p:Lx9/w3;

    .line 950
    .line 951
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 952
    .line 953
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    if-eqz v4, :cond_21

    .line 961
    .line 962
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    if-nez v0, :cond_22

    .line 971
    .line 972
    :cond_21
    const/4 v3, 0x0

    .line 973
    goto :goto_7

    .line 974
    :cond_22
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 975
    .line 976
    .line 977
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 978
    .line 979
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    goto/16 :goto_b

    .line 983
    .line 984
    :goto_7
    invoke-static {v1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 985
    .line 986
    .line 987
    goto/16 :goto_b

    .line 988
    .line 989
    :cond_23
    const-string v0, "\u4f20\u9001"

    .line 990
    .line 991
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-eqz v0, :cond_25

    .line 996
    .line 997
    iget-object v0, v3, Lha/v5;->p:Lx9/w3;

    .line 998
    .line 999
    iget-boolean v0, v0, Lx9/w3;->c:Z

    .line 1000
    .line 1001
    if-eqz v0, :cond_24

    .line 1002
    .line 1003
    const-string v0, "\u6682\u4e0d\u652f\u6301\u6587\u4ef6\u5939\u4f20\u9001"

    .line 1004
    .line 1005
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_b

    .line 1009
    .line 1010
    :cond_24
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 1014
    .line 1015
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_b

    .line 1019
    .line 1020
    :cond_25
    const-string v0, "\u5206\u4eab"

    .line 1021
    .line 1022
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-eqz v0, :cond_28

    .line 1027
    .line 1028
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1029
    .line 1030
    .line 1031
    new-instance v0, Ljava/io/File;

    .line 1032
    .line 1033
    iget-object v1, v3, Lha/v5;->p:Lx9/w3;

    .line 1034
    .line 1035
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 1036
    .line 1037
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-static {v7, v1, v0}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    new-instance v1, Landroid/content/Intent;

    .line 1064
    .line 1065
    const-string v3, "android.intent.action.SEND"

    .line 1066
    .line 1067
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    .line 1080
    .line 1081
    const-string v3, "android.intent.extra.STREAM"

    .line 1082
    .line 1083
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1090
    .line 1091
    .line 1092
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1093
    .line 1094
    const/16 v3, 0x13

    .line 1095
    .line 1096
    if-lt v0, v3, :cond_26

    .line 1097
    .line 1098
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    .line 1100
    .line 1101
    const/16 v3, 0x80

    .line 1102
    .line 1103
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    .line 1105
    .line 1106
    goto :goto_8

    .line 1107
    :catch_4
    move-exception v0

    .line 1108
    goto :goto_9

    .line 1109
    :cond_26
    :goto_8
    const-string v0, "\u5206\u4eab\u6587\u4ef6"

    .line 1110
    .line 1111
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1116
    .line 1117
    .line 1118
    goto :goto_b

    .line 1119
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    const-string v3, "\u5931\u8d25\uff1a"

    .line 1122
    .line 1123
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_b

    .line 1130
    :cond_27
    :goto_a
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1131
    .line 1132
    .line 1133
    iget-object v0, v3, Lha/v5;->s:Lua/c8;

    .line 1134
    .line 1135
    invoke-virtual {v0, v5}, Lua/c8;->b(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    :cond_28
    :goto_b
    return-void
.end method
