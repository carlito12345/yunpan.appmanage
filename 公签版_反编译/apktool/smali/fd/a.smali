.class public final Lfd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/j;
.implements Lvc/g;


# instance fields
.field public final a:Z

.field public b:I

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lfd/a;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I[B)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfd/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lfd/a;->b:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lfd/a;->c:J

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    shr-long/2addr v0, v2

    .line 16
    add-int/lit8 v3, p1, 0x4

    .line 17
    .line 18
    invoke-static {v0, v1, p2, v3}, Lrd/a;->f(J[BI)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lfd/a;->c:J

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x8

    .line 24
    .line 25
    invoke-static {v0, v1, p2, v3}, Lrd/a;->f(J[BI)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lfd/a;->d:J

    .line 29
    .line 30
    shr-long/2addr v0, v2

    .line 31
    add-int/lit8 v2, p1, 0xc

    .line 32
    .line 33
    invoke-static {v0, v1, p2, v2}, Lrd/a;->f(J[BI)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lfd/a;->d:J

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x10

    .line 39
    .line 40
    invoke-static {v0, v1, p2, p1}, Lrd/a;->f(J[BI)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x14

    .line 44
    .line 45
    return p1

    .line 46
    :cond_0
    iget v0, p0, Lfd/a;->b:I

    .line 47
    .line 48
    int-to-long v0, v0

    .line 49
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 50
    .line 51
    .line 52
    iget-wide v0, p0, Lfd/a;->c:J

    .line 53
    .line 54
    add-int/lit8 v2, p1, 0x2

    .line 55
    .line 56
    invoke-static {v0, v1, p2, v2}, Lrd/a;->f(J[BI)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Lfd/a;->d:J

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x6

    .line 62
    .line 63
    invoke-static {v0, v1, p2, p1}, Lrd/a;->f(J[BI)V

    .line 64
    .line 65
    .line 66
    const/16 p1, 0xa

    .line 67
    .line 68
    return p1
.end method

.method public final i(II[B)I
    .locals 2

    .line 1
    iget-boolean p2, p0, Lfd/a;->a:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p3}, Lrd/a;->a(I[B)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput p2, p0, Lfd/a;->b:I

    .line 10
    .line 11
    add-int/lit8 p2, p1, 0x4

    .line 12
    .line 13
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    shl-int/lit8 p2, p2, 0x20

    .line 24
    .line 25
    or-int/2addr p2, v0

    .line 26
    int-to-long v0, p2

    .line 27
    iput-wide v0, p0, Lfd/a;->c:J

    .line 28
    .line 29
    add-int/lit8 p2, p1, 0xc

    .line 30
    .line 31
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    add-int/lit8 p1, p1, 0x10

    .line 36
    .line 37
    invoke-static {p1, p3}, Lrd/a;->b(I[B)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    shl-int/lit8 p2, p2, 0x20

    .line 42
    .line 43
    or-int/2addr p1, p2

    .line 44
    int-to-long p1, p1

    .line 45
    iput-wide p1, p0, Lfd/a;->d:J

    .line 46
    .line 47
    const/16 p1, 0x14

    .line 48
    .line 49
    return p1

    .line 50
    :cond_0
    invoke-static {p1, p3}, Lrd/a;->a(I[B)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput p2, p0, Lfd/a;->b:I

    .line 55
    .line 56
    add-int/lit8 p2, p1, 0x2

    .line 57
    .line 58
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    int-to-long v0, p2

    .line 63
    iput-wide v0, p0, Lfd/a;->c:J

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x6

    .line 66
    .line 67
    invoke-static {p1, p3}, Lrd/a;->b(I[B)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    int-to-long p1, p1

    .line 72
    iput-wide p1, p0, Lfd/a;->d:J

    .line 73
    .line 74
    const/16 p1, 0xa

    .line 75
    .line 76
    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfd/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xa

    .line 9
    .line 10
    :goto_0
    return v0
.end method
