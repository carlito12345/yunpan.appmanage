.class public final Lwh/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lwh/r;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lwh/r;->b:J

    .line 7
    .line 8
    iput-wide p5, p0, Lwh/r;->c:J

    .line 9
    .line 10
    iput-wide p7, p0, Lwh/r;->d:J

    .line 11
    .line 12
    return-void
.end method

.method public static c(JJ)Lwh/r;
    .locals 10

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lwh/r;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    move-wide v2, p0

    .line 9
    move-wide v4, p0

    .line 10
    move-wide v6, p2

    .line 11
    move-wide v8, p2

    .line 12
    invoke-direct/range {v1 .. v9}, Lwh/r;-><init>(JJJJ)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "Minimum value must be less than maximum value"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static d(JJ)Lwh/r;
    .locals 10

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    cmp-long v0, v4, p2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lwh/r;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-wide v2, v4

    .line 15
    move-wide v6, p0

    .line 16
    move-wide v8, p2

    .line 17
    invoke-direct/range {v1 .. v9}, Lwh/r;-><init>(JJJJ)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p1, "Minimum value must be less than maximum value"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "Smallest maximum value must be less than largest maximum value"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method


# virtual methods
.method public final a(JLwh/m;)I
    .locals 7

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    iget-wide v2, p0, Lwh/r;->a:J

    .line 5
    .line 6
    cmp-long v4, v2, v0

    .line 7
    .line 8
    if-ltz v4, :cond_0

    .line 9
    .line 10
    const-wide/32 v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iget-wide v4, p0, Lwh/r;->d:J

    .line 14
    .line 15
    cmp-long v6, v4, v0

    .line 16
    .line 17
    if-gtz v6, :cond_0

    .line 18
    .line 19
    cmp-long v0, p1, v2

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    cmp-long v0, p1, v4

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    long-to-int p2, p1

    .line 28
    return p2

    .line 29
    :cond_0
    new-instance v0, Lsh/a;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Invalid int value for "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p3, ": "

    .line 42
    .line 43
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final b(JLwh/m;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lwh/r;->a:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lwh/r;->d:J

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "): "

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    new-instance v1, Lsh/a;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Invalid value for "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, " (valid values "

    .line 31
    .line 32
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v1, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    new-instance p3, Lsh/a;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Invalid value (valid values "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p3, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lwh/r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lwh/r;

    .line 11
    .line 12
    iget-wide v3, p1, Lwh/r;->a:J

    .line 13
    .line 14
    iget-wide v5, p0, Lwh/r;->a:J

    .line 15
    .line 16
    cmp-long v1, v5, v3

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-wide v3, p0, Lwh/r;->b:J

    .line 21
    .line 22
    iget-wide v5, p1, Lwh/r;->b:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-wide v3, p0, Lwh/r;->c:J

    .line 29
    .line 30
    iget-wide v5, p1, Lwh/r;->c:J

    .line 31
    .line 32
    cmp-long v1, v3, v5

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-wide v3, p0, Lwh/r;->d:J

    .line 37
    .line 38
    iget-wide v5, p1, Lwh/r;->d:J

    .line 39
    .line 40
    cmp-long p1, v3, v5

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 47
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lwh/r;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Lwh/r;->b:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    const-wide/16 v4, 0x10

    .line 7
    .line 8
    add-long/2addr v2, v4

    .line 9
    long-to-int v3, v2

    .line 10
    shl-long/2addr v0, v3

    .line 11
    iget-wide v2, p0, Lwh/r;->c:J

    .line 12
    .line 13
    const-wide/16 v4, 0x30

    .line 14
    .line 15
    add-long v6, v2, v4

    .line 16
    .line 17
    long-to-int v7, v6

    .line 18
    shr-long/2addr v0, v7

    .line 19
    const-wide/16 v6, 0x20

    .line 20
    .line 21
    add-long/2addr v2, v6

    .line 22
    long-to-int v3, v2

    .line 23
    shl-long/2addr v0, v3

    .line 24
    iget-wide v2, p0, Lwh/r;->d:J

    .line 25
    .line 26
    add-long/2addr v6, v2

    .line 27
    long-to-int v7, v6

    .line 28
    shr-long/2addr v0, v7

    .line 29
    add-long/2addr v2, v4

    .line 30
    long-to-int v3, v2

    .line 31
    shl-long/2addr v0, v3

    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    shr-long/2addr v0, v2

    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    ushr-long v2, v0, v2

    .line 38
    .line 39
    xor-long/2addr v0, v2

    .line 40
    long-to-int v1, v0

    .line 41
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lwh/r;->a:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v3, 0x2f

    .line 12
    .line 13
    iget-wide v4, p0, Lwh/r;->b:J

    .line 14
    .line 15
    cmp-long v6, v1, v4

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v1, " - "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v1, p0, Lwh/r;->c:J

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-wide v4, p0, Lwh/r;->d:J

    .line 36
    .line 37
    cmp-long v6, v1, v4

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
