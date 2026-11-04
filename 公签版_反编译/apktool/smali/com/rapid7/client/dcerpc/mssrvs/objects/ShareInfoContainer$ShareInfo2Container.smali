.class public Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo2Container;
.super Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfo2Container"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer<",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createBuffer(I)[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;

    return-object p1
.end method

.method public bridge synthetic createBuffer(I)[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo2Container;->createBuffer(I)[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;

    move-result-object p1

    return-object p1
.end method

.method public createEntry()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createEntry()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer$ShareInfo2Container;->createEntry()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;

    move-result-object v0

    return-object v0
.end method
