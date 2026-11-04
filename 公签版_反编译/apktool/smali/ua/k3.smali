.class public final synthetic Lua/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;
.implements Lha/ia;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k3;->a:I

    iput-object p1, p0, Lua/k3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/k3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lz7/o;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "KeyMapLogcatSuperDiy.json"

    .line 23
    .line 24
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    const-string p1, "\u5220\u9664\u6210\u529f"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 4
    .line 5
    iget-object v2, p0, Lua/k3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 6
    .line 7
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const v5, 0x7f12000e

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 26
    .line 27
    new-instance v6, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_1
    if-eqz v3, :cond_2

    .line 63
    .line 64
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v3

    .line 69
    :try_start_4
    const-class v6, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 70
    .line 71
    :try_start_5
    const-string v7, "addSuppressed"

    .line 72
    .line 73
    new-array v8, v1, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v6, v8, v0

    .line 76
    .line 77
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v3, v1, v0

    .line 84
    .line 85
    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 86
    .line 87
    .line 88
    :catch_0
    :cond_2
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 89
    :catch_1
    :cond_3
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 98
    .line 99
    .line 100
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 101
    goto :goto_4

    .line 102
    :catch_2
    new-instance v0, Lz7/o;

    .line 103
    .line 104
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 105
    .line 106
    .line 107
    :goto_4
    iput-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 108
    .line 109
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 110
    .line 111
    new-instance v1, Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v3, "KeyMapLogcatSuperDiy.json"

    .line 122
    .line 123
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :try_start_8
    invoke-static {v1}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 138
    goto :goto_5

    .line 139
    :catch_3
    :try_start_9
    new-instance v0, Lz7/o;

    .line 140
    .line 141
    invoke-direct {v0}, Lz7/o;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :catch_4
    new-instance v0, Lz7/o;

    .line 146
    .line 147
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 148
    .line 149
    .line 150
    :goto_5
    iput-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 151
    .line 152
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lua/k3;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 9
    .line 10
    iget-object p1, p0, Lua/k3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->x(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 17
    .line 18
    iget-object v4, p0, Lua/k3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    if-ne p3, v0, :cond_2

    .line 31
    .line 32
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 33
    .line 34
    const-string p2, "isOn"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    xor-int/2addr v0, v1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, p2, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->D:Lx9/t0;

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 59
    .line 60
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 61
    .line 62
    invoke-virtual {v1, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lz7/p;->b()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    const p2, 0x7f080234

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const p2, 0x7f080237

    .line 77
    .line 78
    .line 79
    :goto_0
    iput p2, v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;->resId:I

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v4, Lda/g;->A:Lda/g;

    .line 85
    .line 86
    iget-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 87
    .line 88
    invoke-static {p1, p2}, Lq4/a;->V(Landroid/content/Context;Lz7/s;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v4, Lda/g;->A:Lda/g;

    .line 92
    .line 93
    invoke-static {p1}, Lta/m;->g(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_2
    const/4 v1, 0x2

    .line 99
    if-ne p3, v1, :cond_3

    .line 100
    .line 101
    const/4 p1, -0x1

    .line 102
    invoke-virtual {v4, p1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->x(I)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_3
    const/4 v1, 0x3

    .line 108
    if-ne p3, v1, :cond_4

    .line 109
    .line 110
    new-instance p1, Lha/p;

    .line 111
    .line 112
    iget-object p2, v4, Lda/g;->A:Lda/g;

    .line 113
    .line 114
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 115
    .line 116
    invoke-direct {p1, v4, p2, p3}, Lha/p;-><init>(Landroid/app/Activity;Lda/g;Lz7/s;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_4
    const/4 v1, 0x4

    .line 125
    if-ne p3, v1, :cond_5

    .line 126
    .line 127
    new-instance p1, Lha/w1;

    .line 128
    .line 129
    iget-object p2, v4, Lda/g;->A:Lda/g;

    .line 130
    .line 131
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 132
    .line 133
    invoke-direct {p1, v4, p2, p3}, Lha/w1;-><init>(Landroid/app/Activity;Lda/g;Lz7/s;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :cond_5
    const/4 v1, 0x5

    .line 142
    if-ne p3, v1, :cond_9

    .line 143
    .line 144
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 145
    .line 146
    if-nez p3, :cond_6

    .line 147
    .line 148
    iput-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 149
    .line 150
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    const/4 p2, 0x0

    .line 156
    :goto_1
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 157
    .line 158
    iget-object p3, p3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    const-string v1, "name"

    .line 165
    .line 166
    if-ge p2, p3, :cond_7

    .line 167
    .line 168
    iget-object p3, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 169
    .line 170
    invoke-virtual {p3, p2}, Lz7/o;->l(I)Lz7/p;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-virtual {p3}, Lz7/p;->g()Lz7/s;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    invoke-virtual {p3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {p3}, Lz7/p;->i()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    add-int/2addr p2, v0

    .line 190
    goto :goto_1

    .line 191
    :cond_7
    :goto_2
    iget-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 192
    .line 193
    iget-object p2, p2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-ge p1, p2, :cond_8

    .line 200
    .line 201
    iget-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 202
    .line 203
    invoke-virtual {p2, p1}, Lz7/o;->l(I)Lz7/p;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p2}, Lz7/p;->i()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    add-int/2addr p1, v0

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    const-string p1, "\u5bfc\u5165\u65b9\u6848(json)"

    .line 225
    .line 226
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    const-string p1, "\u5bfc\u51fa\u65b9\u6848(json)"

    .line 230
    .line 231
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    const-string p1, "\u5bfc\u51fa\u65b9\u6848(\u5305\u542b\u64cd\u4f5c)"

    .line 235
    .line 236
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    const-string p1, "\u5220\u9664\u65b9\u6848"

    .line 240
    .line 241
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance p1, Lha/ja;

    .line 245
    .line 246
    iget-object p2, v4, Lda/g;->A:Lda/g;

    .line 247
    .line 248
    iget-object v5, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 249
    .line 250
    new-instance v7, Lma/b;

    .line 251
    .line 252
    const/16 p3, 0x17

    .line 253
    .line 254
    invoke-direct {v7, v4, p3, v6}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move-object v2, p1

    .line 258
    move-object v3, v4

    .line 259
    move-object v4, p2

    .line 260
    invoke-direct/range {v2 .. v7}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_9
    const/4 p2, 0x6

    .line 269
    if-ne p3, p2, :cond_b

    .line 270
    .line 271
    iget-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 272
    .line 273
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-nez p2, :cond_a

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_a
    new-instance p2, Lha/z6;

    .line 281
    .line 282
    new-instance v9, Lua/m3;

    .line 283
    .line 284
    invoke-direct {v9, v4, p1}, Lua/m3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 285
    .line 286
    .line 287
    const-string v7, "\u786e\u5b9a"

    .line 288
    .line 289
    const-string v8, "\u53d6\u6d88"

    .line 290
    .line 291
    const-string v5, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709\u65e5\u5fd7\u6620\u5c04\u5417\uff1f"

    .line 292
    .line 293
    const-string v6, ""

    .line 294
    .line 295
    move-object v2, p2

    .line 296
    move-object v3, v4

    .line 297
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_b
    const/4 p2, 0x7

    .line 305
    const-string v1, "existsData"

    .line 306
    .line 307
    if-ne p3, p2, :cond_d

    .line 308
    .line 309
    new-instance p2, Landroid/content/Intent;

    .line 310
    .line 311
    iget-object p3, v4, Lda/g;->A:Lda/g;

    .line 312
    .line 313
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;

    .line 314
    .line 315
    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .line 317
    .line 318
    new-instance p3, Landroid/os/Bundle;

    .line 319
    .line 320
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 321
    .line 322
    .line 323
    iget-object v2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 324
    .line 325
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-lez v2, :cond_c

    .line 330
    .line 331
    const/4 p1, 0x1

    .line 332
    :cond_c
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_d
    const/16 p2, 0x8

    .line 343
    .line 344
    if-ne p3, p2, :cond_f

    .line 345
    .line 346
    new-instance p2, Landroid/content/Intent;

    .line 347
    .line 348
    iget-object p3, v4, Lda/g;->A:Lda/g;

    .line 349
    .line 350
    const-class v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatHelp;

    .line 351
    .line 352
    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .line 354
    .line 355
    new-instance p3, Landroid/os/Bundle;

    .line 356
    .line 357
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 358
    .line 359
    .line 360
    iget-object v2, v4, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 361
    .line 362
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-lez v2, :cond_e

    .line 367
    .line 368
    const/4 p1, 0x1

    .line 369
    :cond_e
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    .line 377
    .line 378
    :cond_f
    :goto_3
    return-void

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
