.class public Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    }
.end annotation


# instance fields
.field private final bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field private final in:Ljava/io/PushbackInputStream;

.field private skipped:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    if-eqz p1, :cond_8

    .line 4
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 5
    new-array p1, v2, [B

    .line 6
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v6, :cond_3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_2

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_1

    aget-byte v9, p1, v7

    if-ne v9, v4, :cond_1

    aget-byte v9, p1, v6

    if-nez v9, :cond_1

    aget-byte v9, p1, v8

    if-nez v9, :cond_1

    .line 8
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 9
    aget-byte v2, p1, v7

    if-nez v2, :cond_2

    aget-byte v2, p1, v6

    if-ne v2, v4, :cond_2

    aget-byte v2, p1, v8

    if-ne v2, v5, :cond_2

    .line 10
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    .line 11
    :cond_2
    aget-byte v2, p1, v0

    const/16 v8, -0x11

    if-ne v2, v8, :cond_3

    aget-byte v2, p1, v7

    const/16 v8, -0x45

    if-ne v2, v8, :cond_3

    aget-byte v2, p1, v6

    const/16 v6, -0x41

    if-ne v2, v6, :cond_3

    .line 12
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    .line 13
    :cond_3
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_4

    aget-byte v6, p1, v7

    if-ne v6, v4, :cond_4

    .line 14
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    .line 15
    aget-byte v2, p1, v7

    if-ne v2, v5, :cond_5

    .line 16
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    .line 17
    :cond_5
    :goto_0
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    :goto_1
    if-lez v3, :cond_6

    .line 18
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_6
    if-eqz p2, :cond_7

    .line 19
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    :cond_7
    return-void

    .line 20
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invalid input stream: null is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 2
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 6
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public skip(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public final declared-synchronized skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    int-to-long v0, v0

    .line 12
    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Ljava/io/PushbackInputStream;->skip(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    :goto_0
    cmp-long v4, v2, v0

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    .line 25
    .line 26
    .line 27
    const-wide/16 v4, 0x1

    .line 28
    .line 29
    add-long/2addr v2, v4

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    return-object p0

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_3

    .line 40
    :goto_2
    throw v0

    .line 41
    :goto_3
    goto :goto_2
.end method
