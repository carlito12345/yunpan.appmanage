.class public Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final domainName:Ljava/lang/String;

.field private final domainSID:Lcom/rapid7/client/dcerpc/dto/SID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/dto/SID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDomainSID()Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object v1, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "\""

    .line 6
    .line 7
    invoke-static {v1, v0, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "null"

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;->domainSID:Lcom/rapid7/client/dcerpc/dto/SID;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v0, v2, v3

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v2, v0

    .line 24
    .line 25
    const-string v0, "PolicyDomainInfo{domainName: %s, domainSID: %s}"

    .line 26
    .line 27
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
