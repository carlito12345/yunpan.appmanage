.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final classLen:I

.field private final hKey:[B

.field private final index:I

.field private final nameLen:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->hKey:[B

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->index:I

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->nameLen:I

    .line 11
    .line 12
    iput p4, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->classLen:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->hKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->index:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->nameLen:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeEmptyRPCUnicodeString(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;->classLen:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeEmptyRPCUnicodeString(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeLong(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
