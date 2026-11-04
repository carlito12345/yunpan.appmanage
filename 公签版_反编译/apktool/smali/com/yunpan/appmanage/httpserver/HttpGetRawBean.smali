.class public Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public filePath:Ljava/lang/String;

.field public getUrl:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->getUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->filePath:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->mimeType:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getNanoRes()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->filePath:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :try_start_2
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->mimeType:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "; charset=utf-8"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-long v4, v4

    .line 40
    invoke-static {v0, v3, v2, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception v2

    .line 48
    move-object v6, v2

    .line 49
    move-object v2, v0

    .line 50
    move-object v0, v6

    .line 51
    goto :goto_0

    .line 52
    :catch_2
    move-exception v1

    .line 53
    move-object v2, v0

    .line 54
    move-object v0, v1

    .line 55
    move-object v1, v2

    .line 56
    :goto_0
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->createPlainTextResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public isUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/httpserver/HttpGetRawBean;->getUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
