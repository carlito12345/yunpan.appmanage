.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_NUM:S = 0xfs


# instance fields
.field private final lookupLevel:S

.field private final lsaprsidEnumBuffer:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;

.field private final policyHandle:[B


# direct methods
.method public constructor <init>([B[Lcom/rapid7/client/dcerpc/objects/RPCSID;S)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->policyHandle:[B

    .line 7
    .line 8
    new-instance p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;-><init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->lsaprsidEnumBuffer:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;

    .line 14
    .line 15
    iput-short p3, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->lookupLevel:S

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->policyHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->lsaprsidEnumBuffer:Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRSIDEnumBuffer;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 21
    .line 22
    .line 23
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;->lookupLevel:S

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->pad(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
