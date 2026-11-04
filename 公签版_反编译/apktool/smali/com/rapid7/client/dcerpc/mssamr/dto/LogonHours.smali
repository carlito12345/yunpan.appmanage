.class public Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
    }
.end annotation


# instance fields
.field private logonHours:[B

.field private unitsPerWeek:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;->fromLogonHoursLength(I)Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->unitsPerWeek:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Expecting non-null logonHours"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 12
    .line 13
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getLogonHours()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnitsPerWeek()Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->unitsPerWeek:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->unitsPerWeek:Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours$UnitsPerWeek;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;->logonHours:[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v0, v2, v3

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aput-object v1, v2, v0

    .line 18
    .line 19
    const-string v0, "LogonHours{unitsPerWeek: %s, size(logonHours): %d"

    .line 20
    .line 21
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
