.class public Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedDomains;
.super Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPREnumerationBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPREnumerationBuffer<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/DomainInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPREnumerationBuffer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic initEntity()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/EnumeratedDomains;->initEntity()Lcom/rapid7/client/dcerpc/mssamr/objects/DomainInfo;

    move-result-object v0

    return-object v0
.end method

.method public initEntity()Lcom/rapid7/client/dcerpc/mssamr/objects/DomainInfo;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/DomainInfo;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/DomainInfo;-><init>()V

    return-object v0
.end method
