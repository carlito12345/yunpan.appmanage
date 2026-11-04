.class public Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# instance fields
.field private final entries:I

.field private final lsaprSIDInformationArray:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;


# direct methods
.method public varargs constructor <init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->lsaprSIDInformationArray:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformation;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformation;-><init>(Lcom/rapid7/client/dcerpc/objects/RPCSID;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->lsaprSIDInformationArray:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;->addLSAPRSIDInformation(Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformation;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    array-length p1, p1

    .line 35
    iput p1, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->entries:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->lsaprSIDInformationArray:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->entries:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;->lsaprSIDInformationArray:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDInformationArray;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method
