.class public final Lcom/yunpan/appmanage/util/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field public b:Lz7/s;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public b()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "MyInitOften.json"

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 53
    .line 54
    new-instance v4, Ljava/io/FileReader;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    .line 63
    .line 64
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, "\n"

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception v3

    .line 90
    :try_start_5
    const-class v5, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 91
    .line 92
    :try_start_6
    const-string v6, "addSuppressed"

    .line 93
    .line 94
    new-array v7, v1, [Ljava/lang/Class;

    .line 95
    .line 96
    aput-object v5, v7, v0

    .line 97
    .line 98
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-array v6, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v3, v6, v0

    .line 105
    .line 106
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 107
    .line 108
    .line 109
    :catch_1
    :goto_3
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 110
    :catch_2
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 134
    .line 135
    .line 136
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 137
    :catch_3
    new-instance v0, Lz7/s;

    .line 138
    .line 139
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    :goto_5
    iget-object v2, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 146
    .line 147
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 148
    .line 149
    const-string v3, "enabled_accessibility_services"

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_3

    .line 156
    .line 157
    iget-object v1, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 168
    .line 169
    move v1, v0

    .line 170
    goto :goto_6

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 172
    .line 173
    const-string v2, ""

    .line 174
    .line 175
    invoke-virtual {v0, v3, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_6
    if-eqz v1, :cond_4

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/b0;->d()V

    .line 181
    .line 182
    .line 183
    :cond_4
    return-void
.end method

.method public c(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance p1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/yunpan/appmanage/base/AppStart;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "storageUri.json"

    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 55
    .line 56
    new-instance v1, Ljava/io/FileReader;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "\n"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    goto :goto_2

    .line 83
    :catch_2
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    const-string p1, "{}"

    .line 107
    .line 108
    :cond_2
    :try_start_2
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 117
    .line 118
    :catch_3
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/util/b0;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/BufferedWriter;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 14
    .line 15
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/b0;->b:Lz7/s;

    .line 4
    .line 5
    const-string v1, "enabled_accessibility_services"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/b0;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
