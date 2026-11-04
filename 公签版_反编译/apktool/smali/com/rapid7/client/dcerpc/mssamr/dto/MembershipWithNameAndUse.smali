.class public Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;
.super Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
.source "SourceFile"


# instance fields
.field private final use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field private final useValue:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;-><init>(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    int-to-short p1, p4

    .line 5
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/dto/SIDUse;->fromValue(S)Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 10
    .line 11
    iput p4, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->useValue:I

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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;

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
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->getUseValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->getUseValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne p1, v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->use:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->useValue:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->useValue:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\""

    .line 12
    .line 13
    invoke-static {v1, v0, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "null"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->getUse()Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, " ("

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ")"

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;->getRelativeID()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;->getUseValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v4, 0x4

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    aput-object v2, v4, v5

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    aput-object v0, v4, v2

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    aput-object v3, v4, v0

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    aput-object v1, v4, v0

    .line 82
    .line 83
    const-string v0, "MembershipWithNameAndUse{relativeID: %d, name: %s, use: %d%s}"

    .line 84
    .line 85
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
