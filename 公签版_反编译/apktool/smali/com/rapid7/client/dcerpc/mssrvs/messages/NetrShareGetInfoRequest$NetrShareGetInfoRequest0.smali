.class public Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest0;
.super Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetrShareGetInfoRequest0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest0;->getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse0;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse0;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse0;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse0;-><init>()V

    return-object v0
.end method

.method public getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;->LPSHARE_INFO_0:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;

    .line 2
    .line 3
    return-object v0
.end method
