.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAccountDomainInformation;
.super Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyAccountDomainInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest<",
        "Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAccountDomInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getPolicyInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;->POLICY_ACCOUNT_DOMAIN_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/PolicyInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAccountDomainInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAccountDomainInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAccountDomainInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAccountDomainInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse$PolicyAccountDomainInformation;-><init>()V

    return-object v0
.end method
