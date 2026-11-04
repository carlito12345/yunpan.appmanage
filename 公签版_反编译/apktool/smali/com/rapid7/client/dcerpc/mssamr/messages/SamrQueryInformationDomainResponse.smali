.class public abstract Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLockoutInformation;,
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;,
        Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainPasswordInformation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestResponse;"
    }
.end annotation


# instance fields
.field private domainInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract createDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->domainInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readShort()S

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->getInfoLevel()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->createDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->domainInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->getInfoLevel()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aput-object v0, v2, v3

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    aput-object v1, v2, v0

    .line 57
    .line 58
    const-string v0, "Incoming DOMAIN_INFORMATION_CLASS %d does not match expected: %d"

    .line 59
    .line 60
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->domainInformation:Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 70
    .line 71
    :goto_0
    return-void
.end method
