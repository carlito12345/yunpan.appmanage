.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static OP_NUM:S = 0xcs


# instance fields
.field private final hKey:[B

.field private final securityDescriptorInfo:I

.field private final securityDescriptorSize:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    sget-short v0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->OP_NUM:S

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->hKey:[B

    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->securityDescriptorInfo:I

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->securityDescriptorSize:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->hKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->securityDescriptorInfo:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;->securityDescriptorSize:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->setCbInSecurityDescriptor(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->setLpSecurityDescriptor([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 28
    .line 29
    .line 30
    return-void
.end method
