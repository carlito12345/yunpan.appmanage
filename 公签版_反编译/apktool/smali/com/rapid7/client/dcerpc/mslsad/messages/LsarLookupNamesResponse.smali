.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private referencedDomains:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

.field private translatedSIDs:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;


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
.method public getReferencedDomains()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->referencedDomains:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTranslatedSIDs()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->translatedSIDs:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->referencedDomains:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->referencedDomains:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

    .line 20
    .line 21
    :goto_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->translatedSIDs:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
