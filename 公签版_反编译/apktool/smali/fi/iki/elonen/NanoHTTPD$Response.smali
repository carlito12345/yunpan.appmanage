.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;,
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

.field private keepAlive:Z

.field private final lowerCaseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

.field wpVideoStreamTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Lcom/yunpan/appmanage/bean/JcifsBean;J)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 15
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$1;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 18
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 19
    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 20
    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_0

    .line 21
    :cond_0
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 22
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 23
    :goto_0
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    const/4 p5, 0x1

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 24
    iput-boolean p5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 3
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$1;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 6
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 8
    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_0

    .line 9
    :cond_0
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 10
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 11
    :goto_0
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    const/4 p5, 0x1

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 12
    iput-boolean p5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 27
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$1;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 30
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    const-wide/16 p1, 0x0

    const/4 p3, 0x1

    cmp-long v0, p4, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 34
    iput-boolean p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public static bridge synthetic A(Lfi/iki/elonen/NanoHTTPD$Response;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic r(Lfi/iki/elonen/NanoHTTPD$Response;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object p0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x4000

    .line 6
    .line 7
    long-to-int v4, v2

    .line 8
    new-array v4, v4, [B

    .line 9
    .line 10
    const-wide/16 v5, -0x1

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    cmp-long v8, p2, v5

    .line 14
    .line 15
    if-nez v8, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    iget-object v6, v1, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v8, -0x1

    .line 27
    const-wide/16 v9, 0x0

    .line 28
    .line 29
    if-nez v6, :cond_9

    .line 30
    .line 31
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 32
    .line 33
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 34
    .line 35
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 36
    .line 37
    monitor-enter v6

    .line 38
    move-wide/from16 v11, p2

    .line 39
    .line 40
    :goto_1
    cmp-long v13, v11, v9

    .line 41
    .line 42
    if-gtz v13, :cond_1

    .line 43
    .line 44
    if-eqz v5, :cond_6

    .line 45
    .line 46
    :cond_1
    :try_start_0
    iget-object v13, v1, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 49
    .line 50
    iget-object v15, v14, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 51
    .line 52
    iget-object v15, v15, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->wpVideoStreamTag:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-nez v13, :cond_2

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_2
    if-eqz v5, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v15

    .line 68
    move-wide v2, v15

    .line 69
    :goto_2
    iget-object v13, v14, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 70
    .line 71
    iget-object v14, v13, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 72
    .line 73
    if-eqz v14, :cond_4

    .line 74
    .line 75
    long-to-int v3, v2

    .line 76
    invoke-virtual {v14, v4, v7, v3}, Lce/x0;->read([BII)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_5

    .line 83
    :cond_4
    iget-object v13, v13, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 84
    .line 85
    if-eqz v13, :cond_5

    .line 86
    .line 87
    long-to-int v3, v2

    .line 88
    invoke-virtual {v13, v4, v7, v3}, Lvd/x;->read([BII)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 v2, -0x1

    .line 94
    :goto_3
    if-gtz v2, :cond_7

    .line 95
    .line 96
    :cond_6
    :goto_4
    monitor-exit v6

    .line 97
    goto :goto_9

    .line 98
    :cond_7
    invoke-virtual {v0, v4, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    .line 100
    .line 101
    if-nez v5, :cond_8

    .line 102
    .line 103
    int-to-long v2, v2

    .line 104
    sub-long/2addr v11, v2

    .line 105
    :cond_8
    const-wide/16 v2, 0x4000

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v0

    .line 110
    :cond_9
    move-wide/from16 v2, p2

    .line 111
    .line 112
    :cond_a
    :goto_6
    cmp-long v6, v2, v9

    .line 113
    .line 114
    if-gtz v6, :cond_b

    .line 115
    .line 116
    if-eqz v5, :cond_11

    .line 117
    .line 118
    :cond_b
    const-wide/16 v11, 0x4000

    .line 119
    .line 120
    if-eqz v5, :cond_c

    .line 121
    .line 122
    const-wide/16 v13, 0x4000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_c
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 126
    .line 127
    .line 128
    move-result-wide v13

    .line 129
    :goto_7
    iget-object v6, v1, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 130
    .line 131
    if-eqz v6, :cond_d

    .line 132
    .line 133
    long-to-int v14, v13

    .line 134
    invoke-virtual {v6, v4, v7, v14}, Ljava/io/InputStream;->read([BII)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    goto :goto_8

    .line 139
    :cond_d
    iget-object v6, v1, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_10

    .line 146
    .line 147
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 148
    .line 149
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 150
    .line 151
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 152
    .line 153
    iget-object v15, v6, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 154
    .line 155
    if-eqz v15, :cond_e

    .line 156
    .line 157
    long-to-int v6, v13

    .line 158
    invoke-virtual {v15, v4, v7, v6}, Lce/x0;->read([BII)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    goto :goto_8

    .line 163
    :cond_e
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 164
    .line 165
    if-eqz v6, :cond_f

    .line 166
    .line 167
    long-to-int v14, v13

    .line 168
    invoke-virtual {v6, v4, v7, v14}, Lvd/x;->read([BII)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    goto :goto_8

    .line 173
    :cond_f
    const/4 v6, -0x1

    .line 174
    goto :goto_8

    .line 175
    :cond_10
    iget-object v6, v1, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 176
    .line 177
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/JcifsBean;->in:Ljava/io/InputStream;

    .line 178
    .line 179
    long-to-int v14, v13

    .line 180
    invoke-virtual {v6, v4, v7, v14}, Ljava/io/InputStream;->read([BII)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    :goto_8
    if-gtz v6, :cond_12

    .line 185
    .line 186
    :cond_11
    :goto_9
    return-void

    .line 187
    :cond_12
    invoke-virtual {v0, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    .line 189
    .line 190
    if-nez v5, :cond_a

    .line 191
    .line 192
    int-to-long v13, v6

    .line 193
    sub-long/2addr v2, v13

    .line 194
    goto :goto_6
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 9
    .line 10
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->j(Lcom/yunpan/appmanage/bean/JcifsBean;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public closeConnection(Z)V
    .locals 2

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 6
    .line 7
    const-string v1, "close"

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCloseConnection()Z
    .locals 2

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "close"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, ": "

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "\r\n"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "GMT"

    .line 11
    .line 12
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 20
    .line 21
    if-eqz v1, :cond_b

    .line 22
    .line 23
    new-instance v1, Ljava/io/PrintWriter;

    .line 24
    .line 25
    new-instance v2, Ljava/io/BufferedWriter;

    .line 26
    .line 27
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 28
    .line 29
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$ContentType;

    .line 30
    .line 31
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v4, v5}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 48
    .line 49
    .line 50
    const-string v2, "HTTP/1.1 "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 57
    .line 58
    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, " \r\n"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    const-string v4, "Content-Type"

    .line 76
    .line 77
    invoke-virtual {p0, v1, v4, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_0
    :goto_0
    const-string v2, "date"

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 91
    .line 92
    const-string v2, "Date"

    .line 93
    .line 94
    new-instance v4, Ljava/util/Date;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p0, v1, v4, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const-string v0, "connection"

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    const-string v0, "Connection"

    .line 153
    .line 154
    iget-boolean v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 155
    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    const-string v2, "keep-alive"

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    const-string v2, "close"

    .line 162
    .line 163
    :goto_2
    invoke-virtual {p0, v1, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    const-string v0, "content-length"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    iput-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 175
    .line 176
    :cond_5
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 177
    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    const-string v0, "Content-Encoding"

    .line 181
    .line 182
    const-string v2, "gzip"

    .line 183
    .line 184
    invoke-virtual {p0, v1, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 196
    .line 197
    if-nez v0, :cond_8

    .line 198
    .line 199
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->wpVideoStreamTag:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_7

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    const-wide/16 v2, 0x0

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    :goto_3
    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 212
    .line 213
    :goto_4
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 214
    .line 215
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 216
    .line 217
    if-eq v0, v4, :cond_9

    .line 218
    .line 219
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 220
    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    const-string v0, "Transfer-Encoding"

    .line 224
    .line 225
    const-string v4, "chunked"

    .line 226
    .line 227
    invoke-virtual {p0, v1, v0, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_9
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 232
    .line 233
    if-nez v0, :cond_a

    .line 234
    .line 235
    invoke-virtual {p0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J

    .line 236
    .line 237
    .line 238
    move-result-wide v2

    .line 239
    :cond_a
    :goto_5
    const-string v0, "\r\n"

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, p1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 254
    .line 255
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 259
    .line 260
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->j(Lcom/yunpan/appmanage/bean/JcifsBean;)V

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_b
    new-instance p1, Ljava/lang/Error;

    .line 265
    .line 266
    const-string v0, "\u53d1\u9001\u72b6\u6001\u4e0d\u80fd\u4e3a\u7a7a"

    .line 267
    .line 268
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 273
    .line 274
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->jcifsBean:Lcom/yunpan/appmanage/bean/JcifsBean;

    .line 278
    .line 279
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->j(Lcom/yunpan/appmanage/bean/JcifsBean;)V

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->h()Ljava/util/logging/Logger;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 287
    .line 288
    const-string v2, "\u53d1\u9001\u6570\u636e\u5230\u5ba2\u6237\u7aef\u5931\u8d25"

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_7
    return-void
.end method

.method public sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    .locals 3

    .line 1
    const-string v0, "content-length"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->h()Ljava/util/logging/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "content-length was no number "

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Content-Length: "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\r\n"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-wide p2
.end method

.method public setChunkedTransfer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 2
    .line 3
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 2
    .line 3
    return-void
.end method

.method public setGzipEncoding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 2
    .line 3
    return-void
.end method
