.class public final synthetic Lha/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;
.implements Lha/a6;
.implements Lha/p2;
.implements Lha/je;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lha/h2;->a:I

    iput-object p1, p0, Lha/h2;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lha/h2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/h2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 4
    .line 5
    iget-boolean v1, p0, Lha/h2;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->K:Ljava/lang/String;

    .line 11
    .line 12
    iput v2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->M:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->L:Ljava/lang/String;

    .line 21
    .line 22
    iput v2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->N:I

    .line 23
    .line 24
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->B(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/h2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lua/q8;

    .line 4
    .line 5
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 6
    .line 7
    const-string v2, "\u538b\u7f29\u4e2d"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lha/u9;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lha/h2;->b:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lua/q8;->L:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v0, Lua/q8;->B:Lx9/w3;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 33
    .line 34
    new-instance v3, Ljava/io/File;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lx9/w3;

    .line 42
    .line 43
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2, p2}, Lza/g;->b(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Lmc/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lha/h3;

    .line 60
    .line 61
    const/16 v1, 0x12

    .line 62
    .line 63
    invoke-direct {p2, v0, v1, v2}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public f(Lx9/w3;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lha/h2;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Lua/z3;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 10
    .line 11
    sget v2, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 12
    .line 13
    iget-object v1, v1, Lua/z3;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lua/e7;

    .line 21
    .line 22
    iget-boolean v3, p0, Lha/h2;->b:Z

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v2, v1, p1, v3, v4}, Lua/e7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lmc/c;

    .line 29
    .line 30
    invoke-direct {p1, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Lua/f7;

    .line 48
    .line 49
    invoke-direct {v2, v1, v0}, Lua/f7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lec/b;->b(Lec/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    iget-boolean v4, v1, Lha/h2;->b:Z

    .line 9
    .line 10
    iget-object v5, v1, Lha/h2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    iget v8, v1, Lha/h2;->a:I

    .line 14
    .line 15
    packed-switch v8, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->I:I

    .line 19
    .line 20
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v8, "\u5199\u5165\u5931\u8d25"

    .line 26
    .line 27
    const-string v9, "addSuppressed"

    .line 28
    .line 29
    const-class v10, Ljava/lang/Throwable;

    .line 30
    .line 31
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v11, "com.autonavi.amapauto"

    .line 40
    .line 41
    invoke-interface {v0, v11}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v11, "\u9ad8\u5fb7\u5730\u56fe"

    .line 56
    .line 57
    invoke-interface {v0, v11}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean_name(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    .line 62
    .line 63
    sget-object v11, Lfa/b0;->a:La2/w0;

    .line 64
    .line 65
    iget-object v12, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v12}, La2/w0;->f0(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v12, Lfa/g0;->a:Lfa/h0;

    .line 79
    .line 80
    const-string v13, "/amapauto9/AutoDeviceAdapter/"

    .line 81
    .line 82
    invoke-static {v12, v11, v13}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-nez v12, :cond_2

    .line 91
    .line 92
    new-instance v12, Ljava/io/File;

    .line 93
    .line 94
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 98
    .line 99
    .line 100
    :cond_2
    const-string v12, "AdapterFuncRepository.dat"

    .line 101
    .line 102
    invoke-static {v11, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    const-string v13, "DeviceAdapterRepository.dat"

    .line 107
    .line 108
    invoke-static {v11, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    :try_start_0
    invoke-static {v12}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_3

    .line 117
    .line 118
    new-instance v13, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_4

    .line 131
    .line 132
    new-instance v13, Ljava/io/File;

    .line 133
    .line 134
    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    :cond_4
    :try_start_1
    iget-object v13, v5, Lda/g;->A:Lda/g;

    .line 141
    .line 142
    invoke-virtual {v13}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    const v14, 0x7f120016

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    const v14, 0x7f120017

    .line 153
    .line 154
    .line 155
    :goto_0
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 156
    .line 157
    .line 158
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 159
    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    .line 160
    .line 161
    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 162
    .line 163
    .line 164
    const/high16 v15, 0x100000

    .line 165
    .line 166
    :try_start_3
    new-array v6, v15, [B

    .line 167
    .line 168
    :goto_1
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-eq v15, v3, :cond_6

    .line 173
    .line 174
    invoke-virtual {v14, v6, v7, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    move-object v3, v0

    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_6
    :try_start_4
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 183
    .line 184
    .line 185
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 186
    .line 187
    .line 188
    iget-object v5, v5, Lda/g;->A:Lda/g;

    .line 189
    .line 190
    invoke-virtual {v5}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    const v4, 0x7f120014

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    const v4, 0x7f120015

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 204
    .line 205
    .line 206
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    .line 208
    .line 209
    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 210
    .line 211
    .line 212
    const/high16 v6, 0x100000

    .line 213
    .line 214
    :try_start_7
    new-array v6, v6, [B

    .line 215
    .line 216
    :goto_3
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    if-eq v13, v3, :cond_8

    .line 221
    .line 222
    invoke-virtual {v5, v6, v7, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    move-object v3, v0

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 230
    .line 231
    .line 232
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3, v12}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3, v11}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, La2/w0;->f0(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_c

    .line 265
    .line 266
    :catchall_2
    move-exception v0

    .line 267
    move-object v3, v0

    .line 268
    goto :goto_6

    .line 269
    :goto_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :catchall_3
    move-exception v0

    .line 274
    move-object v5, v0

    .line 275
    const/4 v6, 0x1

    .line 276
    :try_start_b
    new-array v0, v6, [Ljava/lang/Class;

    .line 277
    .line 278
    aput-object v10, v0, v7

    .line 279
    .line 280
    invoke-virtual {v10, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-array v11, v6, [Ljava/lang/Object;

    .line 285
    .line 286
    aput-object v5, v11, v7

    .line 287
    .line 288
    invoke-virtual {v0, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 289
    .line 290
    .line 291
    :catch_1
    :goto_5
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 292
    :goto_6
    if-eqz v4, :cond_a

    .line 293
    .line 294
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :catchall_4
    move-exception v0

    .line 299
    move-object v4, v0

    .line 300
    const/4 v5, 0x1

    .line 301
    :try_start_e
    new-array v0, v5, [Ljava/lang/Class;

    .line 302
    .line 303
    aput-object v10, v0, v7

    .line 304
    .line 305
    invoke-virtual {v10, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    new-array v5, v5, [Ljava/lang/Object;

    .line 310
    .line 311
    aput-object v4, v5, v7

    .line 312
    .line 313
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 314
    .line 315
    .line 316
    :catch_2
    :cond_a
    :goto_7
    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 317
    :catch_3
    invoke-static {v8, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 318
    .line 319
    .line 320
    goto :goto_c

    .line 321
    :catchall_5
    move-exception v0

    .line 322
    move-object v3, v0

    .line 323
    goto :goto_a

    .line 324
    :goto_8
    :try_start_10
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :catchall_6
    move-exception v0

    .line 329
    move-object v4, v0

    .line 330
    const/4 v5, 0x1

    .line 331
    :try_start_11
    new-array v0, v5, [Ljava/lang/Class;

    .line 332
    .line 333
    aput-object v10, v0, v7

    .line 334
    .line 335
    invoke-virtual {v10, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-array v6, v5, [Ljava/lang/Object;

    .line 340
    .line 341
    aput-object v4, v6, v7

    .line 342
    .line 343
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 344
    .line 345
    .line 346
    :catch_4
    :goto_9
    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 347
    :goto_a
    if-eqz v13, :cond_b

    .line 348
    .line 349
    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 350
    .line 351
    .line 352
    goto :goto_b

    .line 353
    :catchall_7
    move-exception v0

    .line 354
    move-object v4, v0

    .line 355
    const/4 v5, 0x1

    .line 356
    :try_start_14
    new-array v0, v5, [Ljava/lang/Class;

    .line 357
    .line 358
    aput-object v10, v0, v7

    .line 359
    .line 360
    invoke-virtual {v10, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    new-array v5, v5, [Ljava/lang/Object;

    .line 365
    .line 366
    aput-object v4, v5, v7

    .line 367
    .line 368
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    .line 369
    .line 370
    .line 371
    :catch_5
    :cond_b
    :goto_b
    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    .line 372
    :goto_c
    return-void

    .line 373
    :pswitch_1
    sget v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 374
    .line 375
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    :try_start_16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 381
    .line 382
    const/16 v6, 0x1c

    .line 383
    .line 384
    if-ne v3, v6, :cond_e

    .line 385
    .line 386
    const-string v3, "hidden_api_policy_p_apps"

    .line 387
    .line 388
    const-string v6, "hidden_api_policy_pre_p_apps"

    .line 389
    .line 390
    if-eqz v4, :cond_c

    .line 391
    .line 392
    :try_start_17
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 393
    .line 394
    const/4 v7, 0x1

    .line 395
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    .line 397
    .line 398
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 399
    .line 400
    invoke-static {v4, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    .line 402
    .line 403
    goto :goto_d

    .line 404
    :cond_c
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 405
    .line 406
    const-string v8, "settings delete global hidden_api_policy_pre_p_apps"

    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-static {v8}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    iget v4, v4, Lfa/a0;->a:I

    .line 416
    .line 417
    if-nez v4, :cond_d

    .line 418
    .line 419
    const-string v3, "settings delete global hidden_api_policy_p_apps"

    .line 420
    .line 421
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_d
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 426
    .line 427
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    .line 429
    .line 430
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 431
    .line 432
    invoke-static {v4, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    .line 433
    .line 434
    .line 435
    goto :goto_d

    .line 436
    :cond_e
    const-string v3, "hidden_api_policy"

    .line 437
    .line 438
    if-eqz v4, :cond_f

    .line 439
    .line 440
    :try_start_18
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 441
    .line 442
    const/4 v5, 0x1

    .line 443
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_f
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 448
    .line 449
    const-string v6, "settings delete global hidden_api_policy"

    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iget v4, v4, Lfa/a0;->a:I

    .line 459
    .line 460
    if-eqz v4, :cond_10

    .line 461
    .line 462
    iget-object v4, v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 463
    .line 464
    invoke-static {v4, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    .line 466
    .line 467
    :cond_10
    :goto_d
    const-string v3, "\u8bbe\u7f6e\u6210\u529f"

    .line 468
    .line 469
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    .line 470
    .line 471
    .line 472
    goto :goto_e

    .line 473
    :catch_6
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_2
    check-cast v5, Ljava/lang/String;

    .line 481
    .line 482
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 483
    .line 484
    if-eqz v4, :cond_11

    .line 485
    .line 486
    :try_start_19
    const-string v0, "5555"

    .line 487
    .line 488
    goto :goto_f

    .line 489
    :cond_11
    const-string v0, "-1"

    .line 490
    .line 491
    :goto_f
    invoke-static {v5, v0}, Lif/a;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const-wide/16 v5, 0x14d

    .line 495
    .line 496
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 497
    .line 498
    .line 499
    const-string v0, "ctl.restart"

    .line 500
    .line 501
    const-string v3, "adbd"

    .line 502
    .line 503
    invoke-static {v0, v3}, Lif/a;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    if-eqz v4, :cond_12

    .line 507
    .line 508
    const-wide/16 v3, 0xfa0

    .line 509
    .line 510
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    .line 511
    .line 512
    .line 513
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 514
    .line 515
    .line 516
    goto :goto_10

    .line 517
    :catch_7
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 518
    .line 519
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 520
    .line 521
    .line 522
    :goto_10
    return-void

    .line 523
    :pswitch_3
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 524
    .line 525
    iget-object v6, v5, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 526
    .line 527
    const-string v8, "adb_enabled"

    .line 528
    .line 529
    invoke-static {v6, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v4, :cond_13

    .line 534
    .line 535
    const/4 v6, 0x1

    .line 536
    if-ne v3, v6, :cond_13

    .line 537
    .line 538
    const-string v0, "\u5df2\u5f00\u542f"

    .line 539
    .line 540
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 541
    .line 542
    .line 543
    new-instance v0, Ljava/lang/Exception;

    .line 544
    .line 545
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 549
    .line 550
    .line 551
    goto :goto_12

    .line 552
    :cond_13
    if-nez v4, :cond_14

    .line 553
    .line 554
    if-nez v3, :cond_14

    .line 555
    .line 556
    const-string v0, "\u5df2\u5173\u95ed"

    .line 557
    .line 558
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 559
    .line 560
    .line 561
    new-instance v0, Ljava/lang/Exception;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 567
    .line 568
    .line 569
    goto :goto_12

    .line 570
    :cond_14
    const-string v3, "settings put global adb_enabled "

    .line 571
    .line 572
    invoke-static {v4, v3}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    const/4 v6, 0x1

    .line 577
    new-array v6, v6, [Ljava/lang/String;

    .line 578
    .line 579
    aput-object v3, v6, v7

    .line 580
    .line 581
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    :try_start_1a
    iget-object v5, v5, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 590
    .line 591
    invoke-static {v5, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    .line 593
    .line 594
    move-result v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    .line 595
    goto :goto_11

    .line 596
    :catch_8
    nop

    .line 597
    :goto_11
    if-nez v7, :cond_15

    .line 598
    .line 599
    iget v3, v3, Landroidx/room/s;->b:I

    .line 600
    .line 601
    if-eqz v3, :cond_15

    .line 602
    .line 603
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 604
    .line 605
    .line 606
    new-instance v0, Ljava/lang/Exception;

    .line 607
    .line 608
    const-string v3, "\u4fee\u6539\u5931\u8d25"

    .line 609
    .line 610
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 614
    .line 615
    .line 616
    goto :goto_12

    .line 617
    :cond_15
    const-wide/16 v3, 0x4b0

    .line 618
    .line 619
    :try_start_1b
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 620
    .line 621
    .line 622
    :catch_9
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 623
    .line 624
    .line 625
    :goto_12
    return-void

    .line 626
    :pswitch_4
    check-cast v5, Lha/o2;

    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    const-wide/16 v6, 0x7d0

    .line 632
    .line 633
    if-eqz v4, :cond_16

    .line 634
    .line 635
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 636
    .line 637
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 638
    .line 639
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-eqz v3, :cond_17

    .line 654
    .line 655
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    check-cast v3, Ljava/lang/String;

    .line 660
    .line 661
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 662
    .line 663
    const-string v8, "pm uninstall --user "

    .line 664
    .line 665
    const-string v9, " "

    .line 666
    .line 667
    invoke-static {v8, v3, v9}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    iget-object v8, v5, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 672
    .line 673
    iget-object v8, v8, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 674
    .line 675
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    invoke-static {v6, v7, v3}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 686
    .line 687
    .line 688
    goto :goto_13

    .line 689
    :cond_16
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 690
    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    const-string v4, "pm uninstall "

    .line 694
    .line 695
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-object v4, v5, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 699
    .line 700
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    invoke-static {v6, v7, v3}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 713
    .line 714
    .line 715
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 2
    .line 3
    iget-object p1, p0, Lha/h2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lha/h2;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p1, "\u5df2\u6dfb\u52a0\u6709\u6309\u952e\uff0c\u4e0d\u80fd\u518d\u5207\u6362\u6a21\u5f0f\uff01\u9700\u6e05\u7a7a\u65e5\u5fd7\u540e\u518d\u5207\u6362"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 26
    .line 27
    xor-int/2addr v1, p2

    .line 28
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 29
    .line 30
    :try_start_0
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 31
    .line 32
    const-string v3, "LogcatListeningNoTag"

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v2, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-ne p3, p2, :cond_2

    .line 46
    .line 47
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 48
    .line 49
    iget-boolean v1, v0, Lwa/u;->J:Z

    .line 50
    .line 51
    xor-int/2addr v1, p2

    .line 52
    :try_start_1
    iput-boolean v1, v0, Lwa/u;->J:Z

    .line 53
    .line 54
    iget-object v2, v0, Lwa/u;->b:Lz7/s;

    .line 55
    .line 56
    const-string v3, "LogcatKeymap_BootStartTaskRunDelay"

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    :catch_1
    invoke-virtual {v0}, Lwa/u;->i()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x2

    .line 70
    if-ne p3, v0, :cond_3

    .line 71
    .line 72
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 73
    .line 74
    iget-boolean v1, v0, Lwa/u;->K:Z

    .line 75
    .line 76
    xor-int/2addr v1, p2

    .line 77
    :try_start_2
    iput-boolean v1, v0, Lwa/u;->K:Z

    .line 78
    .line 79
    iget-object v2, v0, Lwa/u;->b:Lz7/s;

    .line 80
    .line 81
    const-string v3, "LogcatKeymap_ScreenOnOff"

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    .line 89
    .line 90
    :catch_2
    invoke-virtual {v0}, Lwa/u;->i()V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 94
    .line 95
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 100
    .line 101
    iget-object v1, p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 102
    .line 103
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 108
    .line 109
    iget-boolean v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 110
    .line 111
    xor-int/2addr p2, v1

    .line 112
    iput-boolean p2, v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 113
    .line 114
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->F:Lx9/w0;

    .line 115
    .line 116
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method
