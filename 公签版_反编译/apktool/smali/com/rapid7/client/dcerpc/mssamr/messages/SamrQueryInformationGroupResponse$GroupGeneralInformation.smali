.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupGeneralInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createGroupInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse$GroupGeneralInformation;->createGroupInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;

    move-result-object v0

    return-object v0
.end method

.method public createGroupInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;-><init>()V

    return-object v0
.end method

.method public getGroupInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;->GROUP_GENERAL_INFORMATION:Lcom/rapid7/client/dcerpc/mssamr/objects/GroupInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
