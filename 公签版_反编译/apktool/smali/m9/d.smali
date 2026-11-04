.class public final Lm9/d;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/RequestBody;

.field public final b:Lnh/b;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lnh/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm9/d;->a:Lokhttp3/RequestBody;

    .line 5
    .line 6
    iput-object p2, p0, Lm9/d;->b:Lnh/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lm9/d;->a:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lm9/d;->a:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final writeTo(Lfg/j;)V
    .locals 1

    .line 1
    new-instance v0, Lm9/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lm9/c;-><init>(Lm9/d;Lfg/j;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lfg/e0;->b(Lfg/x;)Lfg/s;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lm9/d;->a:Lokhttp3/RequestBody;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lfg/j;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lfg/s;->flush()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
