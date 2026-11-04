.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private accountName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private attributes:I

.field private description:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private index:I

.field private rid:I


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
.method public getAccountName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->accountName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAttributes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->attributes:I

    .line 2
    .line 3
    return v0
.end method

.method public getDescription()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->description:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->rid:I

    .line 2
    .line 3
    return v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->accountName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->description:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->index:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->rid:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->attributes:I

    .line 18
    .line 19
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->accountName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->description:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
