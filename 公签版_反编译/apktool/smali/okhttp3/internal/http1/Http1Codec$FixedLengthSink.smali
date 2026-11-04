.class final Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lfg/o;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfg/o;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/internal/http1/Http1Codec;->sink:Lfg/j;

    .line 9
    .line 10
    invoke-interface {p1}, Lfg/x;->timeout()Lfg/c0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lfg/o;-><init>(Lfg/c0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lfg/o;

    .line 18
    .line 19
    iput-wide p2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 8
    .line 9
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gtz v4, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    .line 18
    .line 19
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lfg/o;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lfg/o;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    iput v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 31
    .line 32
    const-string v1, "unexpected end of stream"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lfg/j;

    .line 9
    .line 10
    invoke-interface {v0}, Lfg/j;->flush()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public timeout()Lfg/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lfg/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Lfg/i;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v1, p1, Lfg/i;->b:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    move-wide v5, p2

    .line 10
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 14
    .line 15
    cmp-long v2, p2, v0

    .line 16
    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;

    .line 20
    .line 21
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lfg/j;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2, p3}, Lfg/x;->write(Lfg/i;J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 27
    .line 28
    sub-long/2addr v0, p2

    .line 29
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "expected "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " bytes but received "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "closed"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method
