.class public Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest0;
.super Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetShareEnumRequest0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;-><init>(JLjava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest$NetShareEnumRequest0;->getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse<",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse0;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse0;-><init>()V

    return-object v0
.end method

.method public getShareEnumLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_0_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 2
    .line 3
    return-object v0
.end method
