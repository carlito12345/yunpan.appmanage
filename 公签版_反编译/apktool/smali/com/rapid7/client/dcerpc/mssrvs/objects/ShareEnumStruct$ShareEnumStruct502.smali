.class public Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct502;
.super Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEnumStruct502"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct$ShareEnumStruct502;->createShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo502Container;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;->SHARE_INFO_502_CONTAINER:Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumLevel;

    .line 2
    .line 3
    return-object v0
.end method
