.class Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;
.super Lfg/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->source(Lfg/z;)Lfg/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;Lfg/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfg/n;-><init>(Lfg/z;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public read(Lfg/i;J)J
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfg/n;->read(Lfg/i;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long p3, p1, v4

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    move-wide v6, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v6, v2

    .line 18
    :goto_0
    add-long/2addr v0, v6

    .line 19
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    .line 20
    .line 21
    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    .line 22
    .line 23
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    cmp-long p3, p1, v4

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    .line 34
    .line 35
    cmp-long p3, v0, v2

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    .line 40
    .line 41
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$000(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    .line 46
    .line 47
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$100(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->totalBytesRead:J

    .line 52
    .line 53
    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$1;->this$0:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    .line 54
    .line 55
    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->access$200(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lokhttp3/ResponseBody;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-wide p1
.end method
