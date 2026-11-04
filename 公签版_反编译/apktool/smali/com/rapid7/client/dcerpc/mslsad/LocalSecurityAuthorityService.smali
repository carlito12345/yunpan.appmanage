.class public Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;
.super Lcom/rapid7/client/dcerpc/service/Service;
.source "SourceFile"


# static fields
.field public static final MAXIMUM_ALLOWED:I = 0x2000000


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;-><init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parsePolicyHandle([B)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public closePolicyHandle(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarCloseRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarCloseRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 15
    .line 16
    sget-object v0, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    sget-object v0, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_INVALID_HANDLE:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_1
    new-instance v0, Lcom/rapid7/client/dcerpc/RPCException;

    .line 45
    .line 46
    const-string v1, "LsarClose"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public getAccountRights(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Lcom/rapid7/client/dcerpc/dto/SID;)[Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->parseSID(Lcom/rapid7/client/dcerpc/dto/SID;)Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsRequest;-><init>([BLcom/rapid7/client/dcerpc/objects/RPCSID;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "LsarEnumerateAccountRights"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->getPrivNames()[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeStrings([Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public getAccountsWithUserRight(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightRequest;-><init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 16
    .line 17
    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object p2, p1, v1

    .line 21
    .line 22
    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_NO_MORE_ENTRIES:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    aput-object p2, p1, v1

    .line 26
    .line 27
    const-string p2, "LsarEnumerateAccountsWithUserRight"

    .line 28
    .line 29
    invoke-virtual {p0, v0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountsWithUserRightResponse;->getSids()[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSIDs([Lcom/rapid7/client/dcerpc/objects/RPCSID;)[Lcom/rapid7/client/dcerpc/dto/SID;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public getPolicyAccountDomainInformation(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAccountDomainInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAccountDomainInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "LsarQueryInformationPolicy[5]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;->getPolicyInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAccountDomInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAccountDomInfo;->getDomainName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAccountDomInfo;->getDomainSid()Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;)Lcom/rapid7/client/dcerpc/dto/SID;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;-><init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/dto/SID;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public getPolicyAuditEventsInfo(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventsInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAuditEventsInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyAuditEventsInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "LsarQueryInformationPolicy[2]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;->getPolicyInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventsInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getAuditingMode()C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyAuditEventsInfo;->getEventAuditingOptions()[I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyAuditEventsInfo;-><init>(Z[I)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public getPolicyPrimaryDomainInformation(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyPrimaryDomainInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyRequest$PolicyPrimaryDomainInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "LsarQueryInformationPolicy[3]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarQueryInformationPolicyResponse;->getPolicyInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyPrimaryDomInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyPrimaryDomInfo;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRPolicyPrimaryDomInfo;->getSid()Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;)Lcom/rapid7/client/dcerpc/dto/SID;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyDomainInfo;-><init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/dto/SID;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public varargs lookupNamesForSIDs(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;[Lcom/rapid7/client/dcerpc/dto/SID;)[Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;

    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/rapid7/client/dcerpc/service/Service;->parseSIDs([Lcom/rapid7/client/dcerpc/dto/SID;)[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    move-result-object p3

    .line 3
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;->getValue()S

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsRequest;-><init>([B[Lcom/rapid7/client/dcerpc/objects/RPCSID;S)V

    const/4 p1, 0x3

    .line 4
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_SOME_NOT_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 v1, 0x1

    aput-object p2, p1, v1

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_NONE_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 v2, 0x2

    aput-object p2, p1, v2

    const-string p2, "LsarLookupSIDs"

    invoke-virtual {p0, v0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;

    .line 5
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupSIDsResponse;->getTranslatedNames()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedNames;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedNames;->getNames()[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    new-array p1, p3, [Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;

    .line 7
    :cond_0
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    .line 8
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 9
    aget-object v0, p1, p3

    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedName;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/2addr p3, v1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public varargs lookupNamesForSIDs(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;[Lcom/rapid7/client/dcerpc/dto/SID;)[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;->LSAP_LOOKUP_WKSTA:Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;

    invoke-virtual {p0, p1, v0, p2}, Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;->lookupNamesForSIDs(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;[Lcom/rapid7/client/dcerpc/dto/SID;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs lookupSIDsForNames(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;[Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 7

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/rapid7/client/dcerpc/service/Service;->parseNonNullTerminatedStrings([Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    move-result-object p3

    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;->getValue()S

    move-result p2

    invoke-direct {v0, p1, p3, p2}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;-><init>([B[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;S)V

    const/4 p1, 0x3

    .line 4
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_SOME_NOT_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 v1, 0x1

    aput-object p2, p1, v1

    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_NONE_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    const/4 v2, 0x2

    aput-object p2, p1, v2

    const-string p2, "LsarLookupNames"

    invoke-virtual {p0, v0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;

    .line 5
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->getTranslatedSIDs()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSIDs;->getSIDs()[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    new-array p2, p3, [Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;->getReferencedDomains()Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRReferencedDomainList;->getDomains()[Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTrustInformation;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    new-array p1, p3, [Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTrustInformation;

    .line 9
    :cond_1
    array-length v0, p2

    new-array v0, v0, [Lcom/rapid7/client/dcerpc/dto/SID;

    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 11
    aget-object v3, p2, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;->getDomainIndex()J

    move-result-wide v4

    long-to-int v5, v4

    if-gez v5, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    aget-object v4, p1, v5

    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTrustInformation;->getSid()Lcom/rapid7/client/dcerpc/objects/RPCSID;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0, v4, p3}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;Z)Lcom/rapid7/client/dcerpc/dto/SID;

    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mslsad/objects/LSAPRTranslatedSID;->getRelativeId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/rapid7/client/dcerpc/dto/SID;->resolveRelativeID(J)Lcom/rapid7/client/dcerpc/dto/SID;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public varargs lookupSIDsForNames(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;[Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;->LSAP_LOOKUP_WKSTA:Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;

    invoke-virtual {p0, p1, v0, p2}, Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;->lookupSIDsForNames(Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;Lcom/rapid7/client/dcerpc/mslsad/dto/LSAPLookupLevel;[Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/dto/SID;

    move-result-object p1

    return-object p1
.end method

.method public openPolicyHandle()Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;->openPolicyHandle(I)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;

    move-result-object v0

    return-object v0
.end method

.method public openPolicyHandle(I)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;
    .locals 1

    .line 2
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;->openPolicyHandle(Ljava/lang/String;I)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;

    move-result-object p1

    return-object p1
.end method

.method public openPolicyHandle(Ljava/lang/String;I)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;
    .locals 1

    if-nez p1, :cond_0

    .line 3
    const-string p1, ""

    .line 4
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarOpenPolicy2Request;

    .line 5
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarOpenPolicy2Request;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V

    .line 6
    const-string p1, "LsarOpenPolicy2"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mslsad/LocalSecurityAuthorityService;->parsePolicyHandle([B)Lcom/rapid7/client/dcerpc/mslsad/dto/PolicyHandle;

    move-result-object p1

    return-object p1
.end method
