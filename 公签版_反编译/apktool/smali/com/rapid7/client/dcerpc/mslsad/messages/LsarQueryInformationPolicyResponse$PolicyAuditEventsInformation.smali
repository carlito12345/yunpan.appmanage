.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAuditEventsInformation;
.super Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyAuditEventsInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse<",
        "Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createPolicyInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAuditEventsInformation;->createPolicyInformation()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;

    move-result-object v0

    return-object v0
.end method

.method public createPolicyInformation()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;-><init>()V

    return-object v0
.end method

.method public getPolicyInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->POLICY_AUDIT_EVENTS_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
