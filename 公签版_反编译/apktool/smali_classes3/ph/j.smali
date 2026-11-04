.class public final synthetic Lph/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrh/u;
.implements Ll2/g;
.implements Ly0/d;
.implements Lec/d;
.implements Lv1/t;
.implements Lc6/e;
.implements Lea/f;
.implements Lha/a6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lph/j;->a:I

    iput-object p2, p0, Lph/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    sget v1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 4
    .line 5
    iget-object v1, p0, Lph/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-wide v2, p1, Lx9/w3;->d:J

    .line 13
    .line 14
    const-wide/32 v4, 0x14000

    .line 15
    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-lez v6, :cond_0

    .line 20
    .line 21
    const-string p1, "\u6587\u4ef6\u5927\u5c0f\u4e0d\u8981\u8d85\u8fc7 50KB"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Lma/b;

    .line 28
    .line 29
    invoke-direct {v2, v1, v0, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lmc/c;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {p1, v3, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v2, Lka/c;

    .line 53
    .line 54
    invoke-direct {v2, v0, v1}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lec/b;->b(Lec/e;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public b(JLu1/q;)V
    .locals 1

    .line 1
    iget v0, p0, Lph/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lph/j;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ls3/a0;

    .line 9
    .line 10
    iget-object v0, v0, Ls3/a0;->c:[Ll2/j0;

    .line 11
    .line 12
    invoke-static {p1, p2, p3, v0}, Ll2/b;->d(JLu1/q;[Ll2/j0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lph/j;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ls3/a0;

    .line 19
    .line 20
    iget-object v0, v0, Ls3/a0;->c:[Ll2/j0;

    .line 21
    .line 22
    invoke-static {p1, p2, p3, v0}, Ll2/b;->c(JLu1/q;[Ll2/j0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public d(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lph/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/t;

    .line 4
    .line 5
    iget v1, v0, Ll2/t;->e:I

    .line 6
    .line 7
    int-to-long v1, v1

    .line 8
    mul-long p1, p1, v1

    .line 9
    .line 10
    const-wide/32 v1, 0xf4240

    .line 11
    .line 12
    .line 13
    div-long v3, p1, v1

    .line 14
    .line 15
    iget-wide p1, v0, Ll2/t;->j:J

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    sub-long v7, p1, v0

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-static/range {v3 .. v8}, Lu1/f0;->h(JJJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    return-wide p1
.end method

.method public f(Lx9/w3;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lph/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/h3;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "keys"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Lz7/o;->l(I)Lz7/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    new-instance v1, Lha/z6;

    .line 34
    .line 35
    new-instance v10, Lma/b;

    .line 36
    .line 37
    const/16 v2, 0x18

    .line 38
    .line 39
    invoke-direct {v10, v0, v2, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string v8, "\u786e\u5b9a"

    .line 43
    .line 44
    const-string v9, "\u53d6\u6d88"

    .line 45
    .line 46
    iget-object p1, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v4, p1

    .line 49
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 50
    .line 51
    const-string v5, "\u7ed9\u65b9\u6848\u8d77\u4e2a\u540d"

    .line 52
    .line 53
    const-string v6, "\u65b0\u65b9\u6848"

    .line 54
    .line 55
    const-string v7, "\u8bf7\u8f93\u5165\u65b9\u6848\u540d"

    .line 56
    .line 57
    move-object v2, v1

    .line 58
    move-object v3, v4

    .line 59
    invoke-direct/range {v2 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    const-string p1, "json\u6587\u4ef6\u6709\u8bef"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    const-wide/16 v6, 0x3e8

    .line 8
    .line 9
    const-wide/16 v8, 0x1f4

    .line 10
    .line 11
    const-string v10, ""

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v12, 0x1

    .line 15
    iget-object v13, v1, Lph/j;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iget v14, v1, Lph/j;->a:I

    .line 18
    .line 19
    sparse-switch v14, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v13, Lua/w4;

    .line 23
    .line 24
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, v13, Lua/w4;->b:Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissan;->E:Landroid/content/ContentResolver;

    .line 30
    .line 31
    const-string v3, "adb_enabled"

    .line 32
    .line 33
    invoke-static {v0, v3, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    new-array v0, v12, [Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "echo a1 > /dev/hsaeio"

    .line 39
    .line 40
    aput-object v3, v0, v11

    .line 41
    .line 42
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Landroidx/room/s;->b:I

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 59
    .line 60
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :sswitch_0
    check-cast v13, Lua/w3;

    .line 65
    .line 66
    iget-object v0, v13, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 67
    .line 68
    :try_start_1
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 76
    .line 77
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, "/."

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    sget v5, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 90
    .line 91
    iget-object v5, v0, Lda/g;->A:Lda/g;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    .line 110
    :catch_1
    :try_start_2
    sget v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 111
    .line 112
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    array-length v3, v0

    .line 127
    :goto_1
    if-ge v11, v3, :cond_1

    .line 128
    .line 129
    aget-object v4, v0, v11

    .line 130
    .line 131
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v4}, La2/w0;->A(Ljava/io/File;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .line 138
    .line 139
    add-int/2addr v11, v12

    .line 140
    goto :goto_1

    .line 141
    :catch_2
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :sswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->F:I

    .line 151
    .line 152
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 153
    .line 154
    iget-object v0, v13, Lda/g;->A:Lda/g;

    .line 155
    .line 156
    invoke-static {v0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v3}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_3

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    sub-int/2addr v4, v12

    .line 185
    :goto_2
    if-ltz v4, :cond_3

    .line 186
    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 192
    .line 193
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_2

    .line 200
    .line 201
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    :goto_3
    invoke-virtual {v2, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :sswitch_2
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->H:I

    .line 216
    .line 217
    check-cast v13, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;

    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v3}, Lcom/yunpan/appmanage/db/AppDao;->get_app_all()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_5

    .line 243
    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 249
    .line 250
    :try_start_3
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 251
    .line 252
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 253
    .line 254
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 255
    .line 256
    iget-object v6, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v5, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    if-eqz v5, :cond_4

    .line 263
    .line 264
    iget-object v6, v13, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 265
    .line 266
    new-instance v7, Lcom/yunpan/appmanage/bean/AppAttribBean;

    .line 267
    .line 268
    iget-object v15, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 273
    .line 274
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 275
    .line 276
    iget-wide v11, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 277
    .line 278
    iget-wide v0, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 279
    .line 280
    move-object v14, v7

    .line 281
    move-object/from16 v16, v4

    .line 282
    .line 283
    move-object/from16 v17, v8

    .line 284
    .line 285
    move/from16 v18, v9

    .line 286
    .line 287
    move-wide/from16 v19, v11

    .line 288
    .line 289
    move-wide/from16 v21, v0

    .line 290
    .line 291
    invoke-direct/range {v14 .. v22}, Lcom/yunpan/appmanage/bean/AppAttribBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :catch_3
    nop

    .line 299
    :cond_4
    :goto_5
    move-object/from16 v1, p0

    .line 300
    .line 301
    const/4 v11, 0x0

    .line 302
    goto :goto_4

    .line 303
    :cond_5
    iget-object v0, v13, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 304
    .line 305
    new-instance v1, Lqa/e;

    .line 306
    .line 307
    const/4 v3, 0x7

    .line 308
    invoke-direct {v1, v3}, Lqa/e;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :sswitch_3
    check-cast v13, Lta/o;

    .line 319
    .line 320
    new-instance v0, Landroid/os/HandlerThread;

    .line 321
    .line 322
    const-string v1, "LoopThread"

    .line 323
    .line 324
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iput-object v0, v13, Lta/o;->d:Landroid/os/HandlerThread;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    .line 331
    .line 332
    new-instance v0, Landroid/os/Handler;

    .line 333
    .line 334
    iget-object v1, v13, Lta/o;->d:Landroid/os/HandlerThread;

    .line 335
    .line 336
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v13, Lta/o;->e:Landroid/os/Handler;

    .line 344
    .line 345
    new-instance v1, Lta/n;

    .line 346
    .line 347
    invoke-direct {v1, v13, v12}, Lta/n;-><init>(Lta/o;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    .line 352
    .line 353
    const/4 v1, 0x0

    .line 354
    iput-boolean v1, v13, Lta/o;->b:Z

    .line 355
    .line 356
    :try_start_4
    invoke-virtual {v13}, Lta/o;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 357
    .line 358
    .line 359
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 360
    .line 361
    iget-boolean v1, v0, Lwa/u;->J:Z

    .line 362
    .line 363
    if-eqz v1, :cond_7

    .line 364
    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 366
    .line 367
    .line 368
    move-result-wide v14

    .line 369
    const-wide/16 v16, 0x3e80

    .line 370
    .line 371
    cmp-long v1, v14, v16

    .line 372
    .line 373
    if-gez v1, :cond_7

    .line 374
    .line 375
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 376
    .line 377
    if-eqz v0, :cond_6

    .line 378
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v1, "\u5f00\u673a\u65f6\u95f4\u8fc7\u77ed\uff0c\u5ef6\u8fdf\u76d1\u542c\uff01\u5f00\u673a\u65f6\u95f4\uff1a"

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 387
    .line 388
    .line 389
    move-result-wide v14

    .line 390
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v1, "ms"

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :cond_6
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 406
    .line 407
    .line 408
    move-result-wide v0

    .line 409
    cmp-long v11, v0, v16

    .line 410
    .line 411
    if-gez v11, :cond_7

    .line 412
    .line 413
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 414
    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 418
    .line 419
    const/16 v1, 0x21

    .line 420
    .line 421
    if-lt v0, v1, :cond_8

    .line 422
    .line 423
    const/4 v1, 0x1

    .line 424
    goto :goto_7

    .line 425
    :cond_8
    const/4 v1, 0x0

    .line 426
    :goto_7
    if-eqz v1, :cond_b

    .line 427
    .line 428
    :cond_9
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 429
    .line 430
    iget-boolean v0, v0, Lfa/e;->d:Z

    .line 431
    .line 432
    if-nez v0, :cond_b

    .line 433
    .line 434
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 435
    .line 436
    .line 437
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 438
    .line 439
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 440
    .line 441
    if-eqz v0, :cond_a

    .line 442
    .line 443
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_a

    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_a
    iget-boolean v0, v13, Lta/o;->b:Z

    .line 455
    .line 456
    if-eqz v0, :cond_9

    .line 457
    .line 458
    :cond_b
    :goto_8
    iget-boolean v0, v13, Lta/o;->b:Z

    .line 459
    .line 460
    iget-object v6, v13, Lta/o;->f:Ll6/e;

    .line 461
    .line 462
    const-string v7, "\u65e5\u5fd7\u76d1\u542c\u505c\u6b62\u4e86"

    .line 463
    .line 464
    if-eqz v0, :cond_d

    .line 465
    .line 466
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 467
    .line 468
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 469
    .line 470
    if-eqz v0, :cond_c

    .line 471
    .line 472
    invoke-static {v7}, Lwa/w;->b(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_c
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_13

    .line 482
    .line 483
    :cond_d
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 484
    .line 485
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 486
    .line 487
    if-eqz v0, :cond_e

    .line 488
    .line 489
    const-string v0, "\u5f00\u59cb\u76d1\u542c\u7cfb\u7edf\u65e5\u5fd7"

    .line 490
    .line 491
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :cond_e
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    const-string v11, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET"

    .line 503
    .line 504
    new-array v14, v12, [Ljava/lang/Object;

    .line 505
    .line 506
    const/4 v15, 0x0

    .line 507
    aput-object v0, v14, v15

    .line 508
    .line 509
    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    :goto_9
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 514
    .line 515
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 516
    .line 517
    if-eqz v0, :cond_f

    .line 518
    .line 519
    const-string v0, "\u6267\u884c\u65e5\u5fd7\u76d1\u542c\uff1alogcat"

    .line 520
    .line 521
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_f
    const/4 v14, 0x0

    .line 525
    goto :goto_a

    .line 526
    :catch_4
    move-exception v0

    .line 527
    goto/16 :goto_11

    .line 528
    .line 529
    :goto_a
    iput-boolean v14, v13, Lta/o;->c:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 530
    .line 531
    :try_start_6
    const-string v0, "sh"

    .line 532
    .line 533
    invoke-virtual {v13, v0}, Lta/o;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 534
    .line 535
    .line 536
    goto :goto_b

    .line 537
    :catch_5
    move-exception v0

    .line 538
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    .line 540
    .line 541
    const-string v0, "id"

    .line 542
    .line 543
    invoke-virtual {v13, v0}, Lta/o;->a(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    :goto_b
    const-string v0, "logcat -c"

    .line 547
    .line 548
    invoke-virtual {v13, v0}, Lta/o;->b(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v13, v11}, Lta/o;->b(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const-wide/16 v14, 0x12c

    .line 555
    .line 556
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 557
    .line 558
    .line 559
    iget-object v0, v13, Lta/o;->l:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 560
    .line 561
    :try_start_8
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 562
    .line 563
    .line 564
    if-eqz v1, :cond_10

    .line 565
    .line 566
    iget-object v14, v13, Lta/o;->h:Loa/b;

    .line 567
    .line 568
    if-nez v14, :cond_10

    .line 569
    .line 570
    new-instance v14, Landroid/content/Intent;

    .line 571
    .line 572
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 573
    .line 574
    .line 575
    move-result-object v15

    .line 576
    iget-object v15, v15, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 577
    .line 578
    const-class v3, Lcom/yunpan/appmanage/ui/ActivityTrans;

    .line 579
    .line 580
    invoke-direct {v14, v15, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v14, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    .line 585
    .line 586
    const/high16 v3, 0x10000000

    .line 587
    .line 588
    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    .line 590
    .line 591
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    iget-object v3, v3, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 596
    .line 597
    invoke-static {v12, v3, v14}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 601
    .line 602
    .line 603
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    .line 608
    const-string v14, "logcat"

    .line 609
    .line 610
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-boolean v14, v13, Lta/o;->o:Z

    .line 614
    .line 615
    if-eqz v14, :cond_11

    .line 616
    .line 617
    move-object v14, v10

    .line 618
    goto :goto_c

    .line 619
    :cond_11
    const-string v14, " -v tag"

    .line 620
    .line 621
    :goto_c
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v13, v3}, Lta/o;->b(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    const/4 v3, 0x0

    .line 632
    :goto_d
    iget-boolean v14, v13, Lta/o;->b:Z

    .line 633
    .line 634
    if-nez v14, :cond_16

    .line 635
    .line 636
    iget-boolean v14, v13, Lta/o;->c:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 637
    .line 638
    if-nez v14, :cond_16

    .line 639
    .line 640
    :try_start_9
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 641
    .line 642
    const-wide/16 v8, 0xa

    .line 643
    .line 644
    invoke-virtual {v0, v8, v9, v14}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    check-cast v8, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 649
    .line 650
    goto :goto_e

    .line 651
    :catch_6
    nop

    .line 652
    move-object v8, v5

    .line 653
    :goto_e
    if-nez v8, :cond_15

    .line 654
    .line 655
    add-int/2addr v3, v12

    .line 656
    if-eqz v1, :cond_12

    .line 657
    .line 658
    if-lt v3, v4, :cond_14

    .line 659
    .line 660
    :try_start_a
    iput-boolean v12, v13, Lta/o;->c:Z

    .line 661
    .line 662
    goto :goto_10

    .line 663
    :cond_12
    const/4 v8, 0x5

    .line 664
    if-ne v3, v8, :cond_13

    .line 665
    .line 666
    invoke-static {}, Lcom/yunpan/appmanage/util/MyLog;->normal()V

    .line 667
    .line 668
    .line 669
    goto :goto_f

    .line 670
    :cond_13
    if-lt v3, v4, :cond_14

    .line 671
    .line 672
    iput-boolean v12, v13, Lta/o;->c:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_14
    :goto_f
    const-wide/16 v8, 0x1f4

    .line 676
    .line 677
    goto :goto_d

    .line 678
    :cond_15
    :try_start_b
    invoke-virtual {v13, v8, v2}, Lta/o;->f(Ljava/lang/String;Lmc/b;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 679
    .line 680
    .line 681
    :catch_7
    const/4 v3, 0x0

    .line 682
    goto :goto_f

    .line 683
    :cond_16
    :goto_10
    :try_start_c
    iget-boolean v0, v13, Lta/o;->b:Z

    .line 684
    .line 685
    if-nez v0, :cond_17

    .line 686
    .line 687
    iget-boolean v0, v13, Lta/o;->c:Z

    .line 688
    .line 689
    if-eqz v0, :cond_17

    .line 690
    .line 691
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 692
    .line 693
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 694
    .line 695
    if-eqz v0, :cond_17

    .line 696
    .line 697
    const-string v0, "\u4e00\u5206\u949f\u6ca1\u6709\u6536\u5230\u65b0\u65e5\u5fd7\uff0c\u91cd\u65b0\u542f\u52a8\u76d1\u542c\u7a0b\u5e8f"

    .line 698
    .line 699
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    :cond_17
    iget-boolean v0, v13, Lta/o;->b:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 703
    .line 704
    if-eqz v0, :cond_18

    .line 705
    .line 706
    goto :goto_12

    .line 707
    :cond_18
    const-wide/16 v8, 0x1f4

    .line 708
    .line 709
    goto/16 :goto_9

    .line 710
    .line 711
    :goto_11
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 712
    .line 713
    iget-boolean v1, v1, Lwa/u;->u:Z

    .line 714
    .line 715
    if-eqz v1, :cond_19

    .line 716
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    const-string v3, "\u3010\u62a5\u9519\u4f4d\u7f6eMyLogcatKeymap.start\u3011 "

    .line 720
    .line 721
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 739
    .line 740
    .line 741
    :goto_12
    iget-boolean v0, v13, Lta/o;->b:Z

    .line 742
    .line 743
    if-nez v0, :cond_1b

    .line 744
    .line 745
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    .line 749
    .line 750
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 751
    .line 752
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 753
    .line 754
    const-string v1, "\u65e5\u5fd7\u76d1\u542c\u670d\u52a1\u51fa\u9519\uff0c\u5df2\u9000\u51fa"

    .line 755
    .line 756
    if-eqz v0, :cond_1a

    .line 757
    .line 758
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    :cond_1a
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    :cond_1b
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 765
    .line 766
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 767
    .line 768
    if-eqz v0, :cond_1c

    .line 769
    .line 770
    invoke-static {v7}, Lwa/w;->b(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :cond_1c
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 777
    .line 778
    .line 779
    goto :goto_13

    .line 780
    :catch_8
    move-exception v0

    .line 781
    move-object v1, v0

    .line 782
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 783
    .line 784
    .line 785
    const-string v0, "\u8bfb\u53d6\u65e5\u5fd7\u6620\u5c04\u914d\u7f6e\u51fa\u9519"

    .line 786
    .line 787
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 791
    .line 792
    iget-boolean v0, v0, Lwa/u;->u:Z

    .line 793
    .line 794
    if-eqz v0, :cond_1d

    .line 795
    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    const-string v3, "\u8bfb\u53d6\u65e5\u5fd7\u6620\u5c04\u914d\u7f6e\u51fa\u9519\uff1a"

    .line 799
    .line 800
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    :cond_1d
    iput-boolean v12, v13, Lta/o;->b:Z

    .line 818
    .line 819
    invoke-virtual {v2, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 820
    .line 821
    .line 822
    :goto_13
    return-void

    .line 823
    :sswitch_4
    sget v0, Lcom/yunpan/appmanage/service/BootTaskService;->c:I

    .line 824
    .line 825
    move-object v0, v13

    .line 826
    check-cast v0, Lcom/yunpan/appmanage/service/BootTaskService;

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 832
    .line 833
    .line 834
    move-result-wide v3

    .line 835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 836
    .line 837
    .line 838
    move-result-wide v8

    .line 839
    const-wide/32 v10, 0x1d4c0

    .line 840
    .line 841
    .line 842
    cmp-long v1, v8, v10

    .line 843
    .line 844
    if-gez v1, :cond_1e

    .line 845
    .line 846
    invoke-static {}, Lta/i;->c()V

    .line 847
    .line 848
    .line 849
    :cond_1e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 850
    .line 851
    .line 852
    iget-boolean v1, v0, Lcom/yunpan/appmanage/service/BootTaskService;->b:Z

    .line 853
    .line 854
    if-eqz v1, :cond_1e

    .line 855
    .line 856
    iget-boolean v1, v0, Lcom/yunpan/appmanage/service/BootTaskService;->a:Z

    .line 857
    .line 858
    if-eqz v1, :cond_1e

    .line 859
    .line 860
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 861
    .line 862
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 863
    .line 864
    if-eqz v0, :cond_1f

    .line 865
    .line 866
    const-string v0, "\u4efb\u52a1\u6267\u884c\u5b8c\u6210"

    .line 867
    .line 868
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :cond_1f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 872
    .line 873
    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 875
    .line 876
    .line 877
    move-result-wide v0

    .line 878
    sub-long/2addr v0, v3

    .line 879
    const-wide/32 v8, 0x2bf20

    .line 880
    .line 881
    .line 882
    cmp-long v5, v0, v8

    .line 883
    .line 884
    if-ltz v5, :cond_1f

    .line 885
    .line 886
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 887
    .line 888
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 889
    .line 890
    if-eqz v0, :cond_20

    .line 891
    .line 892
    const-string v0, "\u5173\u95ed\u524d\u53f0\u670d\u52a1"

    .line 893
    .line 894
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 898
    .line 899
    .line 900
    return-void

    .line 901
    :sswitch_5
    sget v0, Lcom/yunpan/appmanage/service/AccRestartService;->c:I

    .line 902
    .line 903
    move-object v0, v13

    .line 904
    check-cast v0, Lcom/yunpan/appmanage/service/AccRestartService;

    .line 905
    .line 906
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    const-wide/16 v3, 0x1f4

    .line 910
    .line 911
    :cond_21
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 912
    .line 913
    .line 914
    iget-boolean v1, v0, Lcom/yunpan/appmanage/service/AccRestartService;->a:Z

    .line 915
    .line 916
    if-eqz v1, :cond_21

    .line 917
    .line 918
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 919
    .line 920
    .line 921
    return-void

    .line 922
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    const-string v1, "SELECT * FROM fileList WHERE (path LIKE \'"

    .line 925
    .line 926
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 930
    .line 931
    const-string v3, "/%\')"

    .line 932
    .line 933
    invoke-static {v1, v0, v3}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    const-string v1, " and isDir=0"

    .line 938
    .line 939
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    const-string v1, " and path NOT LIKE \'%/.%\'"

    .line 944
    .line 945
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    check-cast v13, Ljava/util/HashSet;

    .line 950
    .line 951
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_24

    .line 960
    .line 961
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Ljava/lang/String;

    .line 966
    .line 967
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 968
    .line 969
    .line 970
    move-result v4

    .line 971
    if-eqz v4, :cond_22

    .line 972
    .line 973
    goto :goto_14

    .line 974
    :cond_22
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    const-string v5, "\'"

    .line 979
    .line 980
    if-eqz v4, :cond_23

    .line 981
    .line 982
    const-string v4, " and (LOWER(name) LIKE \'%."

    .line 983
    .line 984
    invoke-static {v4, v3, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    :goto_15
    move-object v10, v3

    .line 989
    goto :goto_14

    .line 990
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-string v6, " OR LOWER(name) LIKE \'%."

    .line 999
    .line 1000
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    goto :goto_15

    .line 1014
    :cond_24
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    if-nez v1, :cond_25

    .line 1019
    .line 1020
    const-string v1, ")"

    .line 1021
    .line 1022
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v10

    .line 1026
    :cond_25
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v1

    .line 1030
    if-nez v1, :cond_26

    .line 1031
    .line 1032
    invoke-static {v0, v10}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    :cond_26
    const-string v1, " ORDER BY lastModified DESC"

    .line 1037
    .line 1038
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    const/4 v1, 0x0

    .line 1043
    new-array v1, v1, [Ljava/lang/Object;

    .line 1044
    .line 1045
    new-instance v3, La2/g1;

    .line 1046
    .line 1047
    invoke-direct {v3, v0, v1}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    if-eqz v0, :cond_28

    .line 1063
    .line 1064
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v1

    .line 1068
    if-nez v1, :cond_28

    .line 1069
    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v3

    .line 1083
    if-eqz v3, :cond_27

    .line 1084
    .line 1085
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    check-cast v3, Lcom/yunpan/appmanage/db/FileInfo;

    .line 1090
    .line 1091
    new-instance v4, Lx9/w3;

    .line 1092
    .line 1093
    invoke-direct {v4, v3}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    goto :goto_16

    .line 1100
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-nez v0, :cond_28

    .line 1105
    .line 1106
    invoke-virtual {v2, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_17

    .line 1113
    :cond_28
    const-string v0, "\u672c\u673a\u6ca1\u6709\u6b64\u7c7b\u578b\u6587\u4ef6"

    .line 1114
    .line 1115
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1119
    .line 1120
    .line 1121
    :goto_17
    return-void

    .line 1122
    :sswitch_7
    check-cast v13, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 1123
    .line 1124
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 1125
    .line 1126
    iget-boolean v1, v0, Lx9/w3;->c:Z

    .line 1127
    .line 1128
    if-eqz v1, :cond_31

    .line 1129
    .line 1130
    iget-object v1, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 1131
    .line 1132
    iget v3, v1, Lx9/n5;->a:I

    .line 1133
    .line 1134
    if-ne v3, v12, :cond_29

    .line 1135
    .line 1136
    goto :goto_18

    .line 1137
    :cond_29
    const/4 v6, 0x2

    .line 1138
    if-ne v3, v6, :cond_2a

    .line 1139
    .line 1140
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1141
    .line 1142
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 1143
    .line 1144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1149
    .line 1150
    .line 1151
    move-result v0

    .line 1152
    int-to-long v3, v0

    .line 1153
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 1154
    .line 1155
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1156
    .line 1157
    invoke-static {v3, v4, v0, v1}, Lqf/c;->b(JLjava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    goto :goto_18

    .line 1162
    :cond_2a
    const/4 v6, 0x3

    .line 1163
    if-ne v3, v6, :cond_2b

    .line 1164
    .line 1165
    iget-object v3, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1166
    .line 1167
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1168
    .line 1169
    invoke-static {v3, v0, v1}, Lqa/f;->b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v5

    .line 1173
    goto :goto_18

    .line 1174
    :cond_2b
    const/4 v6, 0x4

    .line 1175
    if-ne v3, v6, :cond_2c

    .line 1176
    .line 1177
    iget-object v3, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1178
    .line 1179
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1180
    .line 1181
    invoke-static {v3, v0, v1}, Lcom/bumptech/glide/c;->d(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v5

    .line 1185
    goto :goto_18

    .line 1186
    :cond_2c
    const/4 v6, 0x5

    .line 1187
    if-ne v3, v6, :cond_2d

    .line 1188
    .line 1189
    iget-object v3, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1190
    .line 1191
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1192
    .line 1193
    invoke-static {v3, v0, v1}, Lcom/bumptech/glide/d;->e(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v5

    .line 1197
    goto :goto_18

    .line 1198
    :cond_2d
    if-ne v3, v4, :cond_2e

    .line 1199
    .line 1200
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1201
    .line 1202
    invoke-static {v1, v0}, Lif/a;->h(Lx9/n5;Ljava/lang/String;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v5

    .line 1206
    goto :goto_18

    .line 1207
    :cond_2e
    const/4 v4, 0x7

    .line 1208
    if-ne v3, v4, :cond_2f

    .line 1209
    .line 1210
    iget-object v3, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1211
    .line 1212
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-static {v3, v0, v1}, Lqa/g;->b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v5

    .line 1218
    :cond_2f
    :goto_18
    if-nez v5, :cond_30

    .line 1219
    .line 1220
    const-string v0, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"

    .line 1221
    .line 1222
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 1223
    .line 1224
    .line 1225
    goto :goto_1a

    .line 1226
    :cond_30
    invoke-virtual {v2, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 1230
    .line 1231
    invoke-static {v13, v0, v5, v2}, La9/o;->Q(Lcom/yunpan/appmanage/bean/WpTaskBean;Lx9/w3;Lcom/yunpan/appmanage/bean/WpPathBean;Lmc/b;)V

    .line 1232
    .line 1233
    .line 1234
    goto :goto_19

    .line 1235
    :cond_31
    iget-object v1, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1236
    .line 1237
    iput-object v1, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 1238
    .line 1239
    iput-object v0, v13, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 1240
    .line 1241
    invoke-virtual {v2, v13}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1242
    .line 1243
    .line 1244
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1245
    .line 1246
    .line 1247
    :goto_1a
    return-void

    .line 1248
    :sswitch_8
    new-instance v1, Ljava/util/ArrayList;

    .line 1249
    .line 1250
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .line 1252
    .line 1253
    check-cast v13, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 1254
    .line 1255
    iget-object v0, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 1256
    .line 1257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    const/4 v0, 0x0

    .line 1262
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1263
    .line 1264
    .line 1265
    move-result v4

    .line 1266
    if-eqz v4, :cond_32

    .line 1267
    .line 1268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v4

    .line 1272
    check-cast v4, Lx9/w3;

    .line 1273
    .line 1274
    const-string v5, "\u62f7\u8d1d\u8fdb\u5ea6\uff1a"

    .line 1275
    .line 1276
    const-string v6, "/"

    .line 1277
    .line 1278
    invoke-static {v5, v0, v6}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v5

    .line 1282
    iget-object v6, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 1283
    .line 1284
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v6

    .line 1288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    const-string v6, "\n"

    .line 1292
    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    iget-object v6, v4, Lx9/w3;->a:Ljava/lang/String;

    .line 1297
    .line 1298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v5

    .line 1305
    invoke-virtual {v2, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1306
    .line 1307
    .line 1308
    add-int/lit8 v5, v0, 0x1

    .line 1309
    .line 1310
    :try_start_d
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1311
    .line 1312
    iget-object v6, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 1313
    .line 1314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1315
    .line 1316
    .line 1317
    invoke-static {v6, v4}, La2/w0;->y(Ljava/lang/String;Lx9/w3;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 1318
    .line 1319
    .line 1320
    goto :goto_1c

    .line 1321
    :catch_9
    move-exception v0

    .line 1322
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-static {v0, v6}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    iput-object v0, v4, Lx9/w3;->j:Ljava/lang/String;

    .line 1332
    .line 1333
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    :goto_1c
    move v0, v5

    .line 1337
    goto :goto_1b

    .line 1338
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v0

    .line 1342
    if-nez v0, :cond_33

    .line 1343
    .line 1344
    invoke-static {v13}, Ls1/g;->g0(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 1345
    .line 1346
    .line 1347
    new-instance v0, Lqa/b;

    .line 1348
    .line 1349
    const-string v3, "\u62f7\u8d1d\u5931\u8d25"

    .line 1350
    .line 1351
    invoke-direct {v0, v3, v1}, Lqa/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1355
    .line 1356
    .line 1357
    :cond_33
    invoke-static {v13}, Ls1/g;->g0(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 1358
    .line 1359
    .line 1360
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1361
    .line 1362
    iget-object v1, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 1363
    .line 1364
    const/4 v3, 0x0

    .line 1365
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    check-cast v1, Lx9/w3;

    .line 1370
    .line 1371
    iget-object v1, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 1372
    .line 1373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1374
    .line 1375
    .line 1376
    invoke-static {v1}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v0

    .line 1380
    iget-boolean v1, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    .line 1381
    .line 1382
    if-eqz v1, :cond_36

    .line 1383
    .line 1384
    iget-object v1, v13, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 1385
    .line 1386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v1

    .line 1390
    :cond_34
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    if-eqz v3, :cond_36

    .line 1395
    .line 1396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v3

    .line 1400
    check-cast v3, Lx9/w3;

    .line 1401
    .line 1402
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1403
    .line 1404
    iget-object v5, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 1405
    .line 1406
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1407
    .line 1408
    .line 1409
    invoke-static {v5}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v4

    .line 1413
    const-string v5, "\u5220\u9664\u6210\u529f"

    .line 1414
    .line 1415
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v4

    .line 1419
    if-eqz v4, :cond_35

    .line 1420
    .line 1421
    if-eqz v0, :cond_34

    .line 1422
    .line 1423
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 1428
    .line 1429
    invoke-virtual {v4, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    goto :goto_1d

    .line 1433
    :cond_35
    if-eqz v0, :cond_34

    .line 1434
    .line 1435
    iget-boolean v4, v3, Lx9/w3;->c:Z

    .line 1436
    .line 1437
    if-eqz v4, :cond_34

    .line 1438
    .line 1439
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1440
    .line 1441
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 1442
    .line 1443
    new-instance v5, Lcom/yunpan/appmanage/util/z;

    .line 1444
    .line 1445
    new-instance v6, Ljava/io/File;

    .line 1446
    .line 1447
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 1448
    .line 1449
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-direct {v5, v6}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 1453
    .line 1454
    .line 1455
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1456
    .line 1457
    .line 1458
    goto :goto_1d

    .line 1459
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1460
    .line 1461
    .line 1462
    return-void

    .line 1463
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x10 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public i(Lph/q;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lph/f;

    .line 2
    .line 3
    iget-object v0, p0, Lph/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lph/f;

    .line 10
    .line 11
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p2, p1, Lph/e;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lph/e;

    .line 24
    .line 25
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of p2, p1, Lph/d;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    check-cast p1, Lph/d;

    .line 38
    .line 39
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic p(Lph/q;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x4

    const/16 v3, 0xd

    const-string v4, "\u8bf7\u5148\u8fde\u63a5adb"

    const/4 v5, 0x6

    const-string v6, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u653e"

    const/4 v7, 0x3

    const-string v8, ""

    const/4 v9, 0x5

    const v11, 0x7f080237

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-object v15, v0, Lph/j;->b:Ljava/lang/Object;

    iget v10, v0, Lph/j;->a:I

    packed-switch v10, :pswitch_data_0

    .line 1
    :pswitch_0
    move-object v2, v15

    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/p2;

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v4, v3, Lua/p2;->c:Z

    if-eqz v4, :cond_1

    xor-int/2addr v4, v14

    .line 3
    iput-boolean v4, v3, Lua/p2;->c:Z

    .line 4
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 5
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lua/p2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' --ei appCentered 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    goto :goto_0

    .line 7
    :cond_1
    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "\u5168\u5c4f"

    aput-object v5, v4, v13

    const-string v5, "\u5168\u5c4f(\u6709\u8f66\u6807)"

    aput-object v5, v4, v14

    .line 8
    new-instance v5, Lha/ja;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    new-instance v4, Lha/v1;

    const/16 v6, 0xa

    invoke-direct {v4, v2, v3, v1, v6}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, p2

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 9
    invoke-virtual {v5}, Lha/a4;->show()V

    :goto_0
    return-void

    .line 10
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShang;->E:I

    move-object v2, v15

    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShang;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 11
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    invoke-virtual {v2, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto/16 :goto_2

    :cond_3
    if-ne v1, v14, :cond_5

    .line 15
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-nez v1, :cond_4

    .line 17
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 18
    :cond_4
    new-instance v1, Lha/z6;

    new-instance v3, Lua/i1;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v2}, Lua/i1;-><init>(ILjava/lang/Object;)V

    const-string v21, "\u597d\u7684"

    const-string v22, ""

    const-string v19, "\u63d0\u4e0d\u63d0\u6743\u90fd\u53ef\u4ee5\u8bbe\u7f6e\u5168\u5c4f"

    const-string v20, "\u4f46\u662f\u63d0\u6743\u540e \u53ef\u770b\u5230\u54ea\u4e9b\u5e94\u7528\u5df2\u7ecf\u5f00\u4e86\u5168\u5c4f"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 19
    invoke-virtual {v1}, Lha/a4;->show()V

    goto :goto_2

    :cond_5
    if-ne v1, v12, :cond_7

    .line 20
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-nez v1, :cond_6

    .line 22
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 23
    :cond_6
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    invoke-virtual {v2, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto :goto_2

    :cond_7
    if-ne v1, v7, :cond_9

    .line 24
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 25
    iget-boolean v4, v3, Lcom/yunpan/appmanage/util/w;->E:Z

    xor-int/2addr v4, v14

    .line 26
    iput-boolean v4, v3, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 27
    :try_start_0
    iget-object v5, v3, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    const-string v6, "OuShangAutoAddWhitelist"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    invoke-virtual {v3}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 29
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    new-instance v3, Lx9/l3;

    .line 30
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 31
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->E:Z

    if-eqz v4, :cond_8

    const v10, 0x7f080234

    goto :goto_1

    :cond_8
    const v10, 0x7f080237

    .line 32
    :goto_1
    const-string v4, "\u5b89\u88c5\u5e94\u7528\u65f6\u81ea\u52a8\u6dfb\u52a0\u767d\u540d\u5355"

    invoke-direct {v3, v10, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_9
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 34
    :pswitch_2
    sget v10, Lcom/yunpan/appmanage/ui/ActivityNezha;->F:I

    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityNezha;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_f

    .line 35
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 36
    invoke-virtual {v1}, Lfa/h0;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 37
    const-string v1, "\u7cfb\u7edf\u672c\u8eab\u5df2root\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    invoke-static {v1, v13}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 38
    :cond_a
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    const-string v1, "\u672c\u8eab\u5df2\u8fde\u63a5adb\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    invoke-static {v1, v13}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    .line 41
    :cond_b
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 42
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 45
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6eadb shell\u5bc6\u7801"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 46
    :cond_c
    const-string v3, "auth "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 47
    const-string v4, "#*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    iput-object v2, v1, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 50
    :try_start_1
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    const-string v4, "AdbShellPassword"

    invoke-virtual {v3, v4, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :catch_1
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    goto :goto_3

    .line 52
    :cond_d
    const-string v1, "\u8bf7\u6b63\u786e\u8bbe\u7f6eadb shell\u5bc6\u7801"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 53
    :cond_e
    :goto_3
    new-instance v1, Lua/v0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lua/v0;-><init>(I)V

    .line 54
    new-instance v2, Lmc/c;

    invoke-direct {v2, v13, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 56
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    move-result-object v1

    .line 57
    invoke-static {}, Lfc/b;->a()Lfc/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    move-result-object v1

    new-instance v2, Lua/a4;

    invoke-direct {v2, v15, v13}, Lua/a4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezha;I)V

    .line 58
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    goto/16 :goto_4

    :cond_f
    if-ne v1, v14, :cond_12

    .line 59
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 60
    invoke-virtual {v1}, Lfa/h0;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 61
    const-string v1, "\u60a8\u662froot\u7528\u6237\uff0c\u7981\u6b62\u4f7f\u7528\u6b64\u529f\u80fd"

    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 62
    :cond_10
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-nez v1, :cond_11

    .line 64
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 65
    :cond_11
    new-instance v1, Lua/v0;

    invoke-direct {v1, v3}, Lua/v0;-><init>(I)V

    .line 66
    new-instance v2, Lmc/c;

    invoke-direct {v2, v13, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 67
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 68
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    move-result-object v1

    .line 69
    invoke-static {}, Lfc/b;->a()Lfc/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    move-result-object v1

    .line 70
    new-instance v2, Lua/a4;

    invoke-direct {v2, v15, v14}, Lua/a4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezha;I)V

    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    goto/16 :goto_4

    :cond_12
    if-ne v1, v12, :cond_14

    .line 71
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, La2/w0;->P()Z

    move-result v1

    if-nez v1, :cond_13

    .line 73
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 74
    :cond_13
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    invoke-virtual {v15, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto/16 :goto_4

    :cond_14
    if-ne v1, v7, :cond_15

    .line 75
    const-string v1, "\u6b64\u529f\u80fd\u6682\u672a\u5b8c\u6210"

    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_15
    if-ne v1, v2, :cond_16

    .line 76
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    invoke-virtual {v15, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto :goto_4

    :cond_16
    if-ne v1, v9, :cond_17

    .line 77
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    invoke-virtual {v15, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto :goto_4

    :cond_17
    if-ne v1, v5, :cond_18

    .line 78
    invoke-virtual {v15, v14}, Lcom/yunpan/appmanage/ui/ActivityNezha;->x(Z)V

    goto :goto_4

    :cond_18
    const/4 v2, 0x7

    if-ne v1, v2, :cond_19

    .line 79
    invoke-virtual {v15, v13}, Lcom/yunpan/appmanage/ui/ActivityNezha;->x(Z)V

    goto :goto_4

    :cond_19
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1c

    .line 80
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 81
    iget-object v5, v2, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 83
    iget-object v2, v15, Lda/g;->A:Lda/g;

    invoke-static {v2}, Lif/a;->b0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 84
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 85
    :cond_1a
    new-instance v2, Lha/o1;

    new-instance v4, Lha/o;

    invoke-direct {v4, v1, v3, v15}, Lha/o;-><init>(IILjava/lang/Object;)V

    invoke-direct {v2, v15, v15, v4}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/o;)V

    .line 86
    invoke-virtual {v2}, Lha/a4;->show()V

    goto :goto_4

    .line 87
    :cond_1b
    iput-object v8, v2, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 88
    :try_start_2
    iget-object v3, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    const-string v4, "Nezha_VIN"

    invoke-virtual {v3, v4, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :catch_2
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 90
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    iput v11, v2, Lx9/l3;->a:I

    .line 91
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityNezha;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    goto :goto_4

    .line 92
    :cond_1c
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    .line 93
    :pswitch_3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->F:I

    .line 94
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    invoke-virtual {v15, v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->x(I)V

    return-void

    .line 95
    :pswitch_4
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz7/s;

    const-string v3, "event"

    invoke-virtual {v2, v3}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1d

    .line 96
    invoke-virtual {v15, v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->y(I)V

    goto :goto_5

    .line 97
    :cond_1d
    invoke-virtual {v15, v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->x(I)V

    :goto_5
    return-void

    .line 98
    :pswitch_5
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->F:I

    .line 99
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;

    invoke-virtual {v15, v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->x(I)V

    return-void

    .line 100
    :pswitch_6
    sget v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->E:I

    move-object v3, v15

    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1f

    .line 101
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 102
    iget-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->K:Z

    xor-int/2addr v4, v14

    .line 103
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->K:Z

    .line 104
    :try_start_3
    iget-object v5, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    const-string v6, "Jili_open_lifted_install"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 105
    :catch_3
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 106
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    .line 107
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 108
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->K:Z

    if-eqz v4, :cond_1e

    const v10, 0x7f080234

    goto :goto_6

    :cond_1e
    const v10, 0x7f080237

    .line 109
    :goto_6
    iput v10, v2, Lx9/l3;->a:I

    .line 110
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    goto/16 :goto_f

    :cond_1f
    if-ne v1, v14, :cond_21

    .line 111
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 112
    iget-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->L:Z

    xor-int/2addr v4, v14

    .line 113
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/w;->L:Z

    .line 114
    :try_start_4
    iget-object v5, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    const-string v6, "Jili_close_recovery_install"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 115
    :catch_4
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 116
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    .line 117
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 118
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->L:Z

    if-eqz v4, :cond_20

    const v10, 0x7f080234

    goto :goto_7

    :cond_20
    const v10, 0x7f080237

    .line 119
    :goto_7
    iput v10, v2, Lx9/l3;->a:I

    .line 120
    iget-object v2, v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    goto/16 :goto_f

    :cond_21
    if-ne v1, v12, :cond_27

    .line 121
    const-string v1, "com.ecarx.appstore"

    .line 122
    invoke-static {v1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    move-result-object v1

    if-nez v1, :cond_22

    .line 123
    const-string v1, "\u4e0d\u5b58\u5728\u6b64\u5e94\u7528"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 124
    :cond_22
    iget-boolean v2, v1, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    if-eqz v2, :cond_24

    .line 125
    const-string v8, "\u76ee\u524d\uff1a\u5df2\u7981\u7528"

    :cond_23
    :goto_8
    move-object/from16 v20, v8

    goto :goto_9

    .line 126
    :cond_24
    iget-boolean v2, v1, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    if-eqz v2, :cond_25

    .line 127
    const-string v8, "\u76ee\u524d\uff1a\u5df2\u9690\u85cf"

    goto :goto_8

    .line 128
    :cond_25
    iget-boolean v2, v1, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    if-eqz v2, :cond_23

    .line 129
    const-string v8, "\u76ee\u524d\uff1a\u5df2\u5378\u8f7d"

    goto :goto_8

    .line 130
    :goto_9
    new-instance v2, Lha/z6;

    iget-object v4, v3, Lda/g;->A:Lda/g;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "\u7981\u7528\u5e94\u7528\u5e02\u573a"

    :goto_a
    move-object/from16 v21, v5

    goto :goto_b

    :cond_26
    const-string v5, "\u6062\u590d\u5e94\u7528\u5e02\u573a"

    goto :goto_a

    :goto_b
    new-instance v5, Lkf/d;

    const/16 v6, 0x1b

    invoke-direct {v5, v6, v3, v1, v13}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    const-string v19, "E02\u7cfb\u7edf\u5982\u9700\u5b89\u88c5\u7b2c\u4e09\u65b9\u5e94\u7528\uff0c\u5219\u9700\u8981\u5148\u7981\u7528\u539f\u8f66\u5e94\u7528\u5e02\u573a\uff0c\u5e76\u89e3\u9664\u5b89\u88c5\u9650\u5236\n\u4e00\u76f4\u7981\u7528\u6b64\u5e94\u7528\u5373\u53ef\uff0c\u4e0d\u9700\u8981\u6062\u590d\n\u6ce8\uff1a\u4e0d\u80fd\u7528adb\u6765\u5b89\u88c5\u7b2c\u4e09\u65b9\uff0c\u5426\u5219\u4f1a\u51fa\u73b0\u7cfb\u7edf\u8bbe\u7f6e\u7f3a\u5931\u529f\u80fd"

    const-string v22, ""

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 131
    invoke-virtual {v2}, Lha/a4;->show()V

    goto/16 :goto_f

    :cond_27
    if-ne v1, v7, :cond_2a

    .line 132
    :try_start_5
    new-array v1, v14, [Ljava/lang/String;

    const-string v2, "getprop sys.jsbd.apk_verify"

    aput-object v2, v1, v13

    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v1

    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_c

    :catch_5
    nop

    move-object v1, v8

    .line 133
    :goto_c
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 134
    const-string v8, "\u76ee\u524d\u72b6\u6001\uff1a\u53ef\u5b89\u88c5"

    :cond_28
    :goto_d
    move-object/from16 v20, v8

    goto :goto_e

    .line 135
    :cond_29
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 136
    const-string v8, "\u76ee\u524d\u72b6\u6001\uff1a\u9650\u5236"

    goto :goto_d

    .line 137
    :goto_e
    new-instance v1, Lha/z6;

    iget-object v2, v3, Lda/g;->A:Lda/g;

    new-instance v4, Ls9/a;

    invoke-direct {v4, v9, v13}, Ls9/a;-><init>(IZ)V

    const-string v19, "E02\u7cfb\u7edf\u5982\u9700\u5b89\u88c5\u7b2c\u4e09\u65b9\u5e94\u7528\uff0c\u5219\u9700\u8981\u89e3\u9664\u5b89\u88c5\u9650\u5236\uff0c\u5e76\u7981\u7528\u539f\u8f66\u5e94\u7528\u5e02\u573a\uff01\n\u6ce8\uff1a\u4e0d\u80fd\u7528adb\u6765\u5b89\u88c5\uff0c\u5426\u5219\u4f1a\u51fa\u73b0\u7cfb\u7edf\u8bbe\u7f6e\u7f3a\u5931\u529f\u80fd"

    const-string v21, "\u89e3\u9664\u5b89\u88c5\u9650\u5236"

    const-string v22, "\u6062\u590d\u5b89\u88c5\u9650\u5236"

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 138
    invoke-virtual {v1}, Lha/a4;->show()V

    goto :goto_f

    :cond_2a
    if-ne v1, v2, :cond_2b

    .line 139
    new-instance v1, Lha/z6;

    iget-object v2, v3, Lda/g;->A:Lda/g;

    new-instance v4, Ls5/c;

    invoke-direct {v4, v5}, Ls5/c;-><init>(I)V

    const-string v21, "\u6062\u590d"

    const-string v22, ""

    const-string v19, "\u53ea\u662f\u4e34\u65f6\u6062\u590d\uff0c\u91cd\u542f\u6216\u5b89\u88c5\u5e94\u7528\u53c8\u4f1a\u7f3a\u5931"

    const-string v20, ""

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 140
    invoke-virtual {v1}, Lha/a4;->show()V

    goto :goto_f

    :cond_2b
    if-ne v1, v9, :cond_2c

    .line 141
    new-instance v1, Lha/z6;

    iget-object v2, v3, Lda/g;->A:Lda/g;

    new-instance v4, Ls9/a;

    invoke-direct {v4, v5, v13}, Ls9/a;-><init>(IZ)V

    const-string v21, "\u660e\u767d\u4e86"

    const-string v22, ""

    const-string v19, "\u5982\u679c\u7528adb\u547d\u4ee4\u6765\u5b89\u88c5\u5e94\u7528\u7684\u8bdd\uff0c\u4f1a\u5bfc\u81f4\u3010\u6574\u8f66\u8bbe\u7f6e\u3011\u8fd9\u4e2aapp\u90e8\u5206\u529f\u80fd\u88ab\u9690\u85cf\uff01\u6240\u4ee5\u4e0d\u8981\u7528adb\u547d\u4ee4\u6765\u5b89\u88c5\u5e94\u7528\uff0c\u65b0\u7248\u7ba1\u5bb6\u5df2\u81ea\u52a8\u68c0\u6d4bE02\u7cfb\u7edf\u5e76\u7981\u7528\u7ba1\u5bb6\u7684adb\u5b89\u88c5\uff0c\u9ed8\u8ba4\u8c03\u7528\u7cfb\u7edf\u5b89\u88c5\u5668\u6765\u5b89\u88c5\u5e94\u7528\uff01"

    const-string v20, "\u5982\u679c\u529f\u80fd\u7f3a\u5931\uff0c\u6539\u5982\u4f55\u6062\u590d\uff1f \u8bf7\u6062\u590d\u51fa\u5382\u8bbe\u7f6e\u5373\u53ef\uff01"

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 142
    invoke-virtual {v1}, Lha/a4;->show()V

    goto :goto_f

    .line 143
    :cond_2c
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    .line 144
    :pswitch_7
    sget v2, Lcom/yunpan/appmanage/ui/ActivityInputMethod;->C:I

    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityInputMethod;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2f

    if-eq v1, v14, :cond_2e

    if-eq v1, v12, :cond_2d

    goto :goto_10

    .line 145
    :cond_2d
    iget-object v1, v15, Lda/g;->A:Lda/g;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_30

    .line 146
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_10

    .line 147
    :cond_2e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v2, v15, Lda/g;->A:Lda/g;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 149
    :cond_2f
    invoke-virtual {v15}, Landroid/app/Activity;->finish()V

    :cond_30
    :goto_10
    return-void

    .line 150
    :pswitch_8
    sget v2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 151
    check-cast v15, Lx9/w0;

    invoke-virtual {v15, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    invoke-virtual {v15, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    xor-int/2addr v3, v14

    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 152
    invoke-virtual {v15, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    return-void

    .line 153
    :pswitch_9
    sget v2, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->E:I

    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_32

    .line 154
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 155
    iget-boolean v3, v2, Lwa/u;->t:Z

    xor-int/2addr v3, v14

    .line 156
    :try_start_6
    iput-boolean v3, v2, Lwa/u;->t:Z

    .line 157
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    const-string v5, "DebugBootStart"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 158
    :catch_6
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 159
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    .line 160
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 161
    iget-boolean v3, v3, Lwa/u;->t:Z

    if-eqz v3, :cond_31

    const v10, 0x7f080234

    goto :goto_11

    :cond_31
    const v10, 0x7f080237

    :goto_11
    iput v10, v2, Lx9/l3;->a:I

    goto :goto_14

    :cond_32
    if-ne v1, v14, :cond_34

    .line 162
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 163
    iget-boolean v3, v2, Lwa/u;->u:Z

    xor-int/2addr v3, v14

    .line 164
    :try_start_7
    iput-boolean v3, v2, Lwa/u;->u:Z

    .line 165
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    const-string v5, "DebugLogcatKeymap"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 166
    :catch_7
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 167
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    .line 168
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 169
    iget-boolean v3, v3, Lwa/u;->u:Z

    if-eqz v3, :cond_33

    const v10, 0x7f080234

    goto :goto_12

    :cond_33
    const v10, 0x7f080237

    :goto_12
    iput v10, v2, Lx9/l3;->a:I

    goto :goto_14

    :cond_34
    if-ne v1, v12, :cond_36

    .line 170
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 171
    iget-boolean v3, v2, Lwa/u;->v:Z

    xor-int/2addr v3, v14

    .line 172
    :try_start_8
    iput-boolean v3, v2, Lwa/u;->v:Z

    .line 173
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    const-string v5, "DebugLogcatAdb"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 174
    :catch_8
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 175
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/l3;

    .line 176
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 177
    iget-boolean v3, v3, Lwa/u;->v:Z

    if-eqz v3, :cond_35

    const v10, 0x7f080234

    goto :goto_13

    :cond_35
    const v10, 0x7f080237

    :goto_13
    iput v10, v2, Lx9/l3;->a:I

    .line 178
    :cond_36
    :goto_14
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    return-void

    .line 179
    :pswitch_a
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;

    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 180
    iget-boolean v3, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    xor-int/2addr v3, v14

    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 181
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 182
    iget-boolean v1, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    if-eqz v1, :cond_37

    .line 183
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 184
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 185
    iget-object v3, v1, Lwa/u;->w:Ljava/util/HashSet;

    .line 186
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v1}, Lwa/u;->j()V

    goto :goto_15

    .line 188
    :cond_37
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 189
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 190
    iget-object v3, v1, Lwa/u;->w:Ljava/util/HashSet;

    .line 191
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v1}, Lwa/u;->j()V

    :goto_15
    return-void

    .line 193
    :pswitch_b
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;

    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/n3;

    .line 194
    iget-boolean v3, v2, Lx9/n3;->d:Z

    xor-int/2addr v3, v14

    iput-boolean v3, v2, Lx9/n3;->d:Z

    .line 195
    iget-object v2, v15, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    invoke-virtual {v3}, Lc6/g;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/n3;

    .line 199
    iget-boolean v5, v4, Lx9/n3;->d:Z

    if-eqz v5, :cond_38

    .line 200
    iget-object v4, v4, Lx9/n3;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 201
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const-string v3, "AutoClick_USB_OTG_AUTHORIZED_CANCEL"

    if-le v2, v14, :cond_3a

    .line 202
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    :try_start_9
    iput-object v1, v2, Lwa/u;->X:Ljava/lang/String;

    .line 205
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    invoke-virtual {v4, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 206
    :catch_9
    invoke-virtual {v2}, Lwa/u;->i()V

    goto :goto_17

    .line 207
    :cond_3a
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    :try_start_a
    iput-object v8, v1, Lwa/u;->X:Ljava/lang/String;

    .line 210
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    invoke-virtual {v2, v3, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 211
    :catch_a
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 212
    :goto_17
    iget-object v1, v15, Lda/g;->A:Lda/g;

    invoke-static {v1}, Lta/m;->e(Landroid/content/Context;)V

    return-void

    .line 213
    :pswitch_c
    sget v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->E:I

    move-object v2, v15

    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_3c

    .line 214
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 215
    iget-boolean v4, v3, Lwa/u;->V:Z

    xor-int/2addr v4, v14

    .line 216
    :try_start_b
    iput-boolean v4, v3, Lwa/u;->V:Z

    .line 217
    iget-object v5, v3, Lwa/u;->b:Lz7/s;

    const-string v6, "AutoClick_USB_OTG_AUTHORIZED"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 218
    :catch_b
    invoke-virtual {v3}, Lwa/u;->i()V

    .line 219
    iget-object v3, v2, Lda/g;->A:Lda/g;

    invoke-static {v3}, Lta/m;->e(Landroid/content/Context;)V

    .line 220
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/l3;

    .line 221
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 222
    iget-boolean v5, v4, Lwa/u;->V:Z

    if-eqz v5, :cond_3b

    const v10, 0x7f080234

    goto :goto_18

    :cond_3b
    const v10, 0x7f080237

    :goto_18
    iput v10, v3, Lx9/l3;->a:I

    .line 223
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v5, v1, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 224
    iget-boolean v1, v4, Lwa/u;->V:Z

    if-eqz v1, :cond_45

    .line 225
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;

    invoke-virtual {v2, v1}, Lda/g;->w(Ljava/lang/Class;)V

    goto/16 :goto_1c

    :cond_3c
    if-ne v1, v14, :cond_42

    .line 226
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 227
    iget-boolean v4, v3, Lwa/u;->Y:Z

    if-eqz v4, :cond_3e

    .line 228
    :try_start_c
    iput-boolean v13, v3, Lwa/u;->Y:Z

    .line 229
    iget-object v4, v3, Lwa/u;->b:Lz7/s;

    const-string v5, "AutoClick_DESKTOP_SELECT"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 230
    :catch_c
    invoke-virtual {v3}, Lwa/u;->i()V

    .line 231
    iget-object v4, v2, Lda/g;->A:Lda/g;

    invoke-static {v4}, Lta/m;->e(Landroid/content/Context;)V

    .line 232
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v4, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/l3;

    .line 233
    iget-boolean v3, v3, Lwa/u;->Y:Z

    if-eqz v3, :cond_3d

    const v10, 0x7f080234

    goto :goto_19

    :cond_3d
    const v10, 0x7f080237

    :goto_19
    iput v10, v4, Lx9/l3;->a:I

    .line 234
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v2, v1, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    goto/16 :goto_1c

    .line 235
    :cond_3e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-static {v2}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 238
    const-string v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u684c\u9762\u5e94\u7528\u5217\u8868"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 239
    :cond_3f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v14, :cond_40

    .line 240
    const-string v1, "\u4ec5\u6709\u4e00\u6b3e\u684c\u9762app\uff0c\u7528\u4e0d\u5230\u6b64\u529f\u80fd"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 241
    :cond_40
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 242
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 243
    :cond_41
    new-instance v5, Lha/fa;

    new-instance v6, Lha/v1;

    invoke-direct {v6, v2, v4, v1, v9}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const-string v19, "\u9700\u8981\u9009\u54ea\u4e2a\u684c\u9762"

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v21}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 244
    invoke-virtual {v5}, Lha/a4;->show()V

    goto :goto_1c

    :cond_42
    if-ne v1, v12, :cond_45

    .line 245
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 246
    iget-boolean v4, v3, Lwa/u;->b0:Z

    if-nez v4, :cond_43

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-ge v5, v6, :cond_43

    .line 247
    const-string v1, "\u4f4e\u4e8eAndroid 13\u7684\u7cfb\u7edf\u65e0\u9700\u6b64\u529f\u80fd"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_43
    xor-int/2addr v4, v14

    .line 248
    :try_start_d
    iput-boolean v4, v3, Lwa/u;->b0:Z

    .line 249
    iget-object v5, v3, Lwa/u;->b:Lz7/s;

    const-string v6, "AutoClick_AllowReadLogcat"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 250
    :catch_d
    invoke-virtual {v3}, Lwa/u;->i()V

    .line 251
    iget-object v3, v2, Lda/g;->A:Lda/g;

    invoke-static {v3}, Lta/m;->e(Landroid/content/Context;)V

    .line 252
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/l3;

    .line 253
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 254
    iget-boolean v5, v4, Lwa/u;->b0:Z

    if-eqz v5, :cond_44

    const v10, 0x7f080234

    goto :goto_1b

    :cond_44
    const v10, 0x7f080237

    :goto_1b
    iput v10, v3, Lx9/l3;->a:I

    .line 255
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    invoke-virtual {v5, v1, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 256
    iget-boolean v1, v4, Lwa/u;->b0:Z

    if-eqz v1, :cond_45

    .line 257
    new-instance v1, Lha/z6;

    iget-object v3, v2, Lda/g;->A:Lda/g;

    const-string v4, "\u5982\u679c\u60a8\u7684\u7cfb\u7edf\u6bcf\u6b21\u83b7\u53d6\u65e5\u5fd7\uff0c\u90fd\u4f1a\u5f39\u51fa \u5141\u8bb8xxx\u8bbf\u95ee\u6240\u6709\u8bbe\u5907\u65e5\u5fd7\u5417\uff1f\u8fd9\u4e2a\u7684\u7a97\u53e3\u7684\u8bdd\uff0c\u90a3\u4e48\u52fe\u9009\u8fd9\u4e2a\u529f\u80fd\u5c31\u4f1a\u81ea\u52a8\u5e2e\u60a8\u70b9\u51fb\u3010\u5141\u8bb8\u8bbf\u95ee\u4e00\u6b21\u3011"

    invoke-direct {v1, v2, v3, v4, v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lha/a4;->show()V

    :cond_45
    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
