.class public abstract Lqa/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z
    .locals 7

    .line 1
    const-wide/16 v5, 0x10

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v3, 0x10

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    invoke-static/range {v0 .. v6}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 15
    .line 16
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p2, p0, v2}, Lr9/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 24
    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 27
    .line 28
    .line 29
    :try_start_3
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_4
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 35
    .line 36
    invoke-direct {v2, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    .line 38
    .line 39
    const/high16 v1, 0x100000

    .line 40
    .line 41
    :try_start_5
    new-array v1, v1, [B

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, -0x1

    .line 48
    if-eq v3, v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    :goto_1
    move-object v1, p1

    .line 59
    goto :goto_7

    .line 60
    :catch_0
    :goto_2
    move-object v1, p1

    .line 61
    goto :goto_8

    .line 62
    :cond_0
    invoke-static {p1, v2, p2, p0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    move-object v2, v1

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-object v2, v1

    .line 71
    goto :goto_2

    .line 72
    :catchall_2
    move-exception v0

    .line 73
    move-object v2, v1

    .line 74
    goto :goto_7

    .line 75
    :catch_2
    move-object v2, v1

    .line 76
    goto :goto_8

    .line 77
    :catchall_3
    move-exception v0

    .line 78
    move-object p2, v1

    .line 79
    :goto_3
    move-object v2, p2

    .line 80
    goto :goto_7

    .line 81
    :catch_3
    move-object p2, v1

    .line 82
    :goto_4
    move-object v2, p2

    .line 83
    goto :goto_8

    .line 84
    :goto_5
    move-object v0, p0

    .line 85
    goto :goto_6

    .line 86
    :catchall_4
    move-exception p0

    .line 87
    goto :goto_5

    .line 88
    :goto_6
    move-object p0, v1

    .line 89
    move-object p2, p0

    .line 90
    goto :goto_3

    .line 91
    :catch_4
    move-object p0, v1

    .line 92
    move-object p2, p0

    .line 93
    goto :goto_4

    .line 94
    :catchall_5
    move-exception v0

    .line 95
    goto :goto_6

    .line 96
    :goto_7
    invoke-static {v1, v2, p2, p0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :goto_8
    invoke-static {v1, v2, p2, p0}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    return v0
.end method

.method public static b(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;
    .locals 8

    .line 1
    const-wide/16 v5, 0x10

    .line 2
    .line 3
    const-wide/16 v1, 0x14

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const-wide/16 v3, 0x10

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    :try_start_0
    invoke-static/range {v0 .. v6}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lr9/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "MKCOL"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p2, p2, Lr9/a;->a:Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lif/a;->M0(Lokhttp3/Response;)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, "/"

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p2, p1, p0}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x1

    .line 94
    iput-boolean p0, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 95
    .line 96
    sget-object p0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 97
    .line 98
    sget-object p0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 101
    .line 102
    new-instance p1, Ljava/util/Date;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iput-object p0, p2, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    return-object p2

    .line 114
    :catch_0
    return-object v7
.end method

.method public static c(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 5
    .line 6
    const-wide/16 v7, 0x10

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const-wide/16 v5, 0x10

    .line 11
    .line 12
    invoke-static/range {v2 .. v8}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, p1, v3}, Lr9/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 29
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 32
    .line 33
    .line 34
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 35
    .line 36
    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    .line 38
    .line 39
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 40
    .line 41
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    const/high16 v1, 0x80000

    .line 45
    .line 46
    :try_start_4
    new-array v1, v1, [B

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, -0x1

    .line 53
    if-eq v5, v6, :cond_1

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-virtual {v4, v1, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 60
    .line 61
    .line 62
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    .line 64
    int-to-long v7, v5

    .line 65
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 66
    .line 67
    .line 68
    iget-boolean v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 69
    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    const-string v0, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :goto_0
    move-object v1, v3

    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :catch_0
    move-exception p0

    .line 80
    :goto_1
    move-object v1, p1

    .line 81
    goto :goto_7

    .line 82
    :cond_1
    :goto_2
    invoke-static {v3, v4, v2, p1}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :catchall_1
    move-exception p0

    .line 88
    move-object v4, v1

    .line 89
    goto :goto_0

    .line 90
    :catch_1
    move-exception p0

    .line 91
    move-object v4, v1

    .line 92
    goto :goto_1

    .line 93
    :catchall_2
    move-exception p0

    .line 94
    move-object v4, v1

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :catch_2
    move-exception p0

    .line 98
    move-object v3, v1

    .line 99
    :goto_3
    move-object v4, v3

    .line 100
    goto :goto_1

    .line 101
    :catchall_3
    move-exception p0

    .line 102
    move-object v2, v1

    .line 103
    :goto_4
    move-object v4, v2

    .line 104
    goto :goto_b

    .line 105
    :catch_3
    move-exception p0

    .line 106
    move-object v2, v1

    .line 107
    move-object v3, v2

    .line 108
    goto :goto_3

    .line 109
    :goto_5
    move-object p1, v1

    .line 110
    move-object v2, p1

    .line 111
    goto :goto_4

    .line 112
    :goto_6
    move-object v2, v1

    .line 113
    move-object v3, v2

    .line 114
    move-object v4, v3

    .line 115
    goto :goto_7

    .line 116
    :catchall_4
    move-exception p0

    .line 117
    goto :goto_5

    .line 118
    :catch_4
    move-exception p0

    .line 119
    goto :goto_6

    .line 120
    :goto_7
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string p1, "No such file or directory"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    const-string p0, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6/\u76ee\u5f55"

    .line 151
    .line 152
    :cond_2
    :goto_8
    move-object v0, p0

    .line 153
    goto :goto_9

    .line 154
    :catchall_5
    move-exception p0

    .line 155
    move-object p1, v1

    .line 156
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_2

    .line 162
    .line 163
    const-string p0, "\u4e0b\u8f7d\u5931\u8d25"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :goto_9
    invoke-static {v3, v4, v2, v1}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 167
    .line 168
    .line 169
    :goto_a
    new-instance p0, Ljava/io/File;

    .line 170
    .line 171
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_4

    .line 179
    .line 180
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, p2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    return-object v0

    .line 188
    :goto_b
    invoke-static {v1, v4, v2, p1}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 189
    .line 190
    .line 191
    goto :goto_d

    .line 192
    :goto_c
    throw p0

    .line 193
    :goto_d
    goto :goto_c
.end method

.method public static d(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v3, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 49
    .line 50
    const-wide/16 v8, 0x10

    .line 51
    .line 52
    const-wide/16 v4, 0x3c

    .line 53
    .line 54
    const-wide/16 v6, 0x10

    .line 55
    .line 56
    invoke-static/range {v3 .. v9}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lr9/a;->c(Ljava/lang/String;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lq9/a;

    .line 81
    .line 82
    iget-object v3, v2, Lq9/a;->b:Lv3/f;

    .line 83
    .line 84
    iget-object v4, v3, Lv3/f;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Ljava/util/Date;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    const-wide/16 v6, 0x0

    .line 93
    .line 94
    cmp-long v8, v4, v6

    .line 95
    .line 96
    if-nez v8, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v4, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 100
    .line 101
    invoke-virtual {v2}, Lq9/a;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v7, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Lq9/a;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v5, :cond_2

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 141
    .line 142
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 143
    .line 144
    if-nez v5, :cond_5

    .line 145
    .line 146
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 147
    .line 148
    const-string v6, "."

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_5

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    iget-object v2, v2, Lq9/a;->b:Lv3/f;

    .line 158
    .line 159
    iget-object v2, v2, Lv3/f;->c:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .line 163
    const-string v5, "httpd/unix-directory"

    .line 164
    .line 165
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iput-boolean v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 170
    .line 171
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 172
    .line 173
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 174
    .line 175
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 176
    .line 177
    iget-object v5, v3, Lv3/f;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v5, Ljava/util/Date;

    .line 180
    .line 181
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iput-object v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 186
    .line 187
    iget-boolean v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 188
    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v3, "/"

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iput-object v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {p0, v4}, Lqa/g;->d(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_2

    .line 217
    .line 218
    return v0

    .line 219
    :cond_6
    iget-object v2, v3, Lv3/f;->d:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v2, Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v2

    .line 227
    iput-wide v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 228
    .line 229
    long-to-double v2, v2

    .line 230
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, v4, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_7
    const/4 p0, 0x1

    .line 244
    return p0

    .line 245
    :catch_0
    return v0
.end method

.method public static e(JLjava/lang/String;Lx9/n5;)Ljava/io/InputStream;
    .locals 7

    .line 1
    const-wide/16 v5, 0x8a2

    .line 2
    .line 3
    const-wide/16 v1, 0xa3c

    .line 4
    .line 5
    const-wide/16 v3, 0xa3c

    .line 6
    .line 7
    move-object v0, p3

    .line 8
    invoke-static/range {v0 .. v6}, Lqa/g;->f(Lx9/n5;JJJ)Lr9/a;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, p0, v0

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "bytes="

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "-"

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Range"

    .line 43
    .line 44
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2, v0}, Lr9/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p3, p2, p0}, Lr9/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static f(Lx9/n5;JJJ)Lr9/a;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p4, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p5, p6, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance p1, Lva/a;

    .line 20
    .line 21
    sget-object p2, Lva/a;->d:Lhh/c;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lva/a;-><init>(Lhh/c;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 27
    .line 28
    .line 29
    sget-object p1, Li9/b;->b:Li9/a;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lcom/burgstaller/okhttp/digest/Credentials;

    .line 40
    .line 41
    iget-object p3, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p0, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p2, p3, p0}, Lcom/burgstaller/okhttp/digest/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;

    .line 49
    .line 50
    invoke-direct {p0, p2}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;-><init>(Lcom/burgstaller/okhttp/digest/Credentials;)V

    .line 51
    .line 52
    .line 53
    new-instance p3, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;

    .line 54
    .line 55
    invoke-direct {p3, p2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;-><init>(Lcom/burgstaller/okhttp/digest/Credentials;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 59
    .line 60
    invoke-direct {p2}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p4, "digest"

    .line 64
    .line 65
    invoke-virtual {p2, p4, p3}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->with(Ljava/lang/String;Lokhttp3/Authenticator;)Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string p3, "basic"

    .line 70
    .line 71
    invoke-virtual {p2, p3, p0}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->with(Ljava/lang/String;Lokhttp3/Authenticator;)Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->build()Lcom/burgstaller/okhttp/DispatchingAuthenticator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p2, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;

    .line 80
    .line 81
    invoke-direct {p2, p0, p1}, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;-><init>(Lokhttp3/Authenticator;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p2, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;

    .line 89
    .line 90
    invoke-direct {p2, p1}, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;-><init>(Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    new-instance p1, Lr9/a;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Lr9/a;-><init>(Lokhttp3/OkHttpClient;)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method

.method public static g(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    .locals 14

    .line 1
    const-string v0, "%23"

    .line 2
    .line 3
    const-string v1, "#"

    .line 4
    .line 5
    const-string v2, "%25"

    .line 6
    .line 7
    const-string v3, "%"

    .line 8
    .line 9
    const-string v4, "\u5df2\u4e3b\u52a8\u505c\u6b62"

    .line 10
    .line 11
    const-string v5, "."

    .line 12
    .line 13
    const-string v6, ""

    .line 14
    .line 15
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v8, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 21
    .line 22
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v8, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 28
    .line 29
    iget-object v8, v8, Lx9/w3;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    new-instance v8, Lokhttp3/OkHttpClient$Builder;

    .line 39
    .line 40
    invoke-direct {v8}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-wide/16 v10, 0x0

    .line 46
    .line 47
    invoke-virtual {v8, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    const-wide/16 v11, 0x10

    .line 52
    .line 53
    invoke-virtual {v10, v11, v12, v9}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {v10, v11, v12, v9}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v10, v11, v12, v9}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .line 63
    .line 64
    :try_start_1
    new-instance v9, Lva/a;

    .line 65
    .line 66
    sget-object v10, Lva/a;->d:Lhh/c;

    .line 67
    .line 68
    invoke-direct {v9, v10}, Lva/a;-><init>(Lhh/c;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v9, v10}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 72
    .line 73
    .line 74
    sget-object v9, Li9/b;->b:Li9/a;

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :try_start_2
    iget-object v9, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 80
    .line 81
    iget-object v9, v9, Lx9/n5;->e:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_0

    .line 88
    .line 89
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-direct {v9}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v10, Lcom/burgstaller/okhttp/digest/Credentials;

    .line 95
    .line 96
    iget-object v11, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 97
    .line 98
    iget-object v12, v11, Lx9/n5;->e:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v11, v11, Lx9/n5;->f:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v10, v12, v11}, Lcom/burgstaller/okhttp/digest/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v11, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;

    .line 106
    .line 107
    invoke-direct {v11, v10}, Lcom/burgstaller/okhttp/basic/BasicAuthenticator;-><init>(Lcom/burgstaller/okhttp/digest/Credentials;)V

    .line 108
    .line 109
    .line 110
    new-instance v12, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;

    .line 111
    .line 112
    invoke-direct {v12, v10}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;-><init>(Lcom/burgstaller/okhttp/digest/Credentials;)V

    .line 113
    .line 114
    .line 115
    new-instance v10, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 116
    .line 117
    invoke-direct {v10}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v13, "digest"

    .line 121
    .line 122
    invoke-virtual {v10, v13, v12}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->with(Ljava/lang/String;Lokhttp3/Authenticator;)Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const-string v12, "basic"

    .line 127
    .line 128
    invoke-virtual {v10, v12, v11}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->with(Ljava/lang/String;Lokhttp3/Authenticator;)Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v10}, Lcom/burgstaller/okhttp/DispatchingAuthenticator$Builder;->build()Lcom/burgstaller/okhttp/DispatchingAuthenticator;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    new-instance v11, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;

    .line 137
    .line 138
    invoke-direct {v11, v10, v9}, Lcom/burgstaller/okhttp/CachingAuthenticatorDecorator;-><init>(Lokhttp3/Authenticator;Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v11}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 142
    .line 143
    .line 144
    new-instance v10, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;

    .line 145
    .line 146
    invoke-direct {v10, v9}, Lcom/burgstaller/okhttp/AuthenticationCacheInterceptor;-><init>(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v10}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_1
    nop

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 157
    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 158
    .line 159
    .line 160
    new-instance v10, Lj9/a;

    .line 161
    .line 162
    const-string v11, "webdav"

    .line 163
    .line 164
    invoke-direct {v10, v11}, Lj9/a;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v11, 0x2

    .line 168
    invoke-virtual {v10, v11}, Lj9/a;->d(I)V

    .line 169
    .line 170
    .line 171
    sget-object v11, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 172
    .line 173
    iput-object v11, v10, Lj9/a;->b:Ljava/util/logging/Level;

    .line 174
    .line 175
    invoke-virtual {v8, v10}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 176
    .line 177
    .line 178
    iget-object v10, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 179
    .line 180
    iget-object v10, v10, Lx9/w3;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    const/4 v11, 0x1

    .line 187
    if-eqz v10, :cond_1

    .line 188
    .line 189
    iget-object v10, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 190
    .line 191
    iget-object v10, v10, Lx9/w3;->a:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v10, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    add-int/2addr v5, v11

    .line 198
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    goto :goto_1

    .line 203
    :cond_1
    move-object v5, v6

    .line 204
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-nez v10, :cond_2

    .line 209
    .line 210
    invoke-static {}, Lcom/yunpan/appmanage/util/y;->a()Ljava/util/HashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_2

    .line 223
    .line 224
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Ljava/lang/String;

    .line 229
    .line 230
    :cond_2
    new-instance v5, Lja/i;

    .line 231
    .line 232
    const-string v10, "application/octet-stream"

    .line 233
    .line 234
    invoke-static {v10}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    new-instance v12, Ljava/io/File;

    .line 239
    .line 240
    iget-object v13, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 241
    .line 242
    iget-object v13, v13, Lx9/w3;->b:Ljava/lang/String;

    .line 243
    .line 244
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v10, v12}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    new-instance v12, Lma/b;

    .line 252
    .line 253
    const/4 v13, 0x3

    .line 254
    invoke-direct {v12, p0, v13, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v5, p0, v10, v12}, Lja/i;-><init>(Lcom/yunpan/appmanage/bean/WpTaskBean;Lokhttp3/RequestBody;Lma/b;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Lokhttp3/Request$Builder;

    .line 261
    .line 262
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    .line 264
    .line 265
    :try_start_3
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 273
    goto :goto_2

    .line 274
    :catch_2
    move-object v10, v7

    .line 275
    :goto_2
    :try_start_4
    invoke-virtual {p1, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1, v5}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-boolean v9, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 288
    .line 289
    const/4 v5, -0x1

    .line 290
    iput v5, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 291
    .line 292
    invoke-virtual {v8}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    iget-object v8, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 297
    .line 298
    iget-object v8, v8, Lx9/n5;->e:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 304
    if-nez v8, :cond_3

    .line 305
    .line 306
    :try_start_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 307
    .line 308
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    new-instance v8, Lokhttp3/Request$Builder;

    .line 312
    .line 313
    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 314
    .line 315
    .line 316
    :try_start_6
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 324
    :catch_3
    :try_start_7
    invoke-virtual {v8, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v1, "OPTIONS"

    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :catch_4
    move-exception v0

    .line 355
    :try_start_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :cond_3
    :goto_3
    invoke-virtual {v5, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 364
    .line 365
    .line 366
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 367
    :try_start_9
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 368
    .line 369
    .line 370
    iput v9, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :catch_5
    move-exception p1

    .line 374
    :try_start_a
    iput v11, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    .line 378
    .line 379
    :goto_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    iget-boolean p1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 385
    .line 386
    if-nez p1, :cond_5

    .line 387
    .line 388
    iget p1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 389
    .line 390
    if-nez p1, :cond_4

    .line 391
    .line 392
    iput-object v6, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 393
    .line 394
    const-string p1, "\u4e0a\u4f20\u5b8c\u6210"

    .line 395
    .line 396
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    .line 400
    .line 401
    const-string v0, "\u5931\u8d25\uff1a\u4e0a\u4f20\u51fa\u9519"

    .line 402
    .line 403
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw p1

    .line 407
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    .line 408
    .line 409
    invoke-direct {p1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 413
    :goto_5
    iput-object v6, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 414
    .line 415
    iget-boolean p1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 416
    .line 417
    if-eqz p1, :cond_6

    .line 418
    .line 419
    iput-object v4, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_6
    const-string p1, "\u4e0a\u4f20\u5931\u8d25"

    .line 423
    .line 424
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 425
    .line 426
    :goto_6
    return-void
.end method
