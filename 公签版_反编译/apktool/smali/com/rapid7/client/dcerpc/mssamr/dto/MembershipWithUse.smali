.class public Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;
.super Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;
.source "SourceFile"


# instance fields
.field private final use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field private final useValue:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;-><init>(J)V

    .line 2
    .line 3
    .line 4
    int-to-short p1, p3

    .line 5
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/dto/SIDUse;->fromValue(S)Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 10
    .line 11
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->useValue:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->getUseValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->getUseValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne v1, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->useValue:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->useValue:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, " ("

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ")"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;->getRelativeID()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;->useValue:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x3

    .line 48
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    aput-object v1, v3, v4

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aput-object v2, v3, v1

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    aput-object v0, v3, v1

    .line 58
    .line 59
    const-string v0, "MembershipWithUse{relativeID: %d, use: %d%s}"

    .line 60
    .line 61
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
