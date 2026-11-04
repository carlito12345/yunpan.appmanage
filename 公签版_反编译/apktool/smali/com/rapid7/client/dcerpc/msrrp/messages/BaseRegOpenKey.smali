.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/messages/HandleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessMask:I

.field private final hKey:[B

.field private final options:I

.field private final subKey:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;


# direct methods
.method public constructor <init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;II)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->hKey:[B

    .line 7
    .line 8
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->subKey:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->options:I

    .line 11
    .line 12
    iput p4, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->accessMask:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->getResponseObject()Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->hKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->subKey:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

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
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->options:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;->accessMask:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
