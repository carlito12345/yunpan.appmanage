.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x3s


# instance fields
.field private final objectHandle:[B

.field private final securityInformation:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->objectHandle:[B

    .line 6
    .line 7
    iput p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->securityInformation:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getObjectHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->objectHandle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;-><init>()V

    return-object v0
.end method

.method public getSecurityInformation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->securityInformation:I

    .line 2
    .line 3
    return v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->getObjectHandle()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;->getSecurityInformation()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
