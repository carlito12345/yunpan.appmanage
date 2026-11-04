.class public final Ldd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/a;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Z

.field public e:Z


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
.method public final c(I[B)I
    .locals 3

    .line 1
    iget-wide v0, p0, Ldd/g;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p2, p1}, Lrd/a;->g(J[BI)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x8

    .line 7
    .line 8
    iget-wide v1, p0, Ldd/g;->b:J

    .line 9
    .line 10
    invoke-static {v1, v2, p2, v0}, Lrd/a;->g(J[BI)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x10

    .line 14
    .line 15
    iget v1, p0, Ldd/g;->c:I

    .line 16
    .line 17
    int-to-long v1, v1

    .line 18
    invoke-static {v1, v2, p2, v0}, Lrd/a;->f(J[BI)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, p1, 0x14

    .line 22
    .line 23
    add-int/lit8 v1, p1, 0x15

    .line 24
    .line 25
    iget-boolean v2, p0, Ldd/g;->d:Z

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, p2, v0

    .line 29
    .line 30
    add-int/lit8 v0, p1, 0x16

    .line 31
    .line 32
    iget-boolean v2, p0, Ldd/g;->e:Z

    .line 33
    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, p2, v1

    .line 36
    .line 37
    sub-int/2addr v0, p1

    .line 38
    return v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSize()J
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(II[B)I
    .locals 3

    .line 1
    invoke-static {p1, p3}, Lrd/a;->c(I[B)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ldd/g;->a:J

    .line 6
    .line 7
    add-int/lit8 p2, p1, 0x8

    .line 8
    .line 9
    invoke-static {p2, p3}, Lrd/a;->c(I[B)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Ldd/g;->b:J

    .line 14
    .line 15
    add-int/lit8 p2, p1, 0x10

    .line 16
    .line 17
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Ldd/g;->c:I

    .line 22
    .line 23
    add-int/lit8 p2, p1, 0x14

    .line 24
    .line 25
    add-int/lit8 v0, p1, 0x15

    .line 26
    .line 27
    aget-byte p2, p3, p2

    .line 28
    .line 29
    and-int/lit16 p2, p2, 0xff

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    if-lez p2, :cond_0

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    :goto_0
    iput-boolean p2, p0, Ldd/g;->d:Z

    .line 39
    .line 40
    add-int/lit8 p2, p1, 0x16

    .line 41
    .line 42
    aget-byte p3, p3, v0

    .line 43
    .line 44
    and-int/lit16 p3, p3, 0xff

    .line 45
    .line 46
    if-lez p3, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :cond_1
    iput-boolean v1, p0, Ldd/g;->e:Z

    .line 50
    .line 51
    sub-int/2addr p2, p1

    .line 52
    return p2
.end method

.method public final size()I
    .locals 1

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbQueryInfoStandard[allocationSize="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Ldd/g;->a:J

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",endOfFile="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Ldd/g;->b:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",numberOfLinks="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ldd/g;->c:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",deletePending="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Ldd/g;->d:Z

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",directory="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v2, p0, Ldd/g;->e:Z

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "]"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method
