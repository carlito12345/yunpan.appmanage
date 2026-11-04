.class public final synthetic Lha/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/n6;


# direct methods
.method public synthetic constructor <init>(Lha/n6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/l6;->a:I

    iput-object p1, p0, Lha/l6;->b:Lha/n6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget v0, p0, Lha/l6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/l6;->b:Lha/n6;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, v0, Lha/n6;->h:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v1, "\u505c\u6b62\u76d1\u542c"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, v0, Lha/n6;->j:Lx9/b3;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, v0, Lha/n6;->k:Lg0/e;

    .line 32
    .line 33
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v2, Lfa/c0;

    .line 41
    .line 42
    invoke-direct {v2, p2, v1, p1}, Lfa/c0;-><init>(Lg0/e;ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lmc/c;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p1, p2, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Lha/p0;

    .line 66
    .line 67
    const/16 v1, 0xb

    .line 68
    .line 69
    invoke-direct {p2, v1, v0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lha/l6;->b:Lha/n6;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 90
    .line 91
    new-instance v2, Lv8/a;

    .line 92
    .line 93
    invoke-direct {v2, v1}, Lv8/a;-><init>(Lcom/yunpan/appmanage/base/AppStart;)V

    .line 94
    .line 95
    .line 96
    const v1, 0x7f0e0212

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lv8/a;->j(I)V

    .line 100
    .line 101
    .line 102
    const-string v1, "Logcat"

    .line 103
    .line 104
    iput-object v1, v2, Lv8/a;->h:Ljava/lang/String;

    .line 105
    .line 106
    const/16 v1, 0x100

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lv8/a;->a(I)V

    .line 109
    .line 110
    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    const/16 v3, 0x1c

    .line 114
    .line 115
    if-lt v1, v3, :cond_2

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 v1, 0x0

    .line 120
    :goto_1
    invoke-virtual {v2, v1}, Lv8/a;->l(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lw8/b;

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-direct {v1, v3}, Lw8/b;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lv8/a;->q(Lw8/b;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lv8/a;->p()V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lcom/hjq/permissions/b;

    .line 136
    .line 137
    const/4 v3, 0x2

    .line 138
    invoke-direct {v1, v0, p2, p1, v3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    const p1, 0x7f0b03d2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1, v1}, Lv8/a;->m(ILv8/c;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lv8/a;->d()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lha/l6;->b:Lha/n6;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v3, "\u4fdd\u5b58\u5931\u8d25"

    .line 9
    .line 10
    const-string v4, "addSuppressed"

    .line 11
    .line 12
    const-class v5, Ljava/lang/Throwable;

    .line 13
    .line 14
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const-string v7, "MM\u6708dd\u65e5HH\u65f6mm\u5206ss\u79d2"

    .line 17
    .line 18
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 22
    .line 23
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const-string v9, ".log"

    .line 32
    .line 33
    const-string v10, "\u65e5\u5fd7_"

    .line 34
    .line 35
    const-string v11, "/Download"

    .line 36
    .line 37
    if-nez v8, :cond_0

    .line 38
    .line 39
    new-instance v8, Ljava/io/File;

    .line 40
    .line 41
    new-instance v12, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v7, v12, v11}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-instance v12, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v13, Ljava/util/Date;

    .line 56
    .line 57
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    invoke-direct {v8, v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v7, "\u4fdd\u5b58\u6210\u529f\uff01\u5728Download\u76ee\u5f55\u5185"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v8, 0x0

    .line 81
    const-string v7, "\u5bfc\u51fa\u6210\u529f"

    .line 82
    .line 83
    :goto_0
    if-nez v8, :cond_1

    .line 84
    .line 85
    sget-object v12, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 86
    .line 87
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 88
    .line 89
    iget-object v13, v12, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-nez v13, :cond_1

    .line 96
    .line 97
    new-instance v8, Ljava/io/File;

    .line 98
    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v12, v11, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v10, Ljava/util/Date;

    .line 126
    .line 127
    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-direct {v8, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v7, "\u4fdd\u5b58\u6210\u529f\uff01\u5728U\u76d8Download\u76ee\u5f55\u5185"

    .line 148
    .line 149
    :cond_1
    if-nez v8, :cond_2

    .line 150
    .line 151
    const-string v0, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u4fdd\u5b58"

    .line 152
    .line 153
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Ljava/lang/Exception;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 171
    .line 172
    .line 173
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    .line 174
    .line 175
    invoke-direct {v6, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    .line 177
    .line 178
    :try_start_2
    new-instance v9, Ljava/io/BufferedWriter;

    .line 179
    .line 180
    invoke-direct {v9, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    :goto_1
    :try_start_3
    iget-object v11, v2, Lha/n6;->j:Lx9/b3;

    .line 185
    .line 186
    invoke-virtual {v11}, Lc6/g;->b()I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-ge v10, v11, :cond_3

    .line 191
    .line 192
    iget-object v11, v2, Lha/n6;->j:Lx9/b3;

    .line 193
    .line 194
    invoke-virtual {v11, v10}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    check-cast v11, Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v9, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .line 205
    .line 206
    add-int/2addr v10, v0

    .line 207
    goto :goto_1

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    goto :goto_2

    .line 210
    :cond_3
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    .line 212
    .line 213
    :try_start_5
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v7, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catchall_1
    move-exception v2

    .line 235
    goto :goto_4

    .line 236
    :goto_2
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :catchall_2
    move-exception v7

    .line 241
    :try_start_7
    new-array v8, v0, [Ljava/lang/Class;

    .line 242
    .line 243
    aput-object v5, v8, v1

    .line 244
    .line 245
    invoke-virtual {v5, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    new-array v9, v0, [Ljava/lang/Object;

    .line 250
    .line 251
    aput-object v7, v9, v1

    .line 252
    .line 253
    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 254
    .line 255
    .line 256
    :catch_0
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 257
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :catchall_3
    move-exception v6

    .line 262
    :try_start_a
    new-array v7, v0, [Ljava/lang/Class;

    .line 263
    .line 264
    aput-object v5, v7, v1

    .line 265
    .line 266
    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    new-array v0, v0, [Ljava/lang/Object;

    .line 271
    .line 272
    aput-object v6, v0, v1

    .line 273
    .line 274
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 275
    .line 276
    .line 277
    :catch_1
    :goto_5
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 278
    :catch_2
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Ljava/lang/Exception;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :catch_3
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Ljava/lang/Exception;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    :goto_6
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lha/l6;->b:Lha/n6;

    .line 2
    .line 3
    iget-object p2, p1, Lha/n6;->j:Lx9/b3;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object p3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 16
    .line 17
    iget-boolean p3, p3, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const-string v1, "\u6b64\u6761\u65e5\u5fd7\u4e0d\u7b26\u5408"

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    if-eq p3, v0, :cond_1

    .line 31
    .line 32
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/16 v0, 0x2f

    .line 41
    .line 42
    if-eq p3, v0, :cond_1

    .line 43
    .line 44
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p3, ":"

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    const/4 v0, -0x1

    .line 55
    if-ne p3, v0, :cond_2

    .line 56
    .line 57
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p3, p1, Lha/n6;->g:Lea/g;

    .line 62
    .line 63
    invoke-interface {p3, p2}, Lea/g;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lha/n6;->dismiss()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method
