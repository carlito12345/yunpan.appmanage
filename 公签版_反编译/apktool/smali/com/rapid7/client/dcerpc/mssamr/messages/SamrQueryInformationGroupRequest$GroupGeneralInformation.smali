.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest$GroupGeneralInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupGeneralInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getGroupInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;->GROUP_GENERAL_INFORMATION:Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest$GroupGeneralInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;-><init>()V

    return-object v0
.end method
