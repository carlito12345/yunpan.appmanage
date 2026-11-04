.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_NUM:S = 0x23s


# instance fields
.field private final policyHandle:[B

.field private final userRight:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;


# direct methods
.method public constructor <init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 1

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->policyHandle:[B

    .line 7
    .line 8
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->userRight:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->policyHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->userRight:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;->userRight:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
