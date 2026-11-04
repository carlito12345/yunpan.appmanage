.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final hKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;->hKey:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;->hKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeEmptyRPCUnicodeString(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
