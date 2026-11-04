.class public final Lfg/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/j;


# instance fields
.field public final a:Lfg/x;

.field public final b:Lfg/i;

.field public c:Z


# direct methods
.method public constructor <init>(Lfg/x;)V
    .locals 1

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfg/s;->a:Lfg/x;

    .line 10
    .line 11
    new-instance p1, Lfg/i;

    .line 12
    .line 13
    invoke-direct {p1}, Lfg/i;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lfg/s;->b:Lfg/i;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final buffer()Lfg/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfg/s;->a:Lfg/x;

    .line 2
    .line 3
    iget-boolean v1, p0, Lfg/s;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lfg/s;->b:Lfg/i;

    .line 8
    .line 9
    iget-wide v2, v1, Lfg/i;->b:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-lez v6, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3}, Lfg/x;->write(Lfg/i;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lfg/x;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lfg/s;->c:Z

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    throw v1

    .line 38
    :cond_3
    :goto_2
    return-void
.end method

.method public final emit()Lfg/j;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    iget-wide v1, v0, Lfg/i;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-lez v5, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lfg/s;->a:Lfg/x;

    .line 16
    .line 17
    invoke-interface {v3, v0, v1, v2}, Lfg/x;->write(Lfg/i;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "closed"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final emitCompleteSegments()Lfg/j;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfg/i;->J()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v5, v1, v3

    .line 14
    .line 15
    if-lez v5, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lfg/s;->a:Lfg/x;

    .line 18
    .line 19
    invoke-interface {v3, v0, v1, v2}, Lfg/x;->write(Lfg/i;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "closed"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final flush()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    iget-wide v1, v0, Lfg/i;->b:J

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    iget-object v5, p0, Lfg/s;->a:Lfg/x;

    .line 12
    .line 13
    cmp-long v6, v1, v3

    .line 14
    .line 15
    if-lez v6, :cond_0

    .line 16
    .line 17
    invoke-interface {v5, v0, v1, v2}, Lfg/x;->write(Lfg/i;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {v5}, Lfg/x;->flush()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "closed"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/s;->a:Lfg/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lfg/x;->timeout()Lfg/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lfg/s;->a:Lfg/x;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 3
    invoke-virtual {v0, p1}, Lfg/i;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Lfg/l;)Lfg/j;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lfg/s;->c:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 13
    invoke-virtual {v0, p1}, Lfg/i;->T(Lfg/l;)V

    .line 14
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)Lfg/j;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Lfg/s;->c:Z

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 18
    invoke-virtual {v0, p1}, Lfg/i;->U([B)V

    .line 19
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)Lfg/j;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lfg/s;->c:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lfg/i;->V([BII)V

    .line 24
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    return-object p0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Lfg/i;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lfg/s;->c:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lfg/i;->write(Lfg/i;J)V

    .line 9
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeAll(Lfg/z;)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v2, p0, Lfg/s;->b:Lfg/i;

    .line 4
    .line 5
    const-wide/16 v3, 0x2000

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    check-cast v5, Lfg/d;

    .line 9
    .line 10
    invoke-virtual {v5, v2, v3, v4}, Lfg/d;->read(Lfg/i;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v0
.end method

.method public final writeByte(I)Lfg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lfg/i;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeDecimalLong(J)Lfg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lfg/i;->X(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "closed"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeHexadecimalUnsignedLong(J)Lfg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lfg/i;->Y(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "closed"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeInt(I)Lfg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lfg/i;->Z(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeShort(I)Lfg/j;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lfg/i;->b0(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "closed"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final writeUtf8(Ljava/lang/String;)Lfg/j;
    .locals 1

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lfg/s;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lfg/s;->b:Lfg/i;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lfg/i;->e0(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lfg/s;->emitCompleteSegments()Lfg/j;

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "closed"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
