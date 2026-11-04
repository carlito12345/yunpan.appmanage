.class public final Lyf/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/PushbackInputStream;

.field public b:J

.field public final c:[B

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/io/PushbackInputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lyf/i;->b:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    iput-object v0, p0, Lyf/i;->c:[B

    .line 12
    .line 13
    iput-object p1, p0, Lyf/i;->a:Ljava/io/PushbackInputStream;

    .line 14
    .line 15
    iput-wide p2, p0, Lyf/i;->d:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyf/i;->a:Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lyf/i;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lyf/i;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    .line 2
    :cond_0
    aget-byte v0, v0, v2

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/i;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 6

    .line 4
    iget-wide v0, p0, Lyf/i;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    iget-wide v2, p0, Lyf/i;->b:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v4, p3

    sub-long/2addr v0, v2

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    .line 6
    :cond_1
    iget-object v0, p0, Lyf/i;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    iget-wide p2, p0, Lyf/i;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lyf/i;->b:J

    :cond_2
    return p1
.end method
