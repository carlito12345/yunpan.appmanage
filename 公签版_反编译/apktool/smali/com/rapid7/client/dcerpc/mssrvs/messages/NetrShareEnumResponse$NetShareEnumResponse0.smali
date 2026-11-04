.class public Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse0;
.super Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetShareEnumResponse0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse$NetShareEnumResponse0;->createShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct0;

    move-result-object v0

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
