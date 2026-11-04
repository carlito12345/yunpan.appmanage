.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;
    }
.end annotation


# instance fields
.field private sids:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;


# direct methods
.method public varargs constructor <init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;-><init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;->sids:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getSids()[Lcom/rapid7/client/dcerpc/objects/RPCSID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;->sids:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;->sids:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;->sids:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray$RPCSIDReferentConformantArray;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 23
    .line 24
    array-length v0, v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method
