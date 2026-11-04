.class public abstract Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAccountDomainInformation;,
        Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyPrimaryDomainInformation;,
        Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAuditEventsInformation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x7s


# instance fields
.field private final policyHandle:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;->policyHandle:[B

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getPolicyHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;->policyHandle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getPolicyInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;->policyHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;->getPolicyInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->getInfoLevel()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
