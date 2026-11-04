.class Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantReferentArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPCSIDReferentConformantArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantReferentArray<",
        "Lcom/rapid7/client/dcerpc/objects/RPCSID;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantReferentArray;-><init>([Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)V

    return-void
.end method

.method public synthetic constructor <init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;-><init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntry()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;->createEntry()Lcom/rapid7/client/dcerpc/objects/RPCSID;

    move-result-object v0

    return-object v0
.end method

.method public createEntry()Lcom/rapid7/client/dcerpc/objects/RPCSID;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCSID;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;-><init>()V

    return-object v0
.end method
