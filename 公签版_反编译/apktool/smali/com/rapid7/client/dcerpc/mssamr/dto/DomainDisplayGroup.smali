.class public Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;
.super Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;
.source "SourceFile"


# instance fields
.field private final attributes:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->attributes:I

    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;

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
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->getAttributes()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->getAttributes()I

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

.method public getAttributes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->attributes:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->getAttributes()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null"

    .line 6
    .line 7
    const-string v2, "\""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v2, v0, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->getComment()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplay;->getComment()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;->getRelativeID()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;->getAttributes()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x4

    .line 52
    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    aput-object v2, v4, v5

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v0, v4, v2

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    aput-object v1, v4, v0

    .line 62
    .line 63
    const/4 v0, 0x3

    .line 64
    aput-object v3, v4, v0

    .line 65
    .line 66
    const-string v0, "DomainDisplayGroup{relativeID: %d, name: %s, comment: %s, attributes: %d}"

    .line 67
    .line 68
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
