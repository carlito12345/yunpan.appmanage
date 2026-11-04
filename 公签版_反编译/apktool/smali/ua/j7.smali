.class public final synthetic Lua/j7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/j7;->a:Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->I:I

    .line 4
    .line 5
    iget-object v2, p0, Lua/j7;->a:Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    const-string v6, "/Download/"

    .line 20
    .line 21
    invoke-static {v5, v4, v6}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "flyme1.8.txt"

    .line 26
    .line 27
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    .line 31
    .line 32
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 33
    .line 34
    new-instance v6, Ljava/io/FileOutputStream;

    .line 35
    .line 36
    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_0
    :try_start_1
    iget-object v6, v2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 49
    .line 50
    invoke-virtual {v6}, Lc6/g;->b()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-ge v5, v6, :cond_0

    .line 55
    .line 56
    iget-object v6, v2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 57
    .line 58
    invoke-virtual {v6, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 63
    .line 64
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v7, "  "

    .line 70
    .line 71
    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 80
    .line 81
    .line 82
    add-int/2addr v5, v0

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v2

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 87
    .line 88
    .line 89
    const-string v2, "\u4fdd\u5b58\u6210\u529f"

    .line 90
    .line 91
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v3

    .line 114
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    .line 116
    :try_start_5
    const-string v5, "addSuppressed"

    .line 117
    .line 118
    new-array v6, v0, [Ljava/lang/Class;

    .line 119
    .line 120
    aput-object v4, v6, v1

    .line 121
    .line 122
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v3, v0, v1

    .line 129
    .line 130
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    .line 132
    .line 133
    :catch_0
    :goto_2
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 134
    :catch_1
    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    .line 135
    .line 136
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 12

    .line 1
    const/4 p1, 0x1

    .line 2
    sget p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->I:I

    .line 3
    .line 4
    iget-object p2, p0, Lua/j7;->a:Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x3

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne p3, p1, :cond_6

    .line 16
    .line 17
    iget-object p3, p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->G:Lcom/yunpan/appmanage/carsdk/x;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/x;->f()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_5

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/yunpan/appmanage/carsdk/w;

    .line 58
    .line 59
    iget v7, v6, Lcom/yunpan/appmanage/carsdk/w;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    if-nez v7, :cond_1

    .line 62
    .line 63
    add-int/2addr v4, p1

    .line 64
    :cond_1
    iget v7, v6, Lcom/yunpan/appmanage/carsdk/w;->b:I

    .line 65
    .line 66
    if-eq v7, v1, :cond_2

    .line 67
    .line 68
    if-ne v7, v0, :cond_3

    .line 69
    .line 70
    :cond_2
    add-int/2addr v5, p1

    .line 71
    :cond_3
    :try_start_1
    new-instance v8, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 72
    .line 73
    iget v9, v6, Lcom/yunpan/appmanage/carsdk/w;->a:I

    .line 74
    .line 75
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v11, "access="

    .line 85
    .line 86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v7, ", areaIds="

    .line 93
    .line 94
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v7, v6, Lcom/yunpan/appmanage/carsdk/w;->c:Ljava/util/List;

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string v7, "null"

    .line 107
    .line 108
    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v7, ", changeMode="

    .line 112
    .line 113
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v7, v6, Lcom/yunpan/appmanage/carsdk/w;->d:I

    .line 117
    .line 118
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v7, ", areaType="

    .line 122
    .line 123
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget v6, v6, Lcom/yunpan/appmanage/carsdk/w;->e:I

    .line 127
    .line 128
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-direct {v8, v9, v6}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 143
    .line 144
    invoke-virtual {p1, p3}, Lc6/g;->E(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string p2, "\u5168\u90e8\u5c5e\u6027\uff1a"

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p2, "\n\u53ef\u76d1\u542c\u5c5e\u6027\uff1a"

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p2, "\n\u53ef\u5199\u5c5e\u6027\uff1a"

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_0
    const-string p1, "\u8bfb\u53d6\u5c5e\u6027\u5931\u8d25"

    .line 189
    .line 190
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    if-ne p3, v1, :cond_7

    .line 195
    .line 196
    iget-object p1, p2, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 197
    .line 198
    new-instance p2, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p2}, Lc6/g;->E(Ljava/util/List;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    if-ne p3, v0, :cond_8

    .line 208
    .line 209
    invoke-virtual {p2}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->y()V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    const/4 p1, 0x4

    .line 214
    if-ne p3, p1, :cond_9

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->y()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    :goto_2
    return-void
.end method
