.class public final Lja/i;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/RequestBody;

.field public final b:Lma/b;

.field public final c:Lcom/yunpan/appmanage/bean/WpTaskBean;

.field public d:J


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/bean/WpTaskBean;Lokhttp3/RequestBody;Lma/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lja/i;->d:J

    .line 7
    .line 8
    iput-object p1, p0, Lja/i;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 9
    .line 10
    iput-object p2, p0, Lja/i;->a:Lokhttp3/RequestBody;

    .line 11
    .line 12
    iput-object p3, p0, Lja/i;->b:Lma/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lja/i;->d:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lja/i;->a:Lokhttp3/RequestBody;

    .line 10
    .line 11
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lja/i;->d:J

    .line 16
    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-wide v0, p0, Lja/i;->d:J

    .line 23
    .line 24
    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lja/i;->a:Lokhttp3/RequestBody;

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
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lja/i;->contentLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    new-instance v0, Lja/h;

    .line 11
    .line 12
    iget-object v3, p0, Lja/i;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 13
    .line 14
    iget-object v6, p0, Lja/i;->b:Lma/b;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lja/h;-><init>(Lfg/j;Lcom/yunpan/appmanage/bean/WpTaskBean;JLma/b;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lfg/e0;->b(Lfg/x;)Lfg/s;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lja/i;->a:Lokhttp3/RequestBody;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lfg/j;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lfg/s;->flush()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
