.class public Lcom/yunpan/appmanage/httpserver/RemoteServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private getRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;",
            ">;"
        }
    .end annotation
.end field

.field private isStarted:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->isStarted:Z

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-string p1, "RemoteServer"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lkh/e;->e(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object p2, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->initGetRequest()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private addFileToJson(Lz7/o;Lx9/w3;)V
    .locals 5

    .line 1
    new-instance v0, Lz7/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "name"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "/"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, ""

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "path"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v1, p2, Lx9/w3;->g:J

    .line 50
    .line 51
    const-string v4, "yyyy/MM/dd aHH:mm:ss"

    .line 52
    .line 53
    invoke-virtual {p0, v1, v2, v4}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->fileTime(JLjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "time"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p2, Lx9/w3;->c:Z

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "dir"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p2, Lx9/w3;->c:Z

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v2, p2, Lx9/w3;->d:J

    .line 84
    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :goto_0
    const-string p2, "size"

    .line 93
    .line 94
    invoke-virtual {v0, p2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lz7/o;->k(Lz7/p;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private copyRawToBd(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 12
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 15
    .line 16
    .line 17
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_3
    new-instance p2, Ljava/io/BufferedOutputStream;

    .line 23
    .line 24
    invoke-direct {p2, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    .line 26
    .line 27
    const/high16 v0, 0x80000

    .line 28
    .line 29
    :try_start_4
    new-array v0, v0, [B

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_6

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_4

    .line 50
    :cond_0
    :goto_1
    invoke-static {v1, p2, v2, p1}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :catchall_1
    move-exception p2

    .line 55
    move-object v5, v0

    .line 56
    move-object v0, p2

    .line 57
    move-object p2, v5

    .line 58
    goto :goto_6

    .line 59
    :catch_1
    move-exception p2

    .line 60
    move-object v5, v0

    .line 61
    move-object v0, p2

    .line 62
    move-object p2, v5

    .line 63
    goto :goto_4

    .line 64
    :catchall_2
    move-exception p2

    .line 65
    move-object v2, v0

    .line 66
    :goto_2
    move-object v0, p2

    .line 67
    move-object p2, v2

    .line 68
    goto :goto_6

    .line 69
    :catch_2
    move-exception p2

    .line 70
    move-object v2, v0

    .line 71
    :goto_3
    move-object v0, p2

    .line 72
    move-object p2, v2

    .line 73
    goto :goto_4

    .line 74
    :catchall_3
    move-exception p2

    .line 75
    move-object v1, v0

    .line 76
    move-object v2, v1

    .line 77
    goto :goto_2

    .line 78
    :catch_3
    move-exception p2

    .line 79
    move-object v1, v0

    .line 80
    move-object v2, v1

    .line 81
    goto :goto_3

    .line 82
    :catchall_4
    move-exception p1

    .line 83
    move-object p2, v0

    .line 84
    move-object v1, p2

    .line 85
    move-object v2, v1

    .line 86
    move-object v0, p1

    .line 87
    move-object p1, v2

    .line 88
    goto :goto_6

    .line 89
    :catch_4
    move-exception p1

    .line 90
    move-object p2, v0

    .line 91
    move-object v1, p2

    .line 92
    move-object v2, v1

    .line 93
    move-object v0, p1

    .line 94
    move-object p1, v2

    .line 95
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_5
    return-void

    .line 100
    :goto_6
    invoke-static {v1, p2, v2, p1}, Landroid/support/v4/media/session/a;->z(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    goto :goto_8

    .line 104
    :goto_7
    throw v0

    .line 105
    :goto_8
    goto :goto_7
.end method

.method public static createJSONResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 1
    const-string v0, "text/plain"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private initGetRequest()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "/raw/"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 47
    .line 48
    const-string v4, "index.html"

    .line 49
    .line 50
    invoke-static {v1, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "/"

    .line 55
    .line 56
    const-string v7, "text/html"

    .line 57
    .line 58
    invoke-direct {v3, v6, v5, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 67
    .line 68
    invoke-static {v1, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v6, "/index.html"

    .line 73
    .line 74
    invoke-direct {v3, v6, v5, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 83
    .line 84
    const-string v5, "url.html"

    .line 85
    .line 86
    invoke-static {v1, v5}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v8, "/url.html"

    .line 91
    .line 92
    invoke-direct {v3, v8, v6, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 99
    .line 100
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 101
    .line 102
    invoke-static {v1, v5}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v8, "/url"

    .line 107
    .line 108
    invoke-direct {v3, v8, v6, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 115
    .line 116
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 117
    .line 118
    const-string v6, "input.html"

    .line 119
    .line 120
    invoke-static {v1, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    const-string v9, "/input.html"

    .line 125
    .line 126
    invoke-direct {v3, v9, v8, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 135
    .line 136
    const-string v8, "cmd.html"

    .line 137
    .line 138
    invoke-static {v1, v8}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const-string v10, "/cmd.html"

    .line 143
    .line 144
    invoke-direct {v3, v10, v9, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 153
    .line 154
    invoke-static {v1, v8}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const-string v10, "/cmd"

    .line 159
    .line 160
    invoke-direct {v3, v10, v9, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 167
    .line 168
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 169
    .line 170
    const-string v9, "xxx.html"

    .line 171
    .line 172
    invoke-static {v1, v9}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    const-string v11, "/xxx.html"

    .line 177
    .line 178
    invoke-direct {v3, v11, v10, v7}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 185
    .line 186
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 187
    .line 188
    const-string v7, "style.css"

    .line 189
    .line 190
    invoke-static {v1, v7}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    const-string v11, "/style.css"

    .line 195
    .line 196
    const-string v12, "text/css"

    .line 197
    .line 198
    invoke-direct {v3, v11, v10, v12}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 205
    .line 206
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 207
    .line 208
    const-string v10, "ui.css"

    .line 209
    .line 210
    invoke-static {v1, v10}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    const-string v13, "/ui.css"

    .line 215
    .line 216
    invoke-direct {v3, v13, v11, v12}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 223
    .line 224
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 225
    .line 226
    const-string v11, "jquery.js"

    .line 227
    .line 228
    invoke-static {v1, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    const-string v13, "/jquery.js"

    .line 233
    .line 234
    const-string v14, "application/x-javascript"

    .line 235
    .line 236
    invoke-direct {v3, v13, v12, v14}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 243
    .line 244
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 245
    .line 246
    const-string v12, "script.js"

    .line 247
    .line 248
    invoke-static {v1, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    const-string v15, "/script.js"

    .line 253
    .line 254
    invoke-direct {v3, v15, v13, v14}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 261
    .line 262
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 263
    .line 264
    const-string v13, "favicon.ico"

    .line 265
    .line 266
    invoke-static {v1, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    const-string v15, "image/x-icon"

    .line 271
    .line 272
    move-object/from16 v16, v13

    .line 273
    .line 274
    const-string v13, "/favicon.ico"

    .line 275
    .line 276
    invoke-direct {v3, v13, v14, v15}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 283
    .line 284
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 285
    .line 286
    const-string v13, "apk.png"

    .line 287
    .line 288
    invoke-static {v1, v13}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    const-string v15, "/apk.png"

    .line 293
    .line 294
    move-object/from16 v17, v13

    .line 295
    .line 296
    const-string v13, "image/*"

    .line 297
    .line 298
    invoke-direct {v3, v15, v14, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 305
    .line 306
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 307
    .line 308
    const-string v14, "zip.png"

    .line 309
    .line 310
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    move-object/from16 v18, v14

    .line 315
    .line 316
    const-string v14, "/zip.png"

    .line 317
    .line 318
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 325
    .line 326
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 327
    .line 328
    const-string v14, "tp.png"

    .line 329
    .line 330
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    move-object/from16 v19, v14

    .line 335
    .line 336
    const-string v14, "/tp.png"

    .line 337
    .line 338
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 345
    .line 346
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 347
    .line 348
    const-string v14, "sp.png"

    .line 349
    .line 350
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    move-object/from16 v20, v14

    .line 355
    .line 356
    const-string v14, "/sp.png"

    .line 357
    .line 358
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 365
    .line 366
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 367
    .line 368
    const-string v14, "mp3.png"

    .line 369
    .line 370
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    move-object/from16 v21, v14

    .line 375
    .line 376
    const-string v14, "/mp3.png"

    .line 377
    .line 378
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 385
    .line 386
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 387
    .line 388
    const-string v14, "json.png"

    .line 389
    .line 390
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v15

    .line 394
    move-object/from16 v22, v14

    .line 395
    .line 396
    const-string v14, "/json.png"

    .line 397
    .line 398
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 405
    .line 406
    new-instance v3, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 407
    .line 408
    const-string v14, "return1.png"

    .line 409
    .line 410
    invoke-static {v1, v14}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    move-object/from16 v23, v14

    .line 415
    .line 416
    const-string v14, "/return1.png"

    .line 417
    .line 418
    invoke-direct {v3, v14, v15, v13}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-nez v3, :cond_1

    .line 444
    .line 445
    const v3, 0x7f120005

    .line 446
    .line 447
    .line 448
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 449
    .line 450
    .line 451
    :cond_1
    invoke-static {v1, v5}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-nez v3, :cond_2

    .line 460
    .line 461
    const v3, 0x7f12002a

    .line 462
    .line 463
    .line 464
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    :cond_2
    invoke-static {v1, v8}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    const v3, 0x7f120001

    .line 472
    .line 473
    .line 474
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-static {v1, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    const v3, 0x7f120006

    .line 482
    .line 483
    .line 484
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v1, v9}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-nez v3, :cond_3

    .line 496
    .line 497
    const v3, 0x7f12002c

    .line 498
    .line 499
    .line 500
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_3
    invoke-static {v1, v7}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    if-nez v3, :cond_4

    .line 512
    .line 513
    const v3, 0x7f12001f

    .line 514
    .line 515
    .line 516
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_4
    invoke-static {v1, v10}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-nez v3, :cond_5

    .line 528
    .line 529
    const v3, 0x7f120028

    .line 530
    .line 531
    .line 532
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    :cond_5
    invoke-static {v1, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-nez v3, :cond_6

    .line 544
    .line 545
    const v3, 0x7f12000c

    .line 546
    .line 547
    .line 548
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :cond_6
    invoke-static {v1, v12}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    const v3, 0x7f12001c

    .line 556
    .line 557
    .line 558
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v2, v16

    .line 562
    .line 563
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-nez v3, :cond_7

    .line 572
    .line 573
    const v3, 0x7f120002

    .line 574
    .line 575
    .line 576
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    :cond_7
    move-object/from16 v2, v17

    .line 580
    .line 581
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    if-nez v3, :cond_8

    .line 590
    .line 591
    const/high16 v3, 0x7f120000

    .line 592
    .line 593
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 594
    .line 595
    .line 596
    :cond_8
    move-object/from16 v2, v18

    .line 597
    .line 598
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-nez v3, :cond_9

    .line 607
    .line 608
    const v3, 0x7f12002d

    .line 609
    .line 610
    .line 611
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    :cond_9
    move-object/from16 v2, v19

    .line 615
    .line 616
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    if-nez v3, :cond_a

    .line 625
    .line 626
    const v3, 0x7f120027

    .line 627
    .line 628
    .line 629
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    :cond_a
    move-object/from16 v2, v20

    .line 633
    .line 634
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-nez v3, :cond_b

    .line 643
    .line 644
    const v3, 0x7f12001e

    .line 645
    .line 646
    .line 647
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 648
    .line 649
    .line 650
    :cond_b
    move-object/from16 v2, v21

    .line 651
    .line 652
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-nez v3, :cond_c

    .line 661
    .line 662
    const v3, 0x7f120013

    .line 663
    .line 664
    .line 665
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 666
    .line 667
    .line 668
    :cond_c
    move-object/from16 v2, v22

    .line 669
    .line 670
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-nez v3, :cond_d

    .line 679
    .line 680
    const v3, 0x7f12000d

    .line 681
    .line 682
    .line 683
    invoke-direct {v0, v3, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 684
    .line 685
    .line 686
    :cond_d
    move-object/from16 v2, v23

    .line 687
    .line 688
    invoke-static {v1, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    if-nez v2, :cond_e

    .line 697
    .line 698
    const v2, 0x7f12001b

    .line 699
    .line 700
    .line 701
    invoke-direct {v0, v2, v1}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->copyRawToBd(ILjava/lang/String;)V

    .line 702
    .line 703
    .line 704
    :cond_e
    return-void
.end method

.method private parseFile(Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 157
    iget-object v3, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    array-length v4, v3

    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 158
    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iput-boolean v6, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    const/16 v3, 0x32

    if-ge v4, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 160
    iget-boolean v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    const/16 v8, 0xa

    if-eqz v7, :cond_1

    .line 161
    aget-byte v7, v5, v3

    const/16 v9, 0xd

    if-ne v7, v9, :cond_2

    add-int/lit8 v7, v4, -0x3

    if-ge v3, v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 162
    aget-byte v7, v5, v7

    if-ne v7, v8, :cond_2

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v5, v7

    if-ne v7, v9, :cond_2

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, v5, v7

    if-ne v7, v8, :cond_2

    .line 163
    iput-boolean v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 164
    :cond_1
    aget-byte v7, v5, v3

    if-ne v7, v8, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 165
    aget-byte v7, v5, v7

    if-ne v7, v8, :cond_2

    .line 166
    iput-boolean v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 167
    :goto_1
    iget-boolean v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x0

    .line 168
    iput-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    .line 169
    new-array v7, v3, [B

    .line 170
    invoke-static {v5, v6, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 172
    const-string v7, "filename=\""

    const-string v9, "\""

    invoke-static {v8, v7, v9, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 173
    const-string v7, "name=\"files-"

    invoke-static {v8, v7, v9, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 174
    iget-boolean v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    const-string v9, "\n"

    const-string v10, "\r\n"

    if-eqz v7, :cond_5

    move-object v7, v10

    goto :goto_2

    :cond_5
    move-object v7, v9

    :goto_2
    const-string v11, "Content-Type:"

    invoke-static {v8, v11, v7, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    .line 175
    const-string v7, "Content-Length:"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-wide v11, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    const-wide/16 v13, 0xa

    cmp-long v15, v11, v13

    if-gez v15, :cond_7

    .line 176
    iget-boolean v11, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v11, :cond_6

    move-object v9, v10

    :cond_6
    invoke-static {v8, v7, v9, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 177
    :cond_7
    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    iget-wide v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_d

    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 179
    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "\u5b89\u88c5"

    const-string v9, "/"

    if-eqz v7, :cond_8

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 181
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 182
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_3

    .line 183
    :cond_8
    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 185
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 186
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_3

    .line 187
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 188
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 189
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    .line 190
    :goto_3
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    sub-int/2addr v4, v3

    int-to-long v9, v4

    .line 191
    iget-wide v11, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v13, v9, v11

    if-ltz v13, :cond_b

    long-to-int v12, v11

    .line 192
    invoke-virtual {v7, v5, v3, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 194
    iput-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    .line 195
    iput-boolean v6, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    .line 196
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v2

    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 197
    iget-object v2, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 198
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v2

    new-instance v7, Lja/a;

    iget-object v8, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Lja/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Lkh/e;->f(Ljava/lang/Object;)V

    goto :goto_4

    .line 199
    :cond_a
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v1

    new-instance v2, Lja/c;

    iget-object v7, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Lja/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 200
    :goto_4
    iget-wide v1, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v7, v9, v1

    if-lez v7, :cond_c

    long-to-int v2, v1

    sub-int/2addr v4, v2

    .line 201
    new-array v1, v4, [B

    iput-object v1, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    add-int/2addr v3, v2

    .line 202
    invoke-static {v5, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->parseFile(Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;)V

    goto :goto_5

    .line 204
    :cond_b
    iput-wide v9, v0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    .line 205
    invoke-virtual {v7, v5, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_c
    :goto_5
    return-void

    .line 206
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u6790\u6587\u4ef6\u51fa\u9519"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private parseFile(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, -0x1

    .line 1
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v7, "content-length"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$ContentType;

    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v9

    const-string v10, "content-type"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v5, v9}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;-><init>(Lcom/yunpan/appmanage/httpserver/RemoteServer;I)V

    const/high16 v11, 0x80000

    .line 7
    :try_start_0
    new-array v11, v11, [B

    .line 8
    :goto_0
    invoke-virtual {v6, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    iput v12, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    if-eq v12, v2, :cond_28

    .line 9
    iget-wide v13, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->alreadyReadSize:J

    int-to-long v2, v12

    add-long/2addr v13, v2

    iput-wide v13, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->alreadyReadSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0xa

    .line 10
    const-string v15, "Content-Type:"

    const-string v0, "name=\"files-"

    const-string v4, "filename=\""

    const-string v10, "Content-Length:"

    const-string v22, "\n"

    move-object/from16 v23, v6

    const-string v6, "\""

    move-wide/from16 v24, v7

    const-string v7, "\u89e3\u6790\u6570\u636e\u51fa\u9519"

    const-string v8, "\u5b89\u88c5"

    move/from16 v27, v12

    const-string v12, "\r\n"

    move-object/from16 v28, v7

    const-string v7, "/"

    cmp-long v29, v13, v2

    if-nez v29, :cond_13

    const/16 v2, 0x64

    .line 11
    :try_start_1
    new-array v3, v2, [B

    const/4 v13, 0x0

    .line 12
    invoke-static {v11, v13, v3, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v1

    goto/16 :goto_1b

    :cond_0
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 17
    :goto_2
    iget v14, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v3, v14, :cond_7

    move-object/from16 v29, v5

    .line 18
    :try_start_2
    iget-boolean v5, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v5, :cond_4

    .line 19
    aget-byte v5, v11, v3

    const/16 v1, 0xd

    if-ne v5, v1, :cond_3

    add-int/lit8 v14, v14, -0x3

    if-ge v3, v14, :cond_3

    const/4 v5, 0x1

    add-int/lit8 v14, v3, 0x1

    .line 20
    aget-byte v5, v11, v14

    const/16 v14, 0xa

    if-ne v5, v14, :cond_3

    const/4 v5, 0x2

    add-int/lit8 v20, v3, 0x2

    aget-byte v5, v11, v20

    if-ne v5, v1, :cond_3

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v11, v1

    if-ne v1, v14, :cond_3

    add-int/lit8 v1, v13, 0xa

    if-ge v3, v1, :cond_1

    :goto_3
    goto :goto_4

    :cond_1
    const/4 v1, -0x1

    add-int/2addr v2, v1

    if-nez v2, :cond_2

    const/4 v5, 0x1

    .line 21
    iput-boolean v5, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    add-int/lit8 v2, v3, 0x4

    const/4 v1, -0x1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    goto/16 :goto_1b

    :cond_2
    move v13, v3

    :cond_3
    :goto_4
    const/4 v1, -0x1

    const/4 v5, 0x1

    goto :goto_5

    .line 22
    :cond_4
    aget-byte v5, v11, v3

    const/16 v1, 0xa

    if-ne v5, v1, :cond_3

    const/4 v5, 0x1

    sub-int/2addr v14, v5

    if-ge v3, v14, :cond_3

    add-int/lit8 v14, v3, 0x1

    .line 23
    aget-byte v14, v11, v14

    if-ne v14, v1, :cond_3

    add-int/lit8 v14, v13, 0xa

    if-ge v3, v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    add-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 24
    iput-boolean v5, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    const/4 v2, 0x2

    add-int/2addr v3, v2

    move v2, v3

    goto :goto_6

    :cond_6
    move v13, v3

    :goto_5
    add-int/2addr v3, v5

    move-object/from16 v1, p0

    move-object/from16 v5, v29

    goto :goto_2

    :cond_7
    move-object/from16 v29, v5

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 25
    :goto_6
    iget-boolean v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    if-eqz v3, :cond_12

    .line 26
    new-array v3, v2, [B

    const/4 v5, 0x0

    .line 27
    invoke-static {v11, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    .line 29
    const-string v3, "\r\n\r\n"

    invoke-static {v13, v3, v12, v5}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_8

    .line 32
    :try_start_3
    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 33
    :catch_2
    :try_start_4
    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    const-string v5, "%2F"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    :cond_8
    const/4 v3, 0x0

    .line 34
    invoke-static {v13, v4, v6, v3}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 35
    invoke-static {v13, v0, v6, v3}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 36
    iget-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v0, :cond_9

    move-object v0, v12

    goto :goto_7

    :cond_9
    move-object/from16 v0, v22

    :goto_7
    invoke-static {v13, v15, v0, v3}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    .line 37
    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v0, v3, v18

    if-gez v0, :cond_b

    .line 38
    iget-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v0, :cond_a

    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    move-object/from16 v12, v22

    goto :goto_8

    :goto_9
    invoke-static {v13, v10, v12, v0}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 39
    :cond_b
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v0, v3, v16

    if-eqz v0, :cond_11

    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 41
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 43
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 44
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_a

    .line 45
    :cond_c
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 47
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 48
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_a

    .line 49
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 50
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 51
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    .line 52
    :goto_a
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    .line 53
    iget v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    sub-int/2addr v3, v2

    int-to-long v4, v3

    iget-wide v6, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v10, v4, v6

    if-ltz v10, :cond_10

    long-to-int v3, v6

    .line 54
    invoke-virtual {v0, v11, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    .line 58
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 59
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v3, Lja/a;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lja/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    goto :goto_b

    .line 61
    :cond_e
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v3, Lja/c;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lja/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 62
    :goto_b
    iget v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    sub-int/2addr v0, v2

    int-to-long v3, v0

    iget-wide v5, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_f

    long-to-int v3, v5

    sub-int/2addr v0, v3

    .line 63
    new-array v4, v0, [B

    iput-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 64
    invoke-static {v11, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v13, p0

    .line 65
    :try_start_5
    invoke-direct {v13, v9}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->parseFile(Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;)V

    goto :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_1b

    :cond_f
    move-object/from16 v13, p0

    goto :goto_c

    :cond_10
    move-object/from16 v13, p0

    .line 66
    iput-wide v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    .line 67
    invoke-virtual {v0, v11, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :goto_c
    move-object v2, v11

    :goto_d
    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_19

    :cond_11
    move-object/from16 v13, p0

    .line 68
    new-instance v0, Ljava/lang/Exception;

    move-object/from16 v5, v28

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v13, p0

    move-object/from16 v5, v28

    .line 69
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v13, v1

    move-object/from16 v29, v5

    move-object/from16 v5, v28

    const/4 v1, -0x1

    .line 70
    iget-object v14, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    if-eqz v14, :cond_24

    .line 71
    array-length v2, v14

    add-int v2, v27, v2

    new-array v3, v2, [B

    .line 72
    array-length v1, v14

    move-object/from16 v28, v12

    const/4 v12, 0x0

    invoke-static {v14, v12, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v1, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    array-length v1, v1

    iget v14, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    invoke-static {v11, v12, v3, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 74
    iput-object v1, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    const/16 v1, 0x32

    if-ge v2, v1, :cond_14

    .line 75
    iget-boolean v1, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    if-nez v1, :cond_14

    .line 76
    new-array v0, v2, [B

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    const/4 v1, 0x0

    .line 77
    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v11

    goto/16 :goto_17

    :cond_14
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_19

    .line 78
    iget-boolean v12, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v12, :cond_16

    .line 79
    aget-byte v12, v3, v1

    const/16 v14, 0xd

    if-ne v12, v14, :cond_15

    add-int/lit8 v12, v2, -0x3

    if-ge v1, v12, :cond_15

    const/4 v12, 0x1

    add-int/lit8 v26, v1, 0x1

    .line 80
    aget-byte v12, v3, v26

    const/16 v14, 0xa

    if-ne v12, v14, :cond_15

    const/4 v12, 0x2

    add-int/lit8 v20, v1, 0x2

    aget-byte v12, v3, v20

    const/16 v14, 0xd

    if-ne v12, v14, :cond_15

    add-int/lit8 v12, v1, 0x3

    aget-byte v12, v3, v12

    const/16 v14, 0xa

    if-ne v12, v14, :cond_15

    const/4 v12, 0x1

    .line 81
    iput-boolean v12, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v21, v11

    const/16 v11, 0xa

    const/4 v12, 0x1

    goto :goto_10

    :cond_15
    move-object/from16 v21, v11

    const/16 v11, 0xa

    const/4 v12, 0x1

    goto :goto_f

    .line 82
    :cond_16
    aget-byte v12, v3, v1

    const/16 v14, 0xa

    if-ne v12, v14, :cond_15

    const/4 v12, 0x1

    add-int/lit8 v14, v2, -0x1

    if-ge v1, v14, :cond_17

    add-int/lit8 v14, v1, 0x1

    .line 83
    aget-byte v14, v3, v14

    move-object/from16 v21, v11

    const/16 v11, 0xa

    if-ne v14, v11, :cond_18

    .line 84
    iput-boolean v12, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    const/4 v14, 0x2

    add-int/2addr v1, v14

    goto :goto_10

    :cond_17
    move-object/from16 v21, v11

    const/16 v11, 0xa

    :cond_18
    :goto_f
    add-int/2addr v1, v12

    move-object/from16 v11, v21

    goto :goto_e

    :cond_19
    move-object/from16 v21, v11

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 85
    :goto_10
    iget-boolean v14, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    if-eqz v14, :cond_23

    .line 86
    new-array v14, v1, [B

    const/4 v11, 0x0

    .line 87
    invoke-static {v3, v11, v14, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>([B)V

    .line 89
    invoke-static {v12, v4, v6, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 90
    invoke-static {v12, v0, v6, v11}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v4, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 91
    iget-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v0, :cond_1a

    move-object/from16 v6, v28

    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_1a
    move-object/from16 v6, v22

    goto :goto_11

    :goto_12
    invoke-static {v4, v15, v6, v0}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    .line 92
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-wide v11, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v0, v11, v18

    if-gez v0, :cond_1c

    .line 93
    iget-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    if-eqz v0, :cond_1b

    move-object/from16 v0, v28

    :goto_13
    const/4 v6, 0x0

    goto :goto_14

    :cond_1b
    move-object/from16 v0, v22

    goto :goto_13

    :goto_14
    invoke-static {v4, v10, v0, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 94
    :cond_1c
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-wide v10, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v0, v10, v16

    if-eqz v0, :cond_22

    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 96
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 98
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 99
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_15

    .line 100
    :cond_1d
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 102
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 103
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    goto :goto_15

    .line 104
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 105
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 106
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    .line 107
    :goto_15
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    sub-int/2addr v2, v1

    int-to-long v4, v2

    .line 109
    iget-wide v6, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v10, v4, v6

    if-ltz v10, :cond_20

    long-to-int v7, v6

    .line 110
    invoke-virtual {v0, v3, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    .line 114
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    iget-object v6, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 115
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 116
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v6, Lja/a;

    iget-object v7, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-direct {v6, v8, v7}, Lja/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Lkh/e;->f(Ljava/lang/Object;)V

    goto :goto_16

    .line 117
    :cond_1f
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v6, Lja/c;

    iget-object v7, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Lja/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 118
    :goto_16
    iget-wide v6, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_21

    long-to-int v0, v6

    sub-int/2addr v2, v0

    .line 119
    new-array v4, v2, [B

    iput-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 120
    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-direct {v13, v9}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->parseFile(Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;)V

    goto :goto_17

    .line 122
    :cond_20
    iput-wide v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    .line 123
    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_21
    :goto_17
    move-object/from16 v2, v21

    goto/16 :goto_d

    .line 124
    :cond_22
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_23
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v21, v11

    .line 126
    iget-wide v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    iget-wide v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    add-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-ltz v6, :cond_25

    .line 127
    iput-wide v2, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    .line 128
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v2, v21

    move/from16 v3, v27

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_d

    :cond_25
    move-object/from16 v2, v21

    sub-long/2addr v0, v4

    long-to-int v1, v0

    .line 129
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    .line 132
    iput-boolean v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    .line 133
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v0

    iget-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 134
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 135
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v3, Lja/a;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lja/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    goto :goto_18

    :cond_26
    const/4 v5, 0x2

    .line 136
    invoke-static {}, Lkh/e;->b()Lkh/e;

    move-result-object v0

    new-instance v3, Lja/c;

    iget-object v4, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lja/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 137
    :goto_18
    iget v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    iput-object v3, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    const/4 v4, 0x0

    .line 138
    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-direct {v13, v9}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->parseFile(Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;)V

    .line 140
    :goto_19
    iget-wide v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->alreadyReadSize:J

    cmp-long v3, v0, v24

    if-nez v3, :cond_27

    goto :goto_1a

    :cond_27
    move-object v11, v2

    move-object v1, v13

    move-object/from16 v6, v23

    move-wide/from16 v7, v24

    move-object/from16 v5, v29

    const/4 v2, -0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_28
    move-object v13, v1

    move-wide/from16 v24, v7

    .line 141
    :goto_1a
    iget-object v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_29

    .line 142
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 143
    :cond_29
    iget-wide v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->alreadyReadSize:J

    cmp-long v2, v0, v24

    if-nez v2, :cond_2b

    .line 144
    iget-boolean v0, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    if-nez v0, :cond_2a

    return-void

    .line 145
    :cond_2a
    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u6790\u6587\u4ef6\u51fa\u9519"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u63a5\u6536\u6587\u4ef6\u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 148
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    :try_start_6
    iget-object v1, v9, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2c

    .line 150
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 151
    :catch_4
    :cond_2c
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u63a5\u6536\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw v1

    :goto_1d
    goto :goto_1c
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public fileTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public isStarting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->isStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public readDir(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, ""

    .line 22
    .line 23
    const-string v5, "/"

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    move-object v3, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v6, "SELECT * FROM fileList WHERE parent=?"

    .line 43
    .line 44
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 48
    .line 49
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    move-object v6, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v6, " and name NOT LIKE \'.%\'"

    .line 56
    .line 57
    :goto_1
    const-string v7, " ORDER BY name"

    .line 58
    .line 59
    invoke-static {v6, v7, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-array v6, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v2, v6, v0

    .line 66
    .line 67
    new-instance v7, La2/g1;

    .line 68
    .line 69
    invoke-direct {v7, v3, v6}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v3, v7}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    const/4 v3, 0x0

    .line 86
    :goto_2
    new-instance v6, Lja/c;

    .line 87
    .line 88
    const/16 v7, 0x9

    .line 89
    .line 90
    invoke-direct {v6, v7, p1}, Lja/c;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v7, v6, Lja/c;->c:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object v8, v6, Lja/c;->d:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eqz v10, :cond_3

    .line 106
    .line 107
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Lcom/yunpan/appmanage/db/FileInfo;

    .line 112
    .line 113
    iget-boolean v11, v10, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 114
    .line 115
    if-eqz v11, :cond_2

    .line 116
    .line 117
    new-instance v11, Lx9/w3;

    .line 118
    .line 119
    invoke-direct {v11, v10}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_5

    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Lcom/yunpan/appmanage/db/FileInfo;

    .line 141
    .line 142
    iget-boolean v10, v9, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 143
    .line 144
    if-nez v10, :cond_4

    .line 145
    .line 146
    new-instance v10, Lx9/w3;

    .line 147
    .line 148
    invoke-direct {v10, v9}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    new-instance v3, Ljava/io/File;

    .line 162
    .line 163
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    .line 174
    .line 175
    const-string p2, "\u65e0\u6743\u9650"

    .line 176
    .line 177
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_7
    :goto_5
    if-nez p2, :cond_b

    .line 182
    .line 183
    new-instance p2, Lx9/w3;

    .line 184
    .line 185
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 186
    .line 187
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {p2, v3, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-nez p2, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    const/4 v2, 0x0

    .line 208
    :goto_6
    array-length v3, p2

    .line 209
    if-ge v2, v3, :cond_a

    .line 210
    .line 211
    move-object v9, v4

    .line 212
    const/4 v3, 0x0

    .line 213
    :goto_7
    if-gt v3, v2, :cond_9

    .line 214
    .line 215
    invoke-static {v9}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_8

    .line 224
    .line 225
    aget-object v9, p2, v3

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    aget-object v11, p2, v3

    .line 234
    .line 235
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    :goto_8
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    add-int/2addr v3, v1

    .line 250
    goto :goto_7

    .line 251
    :cond_9
    new-instance v3, Lx9/w3;

    .line 252
    .line 253
    aget-object v10, p2, v2

    .line 254
    .line 255
    new-instance v11, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 261
    .line 262
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v11, v12, v5, v9}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-direct {v3, v10, v9}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    add-int/2addr v2, v1

    .line 275
    goto :goto_6

    .line 276
    :cond_a
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-virtual {p2, v6}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_b
    new-instance p2, Lz7/o;

    .line 284
    .line 285
    invoke-direct {p2}, Lz7/o;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_c

    .line 297
    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Lx9/w3;

    .line 303
    .line 304
    invoke-direct {p0, p2, v1}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->addFileToJson(Lz7/o;Lx9/w3;)V

    .line 305
    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_c
    new-instance v0, Lz7/s;

    .line 309
    .line 310
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 311
    .line 312
    .line 313
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 314
    .line 315
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 316
    .line 317
    const-string v2, "rootName"

    .line 318
    .line 319
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v1, "parent"

    .line 323
    .line 324
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string p1, "files"

    .line 328
    .line 329
    invoke-virtual {v0, p1, p2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    return-object p1
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->getNanoRes()Lfi/iki/elonen/NanoHTTPD$Response;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v3, 0x3f

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ltz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "\u5185\u90e8\u5b58\u50a8"

    .line 76
    .line 77
    iput-object v5, v4, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iput-object v5, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_4

    .line 105
    .line 106
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_3

    .line 133
    .line 134
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    const-string v7, "U\u76d8"

    .line 139
    .line 140
    iput-object v7, v6, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iput-object v5, v6, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    :goto_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const-string v5, "\u79c1\u6709\u76ee\u5f55"

    .line 166
    .line 167
    iput-object v5, v4, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iput-object v5, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 188
    .line 189
    :cond_5
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_6

    .line 200
    .line 201
    new-instance v3, Ljava/io/File;

    .line 202
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 213
    .line 214
    const-string v6, "/Download"

    .line 215
    .line 216
    invoke-static {v5, v6, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-nez v3, :cond_6

    .line 228
    .line 229
    new-instance v3, Ljava/io/File;

    .line 230
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 241
    .line 242
    const-string v6, "/Download"

    .line 243
    .line 244
    invoke-static {v5, v6, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v5, "/Download"

    .line 273
    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v3, v4}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_6
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 289
    .line 290
    const/4 v5, 0x0

    .line 291
    const/4 v6, 0x4

    .line 292
    const/4 v7, 0x3

    .line 293
    const/4 v8, 0x5

    .line 294
    const/4 v9, 0x1

    .line 295
    if-ne v3, v4, :cond_41

    .line 296
    .line 297
    const-string v3, "/favicon.ico"

    .line 298
    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_7

    .line 304
    .line 305
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 306
    .line 307
    const-string v2, "text/plain"

    .line 308
    .line 309
    const-string v3, "Not Found"

    .line 310
    .line 311
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    return-object v0

    .line 316
    :cond_7
    const-string v3, "/isonline"

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_8

    .line 323
    .line 324
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 325
    .line 326
    const-string v2, "text/plain"

    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->k0:J

    .line 338
    .line 339
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v4, "----"

    .line 343
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    return-object v0

    .line 361
    :cond_8
    iget-object v3, v1, Lcom/yunpan/appmanage/httpserver/RemoteServer;->getRequestList:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    const/4 v10, 0x6

    .line 372
    if-eqz v4, :cond_b

    .line 373
    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;

    .line 379
    .line 380
    invoke-virtual {v4, v0}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->isUrl(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v11

    .line 384
    if-eqz v11, :cond_9

    .line 385
    .line 386
    const-string v2, "/input.html"

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_a

    .line 393
    .line 394
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    new-instance v2, Lja/a;

    .line 399
    .line 400
    invoke-direct {v2, v10, v5}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_a
    invoke-virtual {v4}, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->getNanoRes()Lfi/iki/elonen/NanoHTTPD$Response;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    return-object v0

    .line 411
    :cond_b
    const-string v3, "/file/"

    .line 412
    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-nez v3, :cond_c

    .line 418
    .line 419
    const-string v3, "/refile/"

    .line 420
    .line 421
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-eqz v3, :cond_d

    .line 426
    .line 427
    :cond_c
    const/4 v12, 0x6

    .line 428
    goto/16 :goto_17

    .line 429
    .line 430
    :cond_d
    const-string v3, "/down/"

    .line 431
    .line 432
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-nez v3, :cond_e

    .line 437
    .line 438
    const-string v3, "/path/"

    .line 439
    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_f

    .line 445
    .line 446
    :cond_e
    move-object v3, v5

    .line 447
    const/4 v2, 0x5

    .line 448
    goto/16 :goto_14

    .line 449
    .line 450
    :cond_f
    const-string v3, "/url/"

    .line 451
    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_10

    .line 457
    .line 458
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    new-instance v3, Lja/a;

    .line 467
    .line 468
    invoke-direct {v3, v9, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 475
    .line 476
    const-string v2, "text/plain"

    .line 477
    .line 478
    const-string v3, "OK"

    .line 479
    .line 480
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    return-object v0

    .line 485
    :cond_10
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 490
    .line 491
    const/16 v4, 0xc

    .line 492
    .line 493
    const/4 v11, 0x7

    .line 494
    const-wide/16 v12, 0x0

    .line 495
    .line 496
    const-wide/16 v14, 0x1

    .line 497
    .line 498
    if-eqz v3, :cond_20

    .line 499
    .line 500
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 505
    .line 506
    iget v3, v3, Lx9/n5;->a:I

    .line 507
    .line 508
    if-ne v3, v7, :cond_20

    .line 509
    .line 510
    invoke-static {v0}, Lcom/yunpan/appmanage/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    if-eqz v5, :cond_13

    .line 519
    .line 520
    invoke-static {v0}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_11

    .line 525
    .line 526
    const-string v3, "video/*"

    .line 527
    .line 528
    goto :goto_2

    .line 529
    :cond_11
    invoke-static {v0}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v3, :cond_12

    .line 534
    .line 535
    const-string v3, "audio/*"

    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_12
    const-string v3, "application/octet-stream"

    .line 539
    .line 540
    :cond_13
    :goto_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    const-string v6, "/videoimage/"

    .line 545
    .line 546
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_15

    .line 551
    .line 552
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const-string v2, "//"

    .line 557
    .line 558
    const-string v4, "/"

    .line 559
    .line 560
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 569
    .line 570
    invoke-static {v2, v0}, Lqa/f;->e(Lx9/n5;Ljava/lang/String;)Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    if-nez v0, :cond_14

    .line 575
    .line 576
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 577
    .line 578
    const-string v2, "text/plain"

    .line 579
    .line 580
    const-string v3, "Not Found"

    .line 581
    .line 582
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    return-object v0

    .line 587
    :cond_14
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 588
    .line 589
    invoke-static {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Lcom/yunpan/appmanage/bean/JcifsBean;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    return-object v0

    .line 594
    :cond_15
    invoke-static {v0}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-eqz v4, :cond_17

    .line 599
    .line 600
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    const-string v2, "if-none-match"

    .line 605
    .line 606
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Ljava/lang/String;

    .line 611
    .line 612
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 617
    .line 618
    invoke-static {v2, v5}, Lqa/f;->f(Lx9/n5;Ljava/lang/String;)Ljava/io/InputStream;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    if-eqz v0, :cond_16

    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-nez v0, :cond_16

    .line 629
    .line 630
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 631
    .line 632
    invoke-static {v0, v3, v2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    const-string v2, "etag"

    .line 637
    .line 638
    const-string v3, "bytes"

    .line 639
    .line 640
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    return-object v0

    .line 644
    :cond_16
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 645
    .line 646
    invoke-static {v0, v3, v2}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 647
    .line 648
    .line 649
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return-object v0

    .line 651
    :catch_0
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 652
    .line 653
    const-string v2, "text/plain"

    .line 654
    .line 655
    const-string v3, "Not Found"

    .line 656
    .line 657
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    return-object v0

    .line 662
    :cond_17
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->H:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    if-nez v4, :cond_18

    .line 673
    .line 674
    :try_start_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 679
    .line 680
    invoke-static {v0, v5}, Lqa/f;->f(Lx9/n5;Ljava/lang/String;)Ljava/io/InputStream;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 685
    .line 686
    invoke-static {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 687
    .line 688
    .line 689
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    return-object v0

    .line 691
    :catch_1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 692
    .line 693
    const-string v2, "text/plain"

    .line 694
    .line 695
    const-string v3, "Not Found"

    .line 696
    .line 697
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    return-object v0

    .line 702
    :cond_18
    const-string v4, "/video/"

    .line 703
    .line 704
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_1f

    .line 709
    .line 710
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    const-string v4, "range"

    .line 715
    .line 716
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Ljava/lang/String;

    .line 721
    .line 722
    if-eqz v0, :cond_1a

    .line 723
    .line 724
    const-string v4, "bytes=0-"

    .line 725
    .line 726
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-nez v4, :cond_1a

    .line 731
    .line 732
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    const-string v5, "-"

    .line 737
    .line 738
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v4

    .line 742
    aget-object v2, v4, v2

    .line 743
    .line 744
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 745
    .line 746
    .line 747
    move-result-wide v5

    .line 748
    array-length v2, v4

    .line 749
    if-le v2, v9, :cond_19

    .line 750
    .line 751
    aget-object v2, v4, v9

    .line 752
    .line 753
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 754
    .line 755
    .line 756
    move-result-wide v7

    .line 757
    goto :goto_3

    .line 758
    :cond_19
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    iget-wide v7, v2, Lcom/yunpan/appmanage/util/k;->G:J

    .line 763
    .line 764
    sub-long/2addr v7, v14

    .line 765
    goto :goto_3

    .line 766
    :cond_1a
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    iget-wide v4, v2, Lcom/yunpan/appmanage/util/k;->G:J

    .line 771
    .line 772
    sub-long v7, v4, v14

    .line 773
    .line 774
    move-wide v5, v12

    .line 775
    :goto_3
    sub-long v9, v7, v5

    .line 776
    .line 777
    add-long/2addr v9, v14

    .line 778
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 783
    .line 784
    if-nez v2, :cond_1b

    .line 785
    .line 786
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 787
    .line 788
    const-string v2, "text/plain"

    .line 789
    .line 790
    const-string v3, "Not Found"

    .line 791
    .line 792
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    return-object v0

    .line 797
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 803
    .line 804
    .line 805
    move-result-wide v14

    .line 806
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v4, ""

    .line 810
    .line 811
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 823
    .line 824
    iput-object v2, v4, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->wpVideoStreamTag:Ljava/lang/String;

    .line 825
    .line 826
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 831
    .line 832
    monitor-enter v4

    .line 833
    :try_start_2
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 834
    .line 835
    .line 836
    move-result-object v11

    .line 837
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 838
    .line 839
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 840
    .line 841
    if-eqz v11, :cond_1c

    .line 842
    .line 843
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 844
    .line 845
    .line 846
    move-result-object v11

    .line 847
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 848
    .line 849
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 850
    .line 851
    iput-wide v5, v11, Lce/x0;->b:J

    .line 852
    .line 853
    goto :goto_4

    .line 854
    :catchall_0
    move-exception v0

    .line 855
    goto :goto_6

    .line 856
    :cond_1c
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 857
    .line 858
    .line 859
    move-result-object v11

    .line 860
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 861
    .line 862
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 863
    .line 864
    iput-wide v5, v11, Lvd/x;->b:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 865
    .line 866
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 867
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 868
    .line 869
    const-string v11, ""

    .line 870
    .line 871
    invoke-static {v2, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v11

    .line 875
    invoke-static {v4, v3, v11, v9, v10}, Lfi/iki/elonen/NanoHTTPD;->newMyCacheVideoStreamResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 876
    .line 877
    .line 878
    move-result-object v11

    .line 879
    if-nez v0, :cond_1d

    .line 880
    .line 881
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 882
    .line 883
    const-string v4, ""

    .line 884
    .line 885
    invoke-static {v2, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-static {v0, v3, v2, v9, v10}, Lfi/iki/elonen/NanoHTTPD;->newMyCacheVideoStreamResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 890
    .line 891
    .line 892
    move-result-object v11

    .line 893
    goto :goto_5

    .line 894
    :cond_1d
    cmp-long v0, v5, v12

    .line 895
    .line 896
    if-nez v0, :cond_1e

    .line 897
    .line 898
    const-string v0, ""

    .line 899
    .line 900
    invoke-static {v2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-static {v4, v3, v0, v9, v10}, Lfi/iki/elonen/NanoHTTPD;->newMyCacheVideoStreamResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 905
    .line 906
    .line 907
    move-result-object v11

    .line 908
    :cond_1e
    :goto_5
    const-string v0, "Content-Range"

    .line 909
    .line 910
    const-string v2, "bytes "

    .line 911
    .line 912
    const-string v3, "-"

    .line 913
    .line 914
    invoke-static {v5, v6, v2, v3}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    const-string v3, "/"

    .line 922
    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    iget-wide v3, v3, Lcom/yunpan/appmanage/util/k;->G:J

    .line 931
    .line 932
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    invoke-virtual {v11, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const-string v0, "accept-ranges"

    .line 943
    .line 944
    const-string v2, "bytes"

    .line 945
    .line 946
    invoke-virtual {v11, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    return-object v11

    .line 950
    :catch_2
    :try_start_4
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 951
    .line 952
    const-string v2, "text/plain"

    .line 953
    .line 954
    const-string v3, "\u51fa\u9519"

    .line 955
    .line 956
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    monitor-exit v4

    .line 961
    return-object v0

    .line 962
    :goto_6
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 963
    throw v0

    .line 964
    :cond_1f
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 965
    .line 966
    const-string v2, "text/plain"

    .line 967
    .line 968
    const-string v3, "Not Found"

    .line 969
    .line 970
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    return-object v0

    .line 975
    :cond_20
    const-string v3, "/video/"

    .line 976
    .line 977
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 978
    .line 979
    .line 980
    move-result v3

    .line 981
    if-nez v3, :cond_22

    .line 982
    .line 983
    const-string v3, "/videoimage/"

    .line 984
    .line 985
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-eqz v3, :cond_21

    .line 990
    .line 991
    goto :goto_7

    .line 992
    :cond_21
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 993
    .line 994
    const-string v2, "text/plain"

    .line 995
    .line 996
    const-string v3, "\u4f60\u60f3\u5e72\u4ec0\u4e48\uff1f"

    .line 997
    .line 998
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    return-object v0

    .line 1003
    :cond_22
    :goto_7
    invoke-static {v0}, Lcom/yunpan/appmanage/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v16

    .line 1011
    if-eqz v16, :cond_25

    .line 1012
    .line 1013
    invoke-static {v0}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    if-eqz v3, :cond_23

    .line 1018
    .line 1019
    const-string v3, "video/*"

    .line 1020
    .line 1021
    goto :goto_8

    .line 1022
    :cond_23
    invoke-static {v0}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    if-eqz v3, :cond_24

    .line 1027
    .line 1028
    const-string v3, "audio/*"

    .line 1029
    .line 1030
    goto :goto_8

    .line 1031
    :cond_24
    const-string v3, "application/octet-stream"

    .line 1032
    .line 1033
    :cond_25
    :goto_8
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v5

    .line 1037
    const-string v8, "range"

    .line 1038
    .line 1039
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    check-cast v5, Ljava/lang/String;

    .line 1044
    .line 1045
    const-string v8, "/videoimage/"

    .line 1046
    .line 1047
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v8

    .line 1051
    if-eqz v8, :cond_26

    .line 1052
    .line 1053
    const/4 v5, 0x0

    .line 1054
    :cond_26
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    const-string v11, "/videoimage/"

    .line 1059
    .line 1060
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1064
    if-eqz v11, :cond_27

    .line 1065
    .line 1066
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v8

    .line 1070
    goto :goto_9

    .line 1071
    :catch_3
    move-exception v0

    .line 1072
    const/4 v5, 0x0

    .line 1073
    goto/16 :goto_13

    .line 1074
    .line 1075
    :cond_27
    :goto_9
    if-eqz v5, :cond_29

    .line 1076
    .line 1077
    const-string v4, "bytes=0-"

    .line 1078
    .line 1079
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v4

    .line 1083
    if-nez v4, :cond_29

    .line 1084
    .line 1085
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v4

    .line 1089
    const-string v11, "-"

    .line 1090
    .line 1091
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    aget-object v2, v4, v2

    .line 1096
    .line 1097
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1098
    .line 1099
    .line 1100
    move-result-wide v17

    .line 1101
    array-length v2, v4

    .line 1102
    if-le v2, v9, :cond_28

    .line 1103
    .line 1104
    aget-object v2, v4, v9

    .line 1105
    .line 1106
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v19

    .line 1110
    goto :goto_a

    .line 1111
    :cond_28
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    iget-wide v10, v2, Lcom/yunpan/appmanage/util/k;->G:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1116
    .line 1117
    sub-long v19, v10, v14

    .line 1118
    .line 1119
    :goto_a
    move-object v11, v5

    .line 1120
    move-wide/from16 v9, v17

    .line 1121
    .line 1122
    :goto_b
    move-wide/from16 v4, v19

    .line 1123
    .line 1124
    goto :goto_c

    .line 1125
    :cond_29
    :try_start_7
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v2

    .line 1129
    iget-wide v9, v2, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1130
    .line 1131
    sub-long v19, v9, v14

    .line 1132
    .line 1133
    move-object v11, v5

    .line 1134
    move-wide v9, v12

    .line 1135
    goto :goto_b

    .line 1136
    :goto_c
    sub-long v17, v4, v9

    .line 1137
    .line 1138
    move-object/from16 v19, v3

    .line 1139
    .line 1140
    add-long v2, v17, v14

    .line 1141
    .line 1142
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v14

    .line 1146
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1147
    .line 1148
    iget v14, v14, Lx9/n5;->a:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 1149
    .line 1150
    if-ne v14, v7, :cond_31

    .line 1151
    .line 1152
    cmp-long v6, v9, v12

    .line 1153
    .line 1154
    if-lez v6, :cond_30

    .line 1155
    .line 1156
    :try_start_8
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1161
    .line 1162
    invoke-static {v0, v8}, Lqa/f;->g(Lx9/n5;Ljava/lang/String;)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v2

    .line 1166
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getOutputStream()Ljava/io/OutputStream;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1170
    :try_start_9
    const-string v0, "HTTP/1.1 206 Partial Content\r\n"

    .line 1171
    .line 1172
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    const-string v6, "Content-Type: "

    .line 1185
    .line 1186
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    move-object/from16 v7, v19

    .line 1190
    .line 1191
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    const-string v6, "\r\n"

    .line 1195
    .line 1196
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1208
    .line 1209
    .line 1210
    const-string v0, "Accept-ranges: bytes\r\n"

    .line 1211
    .line 1212
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1217
    .line 1218
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    const-string v6, "Content-Range: bytes "

    .line 1225
    .line 1226
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    const-string v6, "-"

    .line 1233
    .line 1234
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    const-string v4, "/"

    .line 1241
    .line 1242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v4

    .line 1249
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1250
    .line 1251
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    const-string v4, "\r\n"

    .line 1255
    .line 1256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1268
    .line 1269
    .line 1270
    const-string v0, "\r\n"

    .line 1271
    .line 1272
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1277
    .line 1278
    .line 1279
    instance-of v0, v2, Lce/x0;

    .line 1280
    .line 1281
    const/high16 v4, 0x300000

    .line 1282
    .line 1283
    const/4 v5, -0x1

    .line 1284
    if-eqz v0, :cond_2c

    .line 1285
    .line 1286
    move-object v0, v2

    .line 1287
    check-cast v0, Lce/x0;

    .line 1288
    .line 1289
    iput-wide v9, v0, Lce/x0;->b:J

    .line 1290
    .line 1291
    new-array v4, v4, [B

    .line 1292
    .line 1293
    :cond_2a
    invoke-virtual {v0, v4}, Lce/x0;->read([B)I

    .line 1294
    .line 1295
    .line 1296
    move-result v6

    .line 1297
    if-eq v6, v5, :cond_2b

    .line 1298
    .line 1299
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_d

    .line 1306
    :catch_4
    move-exception v0

    .line 1307
    goto :goto_f

    .line 1308
    :cond_2b
    :goto_d
    if-ne v6, v5, :cond_2a

    .line 1309
    .line 1310
    goto :goto_e

    .line 1311
    :cond_2c
    move-object v0, v2

    .line 1312
    check-cast v0, Lvd/x;

    .line 1313
    .line 1314
    iput-wide v9, v0, Lvd/x;->b:J

    .line 1315
    .line 1316
    new-array v4, v4, [B

    .line 1317
    .line 1318
    :cond_2d
    invoke-virtual {v0, v4}, Lvd/x;->read([B)I

    .line 1319
    .line 1320
    .line 1321
    move-result v6

    .line 1322
    if-eq v6, v5, :cond_2e

    .line 1323
    .line 1324
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1328
    .line 1329
    .line 1330
    :cond_2e
    if-ne v6, v5, :cond_2d

    .line 1331
    .line 1332
    :goto_e
    :try_start_a
    const-string v0, ""

    .line 1333
    .line 1334
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1338
    return-object v0

    .line 1339
    :goto_f
    :try_start_b
    instance-of v4, v2, Lce/x0;

    .line 1340
    .line 1341
    if-eqz v4, :cond_2f

    .line 1342
    .line 1343
    check-cast v2, Lce/x0;

    .line 1344
    .line 1345
    iget-object v2, v2, Lce/x0;->a:Lce/t0;

    .line 1346
    .line 1347
    invoke-virtual {v2}, Lce/t0;->b()V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_10

    .line 1351
    :cond_2f
    check-cast v2, Lvd/x;

    .line 1352
    .line 1353
    invoke-virtual {v2}, Lvd/x;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1354
    .line 1355
    .line 1356
    :catch_5
    :goto_10
    :try_start_c
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1360
    .line 1361
    .line 1362
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1363
    .line 1364
    const-string v2, "text/plain"

    .line 1365
    .line 1366
    const-string v3, "\u51fa\u9519"

    .line 1367
    .line 1368
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    return-object v0

    .line 1373
    :cond_30
    move-object/from16 v7, v19

    .line 1374
    .line 1375
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v6

    .line 1379
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1380
    .line 1381
    invoke-static {v6, v8}, Lqa/f;->f(Lx9/n5;Ljava/lang/String;)Ljava/io/InputStream;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1385
    goto :goto_11

    .line 1386
    :cond_31
    move-object/from16 v7, v19

    .line 1387
    .line 1388
    :try_start_d
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v12

    .line 1392
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1393
    .line 1394
    iget v12, v12, Lx9/n5;->a:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1395
    .line 1396
    if-ne v12, v6, :cond_32

    .line 1397
    .line 1398
    :try_start_e
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v6

    .line 1402
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1403
    .line 1404
    invoke-static {v9, v10, v8, v6}, Lcom/bumptech/glide/c;->E(JLjava/lang/String;Lx9/n5;)Lfh/c;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 1408
    goto :goto_11

    .line 1409
    :cond_32
    :try_start_f
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v6

    .line 1413
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1414
    .line 1415
    iget v6, v6, Lx9/n5;->a:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 1416
    .line 1417
    const/4 v12, 0x5

    .line 1418
    if-ne v6, v12, :cond_33

    .line 1419
    .line 1420
    :try_start_10
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v6

    .line 1424
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1425
    .line 1426
    invoke-static {v9, v10, v8, v6}, Lcom/bumptech/glide/d;->y(JLjava/lang/String;Lx9/n5;)Lfh/c;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 1430
    goto :goto_11

    .line 1431
    :cond_33
    :try_start_11
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v6

    .line 1435
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1436
    .line 1437
    iget v6, v6, Lx9/n5;->a:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 1438
    .line 1439
    const/4 v12, 0x6

    .line 1440
    if-eq v6, v12, :cond_3b

    .line 1441
    .line 1442
    :try_start_12
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v6

    .line 1446
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1447
    .line 1448
    invoke-static {v9, v10, v8, v6}, Lqa/g;->e(JLjava/lang/String;Lx9/n5;)Ljava/io/InputStream;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 1452
    :goto_11
    if-nez v6, :cond_34

    .line 1453
    .line 1454
    :try_start_13
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1455
    .line 1456
    const-string v2, "text/plain"

    .line 1457
    .line 1458
    const-string v3, "\u627e\u4e0d\u5230\u6587\u4ef6"

    .line 1459
    .line 1460
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    return-object v0

    .line 1465
    :catch_6
    move-exception v0

    .line 1466
    move-object v5, v6

    .line 1467
    goto/16 :goto_13

    .line 1468
    .line 1469
    :cond_34
    const-string v12, "/videoimage/"

    .line 1470
    .line 1471
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v12

    .line 1475
    if-eqz v12, :cond_35

    .line 1476
    .line 1477
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1478
    .line 1479
    invoke-static {v0, v7, v6}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    return-object v0

    .line 1484
    :cond_35
    invoke-static {v0}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v0

    .line 1488
    if-eqz v0, :cond_37

    .line 1489
    .line 1490
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    const-string v2, "if-none-match"

    .line 1495
    .line 1496
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    check-cast v0, Ljava/lang/String;

    .line 1501
    .line 1502
    if-eqz v0, :cond_36

    .line 1503
    .line 1504
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-nez v0, :cond_36

    .line 1509
    .line 1510
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1511
    .line 1512
    invoke-static {v0, v7, v6}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    const-string v2, "etag"

    .line 1517
    .line 1518
    const-string v3, "bytes"

    .line 1519
    .line 1520
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    return-object v0

    .line 1524
    :cond_36
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1525
    .line 1526
    invoke-static {v0, v7, v6}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    return-object v0

    .line 1531
    :cond_37
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->H:Ljava/lang/String;

    .line 1536
    .line 1537
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v0

    .line 1541
    if-nez v0, :cond_38

    .line 1542
    .line 1543
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1544
    .line 1545
    invoke-static {v0, v7, v6}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v0

    .line 1549
    return-object v0

    .line 1550
    :cond_38
    if-nez v11, :cond_39

    .line 1551
    .line 1552
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1553
    .line 1554
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v2

    .line 1558
    iget-wide v2, v2, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1559
    .line 1560
    invoke-static {v0, v7, v6, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    const-string v2, "Content-Range"

    .line 1565
    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    const-string v4, "bytes 0-"

    .line 1572
    .line 1573
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    .line 1575
    .line 1576
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v4

    .line 1580
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1581
    .line 1582
    const-wide/16 v7, 0x1

    .line 1583
    .line 1584
    sub-long/2addr v4, v7

    .line 1585
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    .line 1588
    const-string v4, "/"

    .line 1589
    .line 1590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    .line 1593
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v4

    .line 1597
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1598
    .line 1599
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v3

    .line 1606
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    const-string v2, "accept-ranges"

    .line 1610
    .line 1611
    const-string v3, "bytes"

    .line 1612
    .line 1613
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    return-object v0

    .line 1617
    :cond_39
    const-string v0, "bytes=0-"

    .line 1618
    .line 1619
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v0

    .line 1623
    if-eqz v0, :cond_3a

    .line 1624
    .line 1625
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1626
    .line 1627
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v2

    .line 1631
    iget-wide v2, v2, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1632
    .line 1633
    invoke-static {v0, v7, v6, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    const-string v2, "Content-Range"

    .line 1638
    .line 1639
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    .line 1643
    .line 1644
    const-string v4, "bytes 0-"

    .line 1645
    .line 1646
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    .line 1648
    .line 1649
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v4

    .line 1653
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1654
    .line 1655
    const-wide/16 v7, 0x1

    .line 1656
    .line 1657
    sub-long/2addr v4, v7

    .line 1658
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    const-string v4, "/"

    .line 1662
    .line 1663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v4

    .line 1670
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1671
    .line 1672
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    const-string v2, "accept-ranges"

    .line 1683
    .line 1684
    const-string v3, "bytes"

    .line 1685
    .line 1686
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    .line 1688
    .line 1689
    return-object v0

    .line 1690
    :cond_3a
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1691
    .line 1692
    invoke-static {v0, v7, v6, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    const-string v2, "Content-Range"

    .line 1697
    .line 1698
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1701
    .line 1702
    .line 1703
    const-string v7, "bytes "

    .line 1704
    .line 1705
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1709
    .line 1710
    .line 1711
    const-string v7, "-"

    .line 1712
    .line 1713
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    const-string v4, "/"

    .line 1720
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v4

    .line 1728
    iget-wide v4, v4, Lcom/yunpan/appmanage/util/k;->G:J

    .line 1729
    .line 1730
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v3

    .line 1737
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    const-string v2, "accept-ranges"

    .line 1741
    .line 1742
    const-string v3, "bytes"

    .line 1743
    .line 1744
    invoke-virtual {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 1745
    .line 1746
    .line 1747
    return-object v0

    .line 1748
    :cond_3b
    :try_start_14
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->A:Lx9/n5;

    .line 1753
    .line 1754
    invoke-static {v0}, Lif/a;->K(Lx9/n5;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 1755
    .line 1756
    .line 1757
    const/4 v3, 0x0

    .line 1758
    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    .line 1759
    :catch_7
    move-exception v0

    .line 1760
    :goto_12
    move-object v5, v3

    .line 1761
    goto :goto_13

    .line 1762
    :catch_8
    move-exception v0

    .line 1763
    const/4 v3, 0x0

    .line 1764
    goto :goto_12

    .line 1765
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1766
    .line 1767
    .line 1768
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1769
    .line 1770
    .line 1771
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1772
    .line 1773
    const-string v2, "text/plain"

    .line 1774
    .line 1775
    const-string v3, "\u4e0d\u5b58\u5728"

    .line 1776
    .line 1777
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    return-object v0

    .line 1782
    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    const-string v4, "/down/"

    .line 1787
    .line 1788
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v0

    .line 1792
    if-eqz v0, :cond_3c

    .line 1793
    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1797
    .line 1798
    .line 1799
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v4

    .line 1803
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v4

    .line 1807
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v2

    .line 1817
    :cond_3c
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    .line 1818
    .line 1819
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    .line 1820
    .line 1821
    .line 1822
    :try_start_17
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 1823
    .line 1824
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 1825
    .line 1826
    .line 1827
    :try_start_18
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1828
    .line 1829
    const-string v3, "application/octet-stream"

    .line 1830
    .line 1831
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    .line 1832
    .line 1833
    .line 1834
    move-result v5

    .line 1835
    int-to-long v5, v5

    .line 1836
    invoke-static {v0, v3, v2, v5, v6}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    .line 1840
    return-object v0

    .line 1841
    :catch_9
    move-exception v0

    .line 1842
    :goto_15
    move-object v5, v4

    .line 1843
    goto :goto_16

    .line 1844
    :catch_a
    move-exception v0

    .line 1845
    move-object v2, v3

    .line 1846
    goto :goto_15

    .line 1847
    :catch_b
    move-exception v0

    .line 1848
    move-object v2, v3

    .line 1849
    move-object v5, v2

    .line 1850
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1851
    .line 1852
    .line 1853
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1854
    .line 1855
    .line 1856
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 1857
    .line 1858
    .line 1859
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1860
    .line 1861
    const-string v3, "text/plain"

    .line 1862
    .line 1863
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    invoke-static {v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v0

    .line 1871
    return-object v0

    .line 1872
    :goto_17
    :try_start_19
    const-string v2, "/refile/"

    .line 1873
    .line 1874
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1875
    .line 1876
    .line 1877
    move-result v2

    .line 1878
    if-eqz v2, :cond_3d

    .line 1879
    .line 1880
    const/16 v10, 0x8

    .line 1881
    .line 1882
    goto :goto_18

    .line 1883
    :cond_3d
    const/4 v10, 0x6

    .line 1884
    :goto_18
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v0

    .line 1888
    const-string v3, "Download"

    .line 1889
    .line 1890
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v3

    .line 1894
    if-eqz v3, :cond_3e

    .line 1895
    .line 1896
    new-instance v3, Ljava/io/File;

    .line 1897
    .line 1898
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1899
    .line 1900
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .line 1902
    .line 1903
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v5

    .line 1907
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 1908
    .line 1909
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    .line 1911
    .line 1912
    const-string v5, "/Download"

    .line 1913
    .line 1914
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v4

    .line 1921
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1925
    .line 1926
    .line 1927
    move-result v3

    .line 1928
    if-nez v3, :cond_3e

    .line 1929
    .line 1930
    new-instance v3, Ljava/io/File;

    .line 1931
    .line 1932
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1935
    .line 1936
    .line 1937
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v5

    .line 1941
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 1942
    .line 1943
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    .line 1945
    .line 1946
    const-string v5, "/Download"

    .line 1947
    .line 1948
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v4

    .line 1955
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1959
    .line 1960
    .line 1961
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v3

    .line 1965
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1966
    .line 1967
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1968
    .line 1969
    .line 1970
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v5

    .line 1974
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 1975
    .line 1976
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    .line 1978
    .line 1979
    const-string v5, "/Download"

    .line 1980
    .line 1981
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v4

    .line 1988
    invoke-virtual {v3, v4}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    :cond_3e
    new-instance v3, Ljava/io/File;

    .line 1992
    .line 1993
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1994
    .line 1995
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1996
    .line 1997
    .line 1998
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v5

    .line 2002
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 2003
    .line 2004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    .line 2006
    .line 2007
    const-string v5, "/"

    .line 2008
    .line 2009
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    .line 2011
    .line 2012
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v4

    .line 2019
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2023
    .line 2024
    .line 2025
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 2026
    .line 2027
    .line 2028
    move-result v4

    .line 2029
    if-eqz v4, :cond_40

    .line 2030
    .line 2031
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 2032
    .line 2033
    .line 2034
    move-result v4

    .line 2035
    if-eqz v4, :cond_3f

    .line 2036
    .line 2037
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2038
    .line 2039
    const-string v2, "application/octet-stream"

    .line 2040
    .line 2041
    new-instance v4, Ljava/io/FileInputStream;

    .line 2042
    .line 2043
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2044
    .line 2045
    .line 2046
    invoke-static {v0, v2, v4}, Lfi/iki/elonen/NanoHTTPD;->newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v0

    .line 2050
    return-object v0

    .line 2051
    :cond_3f
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2052
    .line 2053
    const-string v4, "text/plain"

    .line 2054
    .line 2055
    invoke-virtual {v1, v0, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->readDir(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v0

    .line 2059
    invoke-static {v3, v4, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v0

    .line 2063
    return-object v0

    .line 2064
    :cond_40
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2065
    .line 2066
    const-string v2, "text/plain"

    .line 2067
    .line 2068
    const-string v3, "\u6b64\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u65e0\u6743\u9650"

    .line 2069
    .line 2070
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 2074
    return-object v0

    .line 2075
    :catchall_1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2076
    .line 2077
    const-string v2, "text/plain"

    .line 2078
    .line 2079
    const-string v3, "\u65e0\u6743\u9650\u8bfb\u53d6\u6b64\u76ee\u5f55"

    .line 2080
    .line 2081
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v0

    .line 2085
    return-object v0

    .line 2086
    :cond_41
    move-object v3, v5

    .line 2087
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v4

    .line 2091
    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2092
    .line 2093
    if-ne v4, v5, :cond_4d

    .line 2094
    .line 2095
    const-string v4, "/upload"

    .line 2096
    .line 2097
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2098
    .line 2099
    .line 2100
    move-result v4

    .line 2101
    if-eqz v4, :cond_42

    .line 2102
    .line 2103
    :try_start_1a
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->parseFile(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    .line 2104
    .line 2105
    .line 2106
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2107
    .line 2108
    const-string v2, "text/plain"

    .line 2109
    .line 2110
    const-string v3, "OK"

    .line 2111
    .line 2112
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    .line 2116
    return-object v0

    .line 2117
    :catch_c
    move-exception v0

    .line 2118
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2119
    .line 2120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2121
    .line 2122
    const-string v4, ""

    .line 2123
    .line 2124
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v0

    .line 2131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    .line 2133
    .line 2134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v0

    .line 2138
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v0

    .line 2142
    return-object v0

    .line 2143
    :cond_42
    new-instance v4, Ljava/util/HashMap;

    .line 2144
    .line 2145
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2146
    .line 2147
    .line 2148
    :try_start_1b
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v5

    .line 2152
    const-string v8, "content-type"

    .line 2153
    .line 2154
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2155
    .line 2156
    .line 2157
    move-result v5

    .line 2158
    const/4 v8, 0x2

    .line 2159
    if-eqz v5, :cond_44

    .line 2160
    .line 2161
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v5

    .line 2165
    const-string v10, "content-type"

    .line 2166
    .line 2167
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v5

    .line 2171
    check-cast v5, Ljava/lang/String;

    .line 2172
    .line 2173
    if-eqz v5, :cond_44

    .line 2174
    .line 2175
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v10

    .line 2179
    const-string v11, "multipart/form-data"

    .line 2180
    .line 2181
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2182
    .line 2183
    .line 2184
    move-result v10

    .line 2185
    if-eqz v10, :cond_44

    .line 2186
    .line 2187
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v10

    .line 2191
    const-string v11, "charset="

    .line 2192
    .line 2193
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2194
    .line 2195
    .line 2196
    move-result v10

    .line 2197
    if-nez v10, :cond_44

    .line 2198
    .line 2199
    const-string v10, "[ |\t]*(boundary[ |\t]*=[ |\t]*[\'|\"]?[^\"^\'^;^,]*[\'|\"]?)"

    .line 2200
    .line 2201
    invoke-static {v10, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v10

    .line 2205
    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v5

    .line 2209
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 2210
    .line 2211
    .line 2212
    move-result v10

    .line 2213
    if-eqz v10, :cond_43

    .line 2214
    .line 2215
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v5

    .line 2219
    goto :goto_19

    .line 2220
    :catch_d
    move-exception v0

    .line 2221
    goto/16 :goto_1b

    .line 2222
    .line 2223
    :catch_e
    move-exception v0

    .line 2224
    goto/16 :goto_1c

    .line 2225
    .line 2226
    :catch_f
    move-exception v0

    .line 2227
    goto/16 :goto_1d

    .line 2228
    .line 2229
    :cond_43
    move-object v5, v3

    .line 2230
    :goto_19
    if-eqz v5, :cond_44

    .line 2231
    .line 2232
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v3

    .line 2236
    const-string v10, "content-type"

    .line 2237
    .line 2238
    new-instance v11, Ljava/lang/StringBuilder;

    .line 2239
    .line 2240
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2241
    .line 2242
    .line 2243
    const-string v12, "multipart/form-data; charset=utf-8; "

    .line 2244
    .line 2245
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v5

    .line 2255
    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    .line 2257
    .line 2258
    :cond_44
    move-object/from16 v3, p1

    .line 2259
    .line 2260
    invoke-interface {v3, v4}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    .line 2261
    .line 2262
    .line 2263
    :try_start_1c
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v3

    .line 2267
    const-string v4, "/input"

    .line 2268
    .line 2269
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2270
    .line 2271
    .line 2272
    move-result v4

    .line 2273
    if-eqz v4, :cond_45

    .line 2274
    .line 2275
    const-string v0, "str1"

    .line 2276
    .line 2277
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v0

    .line 2281
    check-cast v0, Ljava/util/List;

    .line 2282
    .line 2283
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v0

    .line 2287
    check-cast v0, Ljava/lang/String;

    .line 2288
    .line 2289
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    new-instance v3, Lja/a;

    .line 2294
    .line 2295
    const/4 v4, 0x5

    .line 2296
    invoke-direct {v3, v4, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v2, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 2300
    .line 2301
    .line 2302
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2303
    .line 2304
    const-string v2, "text/plain"

    .line 2305
    .line 2306
    const-string v3, "OK"

    .line 2307
    .line 2308
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v0

    .line 2312
    return-object v0

    .line 2313
    :cond_45
    const-string v4, "/url"

    .line 2314
    .line 2315
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2316
    .line 2317
    .line 2318
    move-result v4

    .line 2319
    if-eqz v4, :cond_46

    .line 2320
    .line 2321
    const-string v0, "shareUrl"

    .line 2322
    .line 2323
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v0

    .line 2327
    check-cast v0, Ljava/util/List;

    .line 2328
    .line 2329
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v0

    .line 2333
    check-cast v0, Ljava/lang/String;

    .line 2334
    .line 2335
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v2

    .line 2339
    new-instance v3, Lja/a;

    .line 2340
    .line 2341
    invoke-direct {v3, v9, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {v2, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 2345
    .line 2346
    .line 2347
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2348
    .line 2349
    const-string v2, "text/plain"

    .line 2350
    .line 2351
    const-string v3, "OK"

    .line 2352
    .line 2353
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v0

    .line 2357
    return-object v0

    .line 2358
    :cond_46
    const-string v4, "/cmd"

    .line 2359
    .line 2360
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2361
    .line 2362
    .line 2363
    move-result v4

    .line 2364
    if-eqz v4, :cond_49

    .line 2365
    .line 2366
    const-string v0, "shareUrl"

    .line 2367
    .line 2368
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    .line 2370
    .line 2371
    move-result-object v0

    .line 2372
    check-cast v0, Ljava/util/List;

    .line 2373
    .line 2374
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v0

    .line 2378
    check-cast v0, Ljava/lang/String;

    .line 2379
    .line 2380
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v2

    .line 2384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v2

    .line 2388
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2389
    .line 2390
    .line 2391
    move-result v2

    .line 2392
    if-ne v2, v8, :cond_48

    .line 2393
    .line 2394
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v0

    .line 2398
    iget-object v2, v1, Lcom/yunpan/appmanage/httpserver/RemoteServer;->mContext:Landroid/content/Context;

    .line 2399
    .line 2400
    const-string v3, "clipboard"

    .line 2401
    .line 2402
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v2

    .line 2406
    check-cast v2, Landroid/content/ClipboardManager;

    .line 2407
    .line 2408
    if-nez v2, :cond_47

    .line 2409
    .line 2410
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2411
    .line 2412
    const-string v2, "text/plain"

    .line 2413
    .line 2414
    const-string v3, "\u65e0\u6cd5\u83b7\u53d6\u526a\u5207\u677f\u5bf9\u8c61"

    .line 2415
    .line 2416
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v0

    .line 2420
    return-object v0

    .line 2421
    :cond_47
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2422
    .line 2423
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2424
    .line 2425
    .line 2426
    const-string v3, "label"

    .line 2427
    .line 2428
    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v0

    .line 2432
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2433
    .line 2434
    .line 2435
    const-string v0, "\u5df2\u590d\u5236"

    .line 2436
    .line 2437
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 2438
    .line 2439
    .line 2440
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2441
    .line 2442
    const-string v2, "text/plain"

    .line 2443
    .line 2444
    const-string v3, "OK"

    .line 2445
    .line 2446
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2447
    .line 2448
    .line 2449
    move-result-object v0

    .line 2450
    return-object v0

    .line 2451
    :cond_48
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2452
    .line 2453
    .line 2454
    move-result-object v2

    .line 2455
    new-instance v3, Lja/a;

    .line 2456
    .line 2457
    invoke-direct {v3, v7, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 2458
    .line 2459
    .line 2460
    invoke-virtual {v2, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 2461
    .line 2462
    .line 2463
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2464
    .line 2465
    const-string v2, "text/plain"

    .line 2466
    .line 2467
    const-string v3, "OK"

    .line 2468
    .line 2469
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v0

    .line 2473
    return-object v0

    .line 2474
    :cond_49
    const-string v4, "/download"

    .line 2475
    .line 2476
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2477
    .line 2478
    .line 2479
    move-result v4

    .line 2480
    if-eqz v4, :cond_4a

    .line 2481
    .line 2482
    const-string v0, "shareUrl"

    .line 2483
    .line 2484
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    .line 2486
    .line 2487
    move-result-object v0

    .line 2488
    check-cast v0, Ljava/util/List;

    .line 2489
    .line 2490
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v0

    .line 2494
    check-cast v0, Ljava/lang/String;

    .line 2495
    .line 2496
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2497
    .line 2498
    .line 2499
    move-result-object v2

    .line 2500
    new-instance v3, Lja/a;

    .line 2501
    .line 2502
    invoke-direct {v3, v6, v0}, Lja/a;-><init>(ILjava/lang/Object;)V

    .line 2503
    .line 2504
    .line 2505
    invoke-virtual {v2, v3}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 2506
    .line 2507
    .line 2508
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2509
    .line 2510
    const-string v2, "text/plain"

    .line 2511
    .line 2512
    const-string v3, "OK"

    .line 2513
    .line 2514
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2515
    .line 2516
    .line 2517
    move-result-object v0

    .line 2518
    return-object v0

    .line 2519
    :cond_4a
    const-string v4, "/newDir"

    .line 2520
    .line 2521
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2522
    .line 2523
    .line 2524
    move-result v0

    .line 2525
    if-eqz v0, :cond_4c

    .line 2526
    .line 2527
    const-string v0, "newDirPath"

    .line 2528
    .line 2529
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    .line 2531
    .line 2532
    move-result-object v0

    .line 2533
    check-cast v0, Ljava/util/List;

    .line 2534
    .line 2535
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v0

    .line 2539
    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2540
    .line 2541
    :try_start_1d
    new-instance v3, Ljava/io/File;

    .line 2542
    .line 2543
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2544
    .line 2545
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2546
    .line 2547
    .line 2548
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v5

    .line 2552
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 2553
    .line 2554
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    .line 2556
    .line 2557
    const-string v5, "/"

    .line 2558
    .line 2559
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    .line 2561
    .line 2562
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    .line 2564
    .line 2565
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v4

    .line 2569
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2570
    .line 2571
    .line 2572
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 2573
    .line 2574
    .line 2575
    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2576
    goto :goto_1a

    .line 2577
    :catch_10
    nop

    .line 2578
    :goto_1a
    if-eqz v2, :cond_4b

    .line 2579
    .line 2580
    :try_start_1e
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v2

    .line 2584
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2585
    .line 2586
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2587
    .line 2588
    .line 2589
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v4

    .line 2593
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 2594
    .line 2595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    .line 2597
    .line 2598
    const-string v4, "/"

    .line 2599
    .line 2600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    .line 2605
    .line 2606
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v0

    .line 2610
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 2611
    .line 2612
    .line 2613
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2614
    .line 2615
    const-string v2, "text/plain"

    .line 2616
    .line 2617
    const-string v3, "OK"

    .line 2618
    .line 2619
    invoke-static {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v0

    .line 2623
    return-object v0

    .line 2624
    :cond_4b
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2625
    .line 2626
    const-string v2, "\u51fa\u9519\u4e86"

    .line 2627
    .line 2628
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v0

    .line 2632
    return-object v0

    .line 2633
    :cond_4c
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2634
    .line 2635
    const-string v2, "\u4f60\u60f3\u5e72\u4ec0\u4e48\uff1f"

    .line 2636
    .line 2637
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 2641
    return-object v0

    .line 2642
    :catchall_2
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2643
    .line 2644
    const-string v2, "\u51fa\u9519\u4e86"

    .line 2645
    .line 2646
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v0

    .line 2650
    return-object v0

    .line 2651
    :goto_1b
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2652
    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2654
    .line 2655
    const-string v4, "\u51fa\u9519\u5566\uff1a"

    .line 2656
    .line 2657
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2658
    .line 2659
    .line 2660
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2661
    .line 2662
    .line 2663
    move-result-object v0

    .line 2664
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2668
    .line 2669
    .line 2670
    move-result-object v0

    .line 2671
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v0

    .line 2675
    return-object v0

    .line 2676
    :goto_1c
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v2

    .line 2680
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2681
    .line 2682
    .line 2683
    move-result-object v0

    .line 2684
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2685
    .line 2686
    .line 2687
    move-result-object v0

    .line 2688
    return-object v0

    .line 2689
    :goto_1d
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2690
    .line 2691
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2692
    .line 2693
    const-string v4, "IO\u9519\u8bef\uff1a"

    .line 2694
    .line 2695
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2696
    .line 2697
    .line 2698
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v0

    .line 2702
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    .line 2704
    .line 2705
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v0

    .line 2709
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v0

    .line 2713
    return-object v0

    .line 2714
    :cond_4d
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2715
    .line 2716
    const-string v2, "\u51fa\u9519\u4e86"

    .line 2717
    .line 2718
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v0

    .line 2722
    return-object v0
.end method

.method public start(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->isStarted:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->start(I)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/yunpan/appmanage/util/k;->s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/httpserver/NsdHelper;->unregisterService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/yunpan/appmanage/util/k;->s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/yunpan/appmanage/httpserver/NsdHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p1, Lcom/yunpan/appmanage/util/k;->s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 29
    .line 30
    iget p1, p1, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/httpserver/NsdHelper;->registerService(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer;->isStarted:Z

    .line 6
    .line 7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->r0:Lcom/yunpan/appmanage/httpserver/HttpMdns;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/yunpan/appmanage/httpserver/HttpMdns;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    nop

    .line 23
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/yunpan/appmanage/httpserver/NsdHelper;->unregisterService()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lcom/yunpan/appmanage/util/k;->s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

    .line 32
    .line 33
    :cond_1
    return-void
.end method
