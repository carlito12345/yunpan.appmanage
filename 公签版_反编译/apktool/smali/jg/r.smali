.class public final Ljg/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Ljava/util/BitSet;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget v0, p0, Ljg/r;->i:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Ljg/r;->f:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 11
    .line 12
    const-string v0, "archive with entries but no folders"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    int-to-long v0, v0

    .line 19
    iget-wide v2, p0, Ljg/r;->e:J

    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-gtz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Ljg/r;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, 0x400

    .line 30
    .line 31
    div-long/2addr v0, v2

    .line 32
    int-to-long v2, p1

    .line 33
    cmp-long v4, v2, v0

    .line 34
    .line 35
    if-ltz v4, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance v2, Lhg/b;

    .line 39
    .line 40
    invoke-direct {v2, v0, v1, p1}, Lhg/b;-><init>(JI)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v0, "archive doesn\'t contain enough substreams for entries"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final b()J
    .locals 10

    .line 1
    iget v0, p0, Ljg/r;->a:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    const-wide/16 v3, 0x10

    .line 5
    .line 6
    mul-long v1, v1, v3

    .line 7
    .line 8
    div-int/lit8 v5, v0, 0x8

    .line 9
    .line 10
    int-to-long v5, v5

    .line 11
    add-long/2addr v1, v5

    .line 12
    iget v5, p0, Ljg/r;->f:I

    .line 13
    .line 14
    int-to-long v6, v5

    .line 15
    const-wide/16 v8, 0x1e

    .line 16
    .line 17
    mul-long v6, v6, v8

    .line 18
    .line 19
    add-long/2addr v6, v1

    .line 20
    iget-wide v1, p0, Ljg/r;->b:J

    .line 21
    .line 22
    const-wide/16 v8, 0x16

    .line 23
    .line 24
    mul-long v1, v1, v8

    .line 25
    .line 26
    add-long/2addr v1, v6

    .line 27
    iget-wide v6, p0, Ljg/r;->c:J

    .line 28
    .line 29
    int-to-long v8, v5

    .line 30
    sub-long v8, v6, v8

    .line 31
    .line 32
    mul-long v8, v8, v3

    .line 33
    .line 34
    add-long/2addr v8, v1

    .line 35
    iget-wide v1, p0, Ljg/r;->d:J

    .line 36
    .line 37
    sub-long/2addr v1, v6

    .line 38
    int-to-long v3, v5

    .line 39
    add-long/2addr v1, v3

    .line 40
    const-wide/16 v3, 0x8

    .line 41
    .line 42
    mul-long v1, v1, v3

    .line 43
    .line 44
    add-long/2addr v1, v8

    .line 45
    mul-long v6, v6, v3

    .line 46
    .line 47
    add-long/2addr v6, v1

    .line 48
    iget v1, p0, Ljg/r;->h:I

    .line 49
    .line 50
    int-to-long v2, v1

    .line 51
    const-wide/16 v8, 0x64

    .line 52
    .line 53
    mul-long v2, v2, v8

    .line 54
    .line 55
    add-long/2addr v2, v6

    .line 56
    mul-int/lit8 v5, v5, 0x8

    .line 57
    .line 58
    mul-int/lit8 v0, v0, 0x8

    .line 59
    .line 60
    add-int/2addr v0, v5

    .line 61
    mul-int/lit8 v1, v1, 0x4

    .line 62
    .line 63
    add-int/2addr v1, v0

    .line 64
    int-to-long v0, v1

    .line 65
    add-long/2addr v2, v0

    .line 66
    const-wide/16 v0, 0x2

    .line 67
    .line 68
    mul-long v2, v2, v0

    .line 69
    .line 70
    return-wide v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Ljg/r;->h:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Ljg/r;->f:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljg/r;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x400

    .line 18
    .line 19
    div-long/2addr v2, v4

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x3

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v0, v3, v4

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object v1, v3, v0

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    aput-object v2, v3, v0

    .line 35
    .line 36
    const-string v0, "Archive with %,d entries in %,d folders, estimated size %,d KiB."

    .line 37
    .line 38
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
