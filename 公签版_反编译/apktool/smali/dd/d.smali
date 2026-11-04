.class public final Ldd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/a;
.implements Ldd/h;
.implements Lvc/g;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I


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
.method public final i(II[B)I
    .locals 2

    .line 1
    invoke-static {p1, p3}, Lrd/a;->c(I[B)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ldd/d;->a:J

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
    iput-wide v0, p0, Ldd/d;->b:J

    .line 14
    .line 15
    add-int/lit8 p2, p1, 0x18

    .line 16
    .line 17
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Ldd/d;->c:I

    .line 22
    .line 23
    add-int/lit8 p2, p1, 0x1c

    .line 24
    .line 25
    invoke-static {p2, p3}, Lrd/a;->b(I[B)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p0, Ldd/d;->d:I

    .line 30
    .line 31
    add-int/lit8 p2, p1, 0x20

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2
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
    const-string v2, "SmbInfoAllocation[alloc="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Ldd/d;->a:J

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",free="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Ldd/d;->b:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",sectPerAlloc="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ldd/d;->c:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",bytesPerSect="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ldd/d;->d:I

    .line 41
    .line 42
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public final w()J
    .locals 4

    .line 1
    iget-wide v0, p0, Ldd/d;->a:J

    .line 2
    .line 3
    iget v2, p0, Ldd/d;->c:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    mul-long v0, v0, v2

    .line 7
    .line 8
    iget v2, p0, Ldd/d;->d:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    mul-long v0, v0, v2

    .line 12
    .line 13
    return-wide v0
.end method
