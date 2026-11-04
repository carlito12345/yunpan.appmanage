.class public Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse503;
.super Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetrShareGetInfoResponse503"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse$NetrShareGetInfoResponse503;->createShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

    move-result-object v0

    return-object v0
.end method

.method public getShareInfoLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;->LPSHARE_INFO_503:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoLevel;

    .line 2
    .line 3
    return-object v0
.end method
