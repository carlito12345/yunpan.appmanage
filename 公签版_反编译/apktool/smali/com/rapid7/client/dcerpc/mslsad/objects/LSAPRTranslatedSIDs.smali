.class public Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;


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
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 12
    .line 13
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getSIDs()[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "LSAPR_TRANSLATED_SIDS{Sids:"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ge v1, v3, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 30
    .line 31
    aput-object v2, v3, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    array-length v1, v2

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_1
    if-ge v3, v1, :cond_1

    .line 39
    .line 40
    aget-object v4, v2, v3

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 49
    .line 50
    array-length v2, v1

    .line 51
    :goto_2
    if-ge v0, v2, :cond_2

    .line 52
    .line 53
    aget-object v3, v1, v0

    .line 54
    .line 55
    invoke-virtual {v3, p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-array p1, v0, [Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->sids:[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
