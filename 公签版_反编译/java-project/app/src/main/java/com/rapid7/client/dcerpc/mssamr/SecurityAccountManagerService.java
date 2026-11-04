package com.rapid7.client.dcerpc.mssamr;

import com.rapid7.client.dcerpc.RPCException;
import com.rapid7.client.dcerpc.dto.ContextHandle;
import com.rapid7.client.dcerpc.dto.SID;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.mssamr.dto.AliasGeneralInformation;
import com.rapid7.client.dcerpc.mssamr.dto.AliasHandle;
import com.rapid7.client.dcerpc.mssamr.dto.DomainDisplayGroup;
import com.rapid7.client.dcerpc.mssamr.dto.DomainHandle;
import com.rapid7.client.dcerpc.mssamr.dto.DomainLockoutInfo;
import com.rapid7.client.dcerpc.mssamr.dto.DomainLogoffInfo;
import com.rapid7.client.dcerpc.mssamr.dto.DomainPasswordInfo;
import com.rapid7.client.dcerpc.mssamr.dto.GroupGeneralInformation;
import com.rapid7.client.dcerpc.mssamr.dto.GroupHandle;
import com.rapid7.client.dcerpc.mssamr.dto.LogonHours;
import com.rapid7.client.dcerpc.mssamr.dto.Membership;
import com.rapid7.client.dcerpc.mssamr.dto.MembershipWithAttributes;
import com.rapid7.client.dcerpc.mssamr.dto.MembershipWithName;
import com.rapid7.client.dcerpc.mssamr.dto.MembershipWithNameAndUse;
import com.rapid7.client.dcerpc.mssamr.dto.MembershipWithUse;
import com.rapid7.client.dcerpc.mssamr.dto.ServerHandle;
import com.rapid7.client.dcerpc.mssamr.dto.UserAllInformation;
import com.rapid7.client.dcerpc.mssamr.dto.UserHandle;
import com.rapid7.client.dcerpc.mssamr.messages.SamrCloseHandleRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrConnect2Request;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateAliasesInDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateDomainsInSamServerRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateGroupsInDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateUsersInDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetAliasMembershipRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetAliasMembershipResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetGroupsForUserRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetGroupsForUserResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetMembersInAliasRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetMembersInAliasResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetMembersInGroupRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrGetMembersInGroupResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupDomainInSamServerRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupDomainInSamServerResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupIdsInDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupIdsInDomainResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupNamesInDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrLookupNamesInDomainResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrOpenAliasRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrOpenDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrOpenGroupRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrOpenUserRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Request;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Response;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationAliasResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomain2Request;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationDomainResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationGroupResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQueryInformationUserResponse;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQuerySecurityObjectRequest;
import com.rapid7.client.dcerpc.mssamr.messages.SamrQuerySecurityObjectResponse;
import com.rapid7.client.dcerpc.mssamr.objects.GroupMembership;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRAliasGeneralInformation;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainDisplayGroup;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainDisplayGroupBuffer;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLockoutInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainLogoffInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainPasswordInfo;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRGroupGeneralInformation;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRLogonHours;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRPSIDArray;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRRIDEnumeration;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRSRSecurityDescriptor;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRUserAllInformation;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import com.rapid7.client.dcerpc.service.Service;
import com.rapid7.client.dcerpc.transport.RPCTransport;
import java.rmi.UnmarshalException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SecurityAccountManagerService extends Service {
    public static final int MAXIMUM_ALLOWED = 33554432;

    public interface EnumerationCallback {
        String getName();

        SamrEnumerateResponse request(int i10);
    }

    public SecurityAccountManagerService(RPCTransport rPCTransport) {
        super(rPCTransport);
    }

    private <T> void enumerate(List<T> list, EnumerationCallback enumerationCallback) throws RPCException {
        int i10 = 0;
        while (true) {
            SamrEnumerateResponse samrEnumerateResponseRequest = enumerationCallback.request(i10);
            int returnValue = samrEnumerateResponseRequest.getReturnValue();
            int resumeHandle = samrEnumerateResponseRequest.getResumeHandle();
            List<T> list2 = samrEnumerateResponseRequest.getList();
            SystemErrorCode systemErrorCode = SystemErrorCode.ERROR_MORE_ENTRIES;
            if (!systemErrorCode.is(returnValue) && !SystemErrorCode.ERROR_NO_MORE_ITEMS.is(returnValue) && !SystemErrorCode.ERROR_SUCCESS.is(returnValue)) {
                throw new RPCException(samrEnumerateResponseRequest.getClass().getName(), returnValue);
            }
            if (list2 != null) {
                list.addAll(list2);
            }
            if (!systemErrorCode.is(returnValue)) {
                return;
            } else {
                i10 = resumeHandle;
            }
        }
    }

    private AliasHandle parseAliasHandle(HandleResponse handleResponse) {
        return new AliasHandle(handleResponse.getHandle());
    }

    private DomainHandle parseDomainHandle(HandleResponse handleResponse) {
        return new DomainHandle(handleResponse.getHandle());
    }

    private GroupHandle parseGroupHandle(HandleResponse handleResponse) {
        return new GroupHandle(handleResponse.getHandle());
    }

    private MembershipWithAttributes[] parseGroupMemberships(List<GroupMembership> list) {
        if (list == null) {
            return new MembershipWithAttributes[0];
        }
        int size = list.size();
        MembershipWithAttributes[] membershipWithAttributesArr = new MembershipWithAttributes[size];
        for (int i10 = 0; i10 < size; i10++) {
            GroupMembership groupMembership = list.get(i10);
            if (groupMembership == null) {
                membershipWithAttributesArr[i10] = null;
            } else {
                membershipWithAttributesArr[i10] = new MembershipWithAttributes(groupMembership.getRelativeID(), groupMembership.getAttributes());
            }
        }
        return membershipWithAttributesArr;
    }

    private LogonHours parseSAMPRLogonHours(SAMPRLogonHours sAMPRLogonHours) {
        return new LogonHours(sAMPRLogonHours.getLogonHours());
    }

    private MembershipWithName[] parseSAMPRRIDEnumerations(List<? extends SAMPRRIDEnumeration> list) {
        MembershipWithName[] membershipWithNameArr = new MembershipWithName[list.size()];
        int i10 = 0;
        for (SAMPRRIDEnumeration sAMPRRIDEnumeration : list) {
            if (sAMPRRIDEnumeration == null) {
                membershipWithNameArr[i10] = null;
                i10++;
            } else {
                membershipWithNameArr[i10] = new MembershipWithName(sAMPRRIDEnumeration.getRelativeId(), sAMPRRIDEnumeration.getName().getValue());
                i10++;
            }
        }
        return membershipWithNameArr;
    }

    private byte[] parseSAMPRSRSecurityDescriptor(SAMPRSRSecurityDescriptor sAMPRSRSecurityDescriptor) {
        if (sAMPRSRSecurityDescriptor == null) {
            return null;
        }
        return sAMPRSRSecurityDescriptor.getSecurityDescriptor();
    }

    private ServerHandle parseServerHandle(HandleResponse handleResponse) {
        return new ServerHandle(handleResponse.getHandle());
    }

    private UserHandle parseUserHandle(HandleResponse handleResponse) {
        return new UserHandle(handleResponse.getHandle());
    }

    public boolean closeHandle(ContextHandle contextHandle) throws RPCException {
        HandleResponse handleResponse = (HandleResponse) call(new SamrCloseHandleRequest(parseHandle(contextHandle)));
        if (SystemErrorCode.ERROR_SUCCESS.is(handleResponse.getReturnValue())) {
            return true;
        }
        if (SystemErrorCode.STATUS_INVALID_HANDLE.is(handleResponse.getReturnValue())) {
            return false;
        }
        throw new RPCException("SamrCloseHandle", handleResponse.getReturnValue());
    }

    public AliasGeneralInformation getAliasGeneralInformation(AliasHandle aliasHandle) {
        SAMPRAliasGeneralInformation sAMPRAliasGeneralInformation = (SAMPRAliasGeneralInformation) ((SamrQueryInformationAliasResponse) callExpectSuccess(new SamrQueryInformationAliasRequest.AliasGeneralInformation(parseHandle(aliasHandle)), "SamrQueryInformationAlias[1]")).getAliasInformation();
        if (sAMPRAliasGeneralInformation == null) {
            return null;
        }
        return new AliasGeneralInformation(parseRPCUnicodeString(sAMPRAliasGeneralInformation.getName()), sAMPRAliasGeneralInformation.getMemberCount(), parseRPCUnicodeString(sAMPRAliasGeneralInformation.getAdminComment()));
    }

    public Membership[] getAliasMembership(DomainHandle domainHandle, SID... sidArr) {
        long[] array = ((SamrGetAliasMembershipResponse) callExpectSuccess(new SamrGetAliasMembershipRequest(parseHandle(domainHandle), new SAMPRPSIDArray(parseSIDs(sidArr))), "GetAliasMembership")).getMembership().getArray();
        if (array == null) {
            array = new long[0];
        }
        int length = array.length;
        Membership[] membershipArr = new Membership[length];
        for (int i10 = 0; i10 < length; i10++) {
            membershipArr[i10] = new Membership(array[i10]);
        }
        return membershipArr;
    }

    public MembershipWithName[] getAliasesForDomain(DomainHandle domainHandle) {
        return getAliasesForDomain(domainHandle, 65535);
    }

    public DomainDisplayGroup[] getDomainGroupInformationForDomain(DomainHandle domainHandle) {
        return getDomainGroupInformationForDomain(domainHandle, -1, 65535);
    }

    public DomainLockoutInfo getDomainLockoutInfo(DomainHandle domainHandle) {
        SAMPRDomainLockoutInfo sAMPRDomainLockoutInfo = (SAMPRDomainLockoutInfo) ((SamrQueryInformationDomainResponse) callExpectSuccess(new SamrQueryInformationDomain2Request.DomainLockoutInformation(parseHandle(domainHandle)), "SamrQueryInformationDomain2[12]")).getDomainInformation();
        if (sAMPRDomainLockoutInfo == null) {
            return null;
        }
        return new DomainLockoutInfo(sAMPRDomainLockoutInfo.getLockoutDuration(), sAMPRDomainLockoutInfo.getLockoutObservationWindow(), sAMPRDomainLockoutInfo.getLockoutThreshold());
    }

    public DomainLogoffInfo getDomainLogOffInfo(DomainHandle domainHandle) {
        SAMPRDomainLogoffInfo sAMPRDomainLogoffInfo = (SAMPRDomainLogoffInfo) ((SamrQueryInformationDomainResponse) callExpectSuccess(new SamrQueryInformationDomainRequest.DomainLogOffInformation(parseHandle(domainHandle)), "SamrQueryInformationDomain[3]")).getDomainInformation();
        if (sAMPRDomainLogoffInfo == null) {
            return null;
        }
        return new DomainLogoffInfo(sAMPRDomainLogoffInfo.getForceLogoff());
    }

    public DomainPasswordInfo getDomainPasswordInfo(DomainHandle domainHandle) {
        SAMPRDomainPasswordInfo sAMPRDomainPasswordInfo = (SAMPRDomainPasswordInfo) ((SamrQueryInformationDomainResponse) callExpectSuccess(new SamrQueryInformationDomainRequest.DomainPasswordInformation(parseHandle(domainHandle)), "SamrQueryInformationDomain[1]")).getDomainInformation();
        if (sAMPRDomainPasswordInfo == null) {
            return null;
        }
        return new DomainPasswordInfo(sAMPRDomainPasswordInfo.getMinPasswordLength(), sAMPRDomainPasswordInfo.getPasswordHistoryLength(), sAMPRDomainPasswordInfo.getPasswordProperties(), sAMPRDomainPasswordInfo.getMaxPasswordAge(), sAMPRDomainPasswordInfo.getMinPasswordAge());
    }

    public MembershipWithName[] getDomainsForServer(ServerHandle serverHandle) {
        return getDomainsForServer(serverHandle, 65535);
    }

    public GroupGeneralInformation getGroupGeneralInformation(GroupHandle groupHandle) {
        SAMPRGroupGeneralInformation sAMPRGroupGeneralInformation = (SAMPRGroupGeneralInformation) ((SamrQueryInformationGroupResponse) callExpectSuccess(new SamrQueryInformationGroupRequest.GroupGeneralInformation(parseHandle(groupHandle)), "SamrQueryInformationGroup[1]")).getGroupInformation();
        if (sAMPRGroupGeneralInformation == null) {
            return null;
        }
        return new GroupGeneralInformation(parseRPCUnicodeString(sAMPRGroupGeneralInformation.getName()), sAMPRGroupGeneralInformation.getAttributes(), sAMPRGroupGeneralInformation.getMemberCount(), parseRPCUnicodeString(sAMPRGroupGeneralInformation.getAdminComment()));
    }

    public MembershipWithName[] getGroupsForDomain(DomainHandle domainHandle) {
        return getGroupsForDomain(domainHandle, 65535);
    }

    public MembershipWithAttributes[] getGroupsForUser(UserHandle userHandle) {
        return parseGroupMemberships(((SamrGetGroupsForUserResponse) callExpectSuccess(new SamrGetGroupsForUserRequest(parseHandle(userHandle)), "GetGroupsForUser")).getGroups());
    }

    public MembershipWithAttributes[] getMembersForGroup(GroupHandle groupHandle) {
        return parseGroupMemberships(((SamrGetMembersInGroupResponse) callExpectSuccess(new SamrGetMembersInGroupRequest(parseHandle(groupHandle)), "GetMembersForGroup")).getList());
    }

    public SID[] getMembersInAlias(AliasHandle aliasHandle) {
        return parseRPCSIDs(((SamrGetMembersInAliasResponse) callExpectSuccess(new SamrGetMembersInAliasRequest(parseHandle(aliasHandle)), "SamrGetMembersInAlias")).getSids());
    }

    public SID getSIDForDomain(ServerHandle serverHandle, String str) {
        return parseRPCSID(((SamrLookupDomainInSamServerResponse) callExpectSuccess(new SamrLookupDomainInSamServerRequest(parseHandle(serverHandle), RPCUnicodeString.NonNullTerminated.of(str)), "SamrLookupDomainInSamServer")).getDomainId());
    }

    public byte[] getSecurityObject(ContextHandle contextHandle) {
        return getSecurityObject(contextHandle, true, true, true, true);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    public UserAllInformation getUserAllInformation(UserHandle userHandle) throws UnmarshalException {
        SAMPRUserAllInformation sAMPRUserAllInformation = (SAMPRUserAllInformation) ((SamrQueryInformationUserResponse) callExpectSuccess(new SamrQueryInformationUserRequest.UserAllInformation(parseHandle(userHandle)), "SamrQueryInformationUser[21]")).getUserInformation();
        if (sAMPRUserAllInformation == null) {
            return null;
        }
        try {
            return new UserAllInformation(sAMPRUserAllInformation.getLastLogon(), sAMPRUserAllInformation.getLastLogoff(), sAMPRUserAllInformation.getPasswordLastSet(), sAMPRUserAllInformation.getAccountExpires(), sAMPRUserAllInformation.getPasswordCanChange(), sAMPRUserAllInformation.getPasswordMustChange(), parseRPCUnicodeString(sAMPRUserAllInformation.getUserName()), parseRPCUnicodeString(sAMPRUserAllInformation.getFullName()), parseRPCUnicodeString(sAMPRUserAllInformation.getHomeDirectory()), parseRPCUnicodeString(sAMPRUserAllInformation.getHomeDirectoryDrive()), parseRPCUnicodeString(sAMPRUserAllInformation.getScriptPath()), parseRPCUnicodeString(sAMPRUserAllInformation.getProfilePath()), parseRPCUnicodeString(sAMPRUserAllInformation.getAdminComment()), parseRPCUnicodeString(sAMPRUserAllInformation.getWorkStations()), parseRPCUnicodeString(sAMPRUserAllInformation.getUserComment()), parseRPCUnicodeString(sAMPRUserAllInformation.getParameters()), sAMPRUserAllInformation.getLmOwfPassword().getBuffer(), sAMPRUserAllInformation.getNtOwfPassword().getBuffer(), sAMPRUserAllInformation.getPrivateData().getValue(), parseSAMPRSRSecurityDescriptor(sAMPRUserAllInformation.getSecurityDescriptor()), sAMPRUserAllInformation.getUserId(), sAMPRUserAllInformation.getPrimaryGroupId(), sAMPRUserAllInformation.getUserAccountControl(), sAMPRUserAllInformation.getWhichFields(), parseSAMPRLogonHours(sAMPRUserAllInformation.getLogonHours()), sAMPRUserAllInformation.getBadPasswordCount(), sAMPRUserAllInformation.getLogonCount(), sAMPRUserAllInformation.getCountryCode(), sAMPRUserAllInformation.getCodePage(), sAMPRUserAllInformation.getLmPasswordPresent() != 0, sAMPRUserAllInformation.getNtPasswordPresent() != 0, sAMPRUserAllInformation.getPasswordExpired() != 0, sAMPRUserAllInformation.getPrivateDataSensitive() != 0);
        } catch (IllegalArgumentException | NullPointerException e7) {
            throw new UnmarshalException(e7.getMessage(), e7);
        }
    }

    public MembershipWithName[] getUsersForDomain(DomainHandle domainHandle) {
        return getUsersForDomain(domainHandle, 0);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    public MembershipWithUse[] lookupNamesInDomain(DomainHandle domainHandle, String... strArr) throws UnmarshalException {
        SamrLookupNamesInDomainResponse samrLookupNamesInDomainResponse = (SamrLookupNamesInDomainResponse) callExpect(new SamrLookupNamesInDomainRequest(parseHandle(domainHandle), parseNonNullTerminatedStrings(strArr)), "SamrLookupNamesInDomain", SystemErrorCode.ERROR_SUCCESS, SystemErrorCode.STATUS_SOME_NOT_MAPPED, SystemErrorCode.STATUS_NONE_MAPPED);
        long[] array = samrLookupNamesInDomainResponse.getRelativeIds().getArray();
        if (array == null) {
            array = new long[0];
        }
        long[] array2 = samrLookupNamesInDomainResponse.getUse().getArray();
        if (array2 == null) {
            array2 = new long[0];
        }
        if (array.length != array2.length) {
            throw new UnmarshalException(String.format("Expected RelativeIds.length == Uses.length but %d != %d", Integer.valueOf(array.length), Integer.valueOf(array2.length)));
        }
        int length = array.length;
        MembershipWithUse[] membershipWithUseArr = new MembershipWithUse[length];
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = array[i10];
            if (j10 == 0) {
                membershipWithUseArr[i10] = null;
            } else {
                membershipWithUseArr[i10] = new MembershipWithUse(j10, (int) array2[i10]);
            }
        }
        return membershipWithUseArr;
    }

    public MembershipWithNameAndUse[] lookupRIDsInDomain(DomainHandle domainHandle, long... jArr) {
        SamrLookupIdsInDomainResponse samrLookupIdsInDomainResponse = (SamrLookupIdsInDomainResponse) callExpect(new SamrLookupIdsInDomainRequest(parseHandle(domainHandle), jArr), "SamrLookupIdsInDomain", SystemErrorCode.ERROR_SUCCESS, SystemErrorCode.STATUS_SOME_NOT_MAPPED, SystemErrorCode.STATUS_NONE_MAPPED);
        List<RPCUnicodeString.NonNullTerminated> names = samrLookupIdsInDomainResponse.getNames();
        long[] array = samrLookupIdsInDomainResponse.getUses().getArray();
        if (array == null) {
            array = new long[0];
        }
        MembershipWithNameAndUse[] membershipWithNameAndUseArr = new MembershipWithNameAndUse[names.size()];
        for (int i10 = 0; i10 < names.size(); i10++) {
            String rPCUnicodeString = parseRPCUnicodeString(names.get(i10));
            if (rPCUnicodeString == null) {
                membershipWithNameAndUseArr[i10] = null;
            } else {
                membershipWithNameAndUseArr[i10] = new MembershipWithNameAndUse(jArr[i10], rPCUnicodeString, (int) array[i10]);
            }
        }
        return membershipWithNameAndUseArr;
    }

    public AliasHandle openAlias(DomainHandle domainHandle, long j10) {
        return openAlias(domainHandle, j10, 131084);
    }

    public DomainHandle openDomain(ServerHandle serverHandle, SID sid) {
        return openDomain(serverHandle, sid, 33554432);
    }

    public GroupHandle openGroup(DomainHandle domainHandle, long j10) {
        return openGroup(domainHandle, j10, 33554432);
    }

    public ServerHandle openServer() {
        return openServer("");
    }

    public UserHandle openUser(DomainHandle domainHandle, long j10) {
        return openUser(domainHandle, j10, 131355);
    }

    public MembershipWithName[] getAliasesForDomain(DomainHandle domainHandle, final int i10) throws RPCException {
        ArrayList arrayList = new ArrayList();
        final byte[] handle = parseHandle(domainHandle);
        enumerate(arrayList, new EnumerationCallback() { // from class: com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.2
            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public String getName() {
                return "SamrEnumerateAliasesInDomain";
            }

            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public SamrEnumerateResponse request(int i11) {
                return (SamrEnumerateResponse) SecurityAccountManagerService.this.call(new SamrEnumerateAliasesInDomainRequest(handle, i11, i10));
            }
        });
        return parseSAMPRRIDEnumerations(arrayList);
    }

    public DomainDisplayGroup[] getDomainGroupInformationForDomain(DomainHandle domainHandle, int i10, int i11) throws RPCException {
        SamrQueryDisplayInformation2Response samrQueryDisplayInformation2Response;
        List entries;
        int returnValue;
        byte[] handle = parseHandle(domainHandle);
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        int size = 0;
        int totalReturned = 0;
        while (true) {
            samrQueryDisplayInformation2Response = (SamrQueryDisplayInformation2Response) call(new SamrQueryDisplayInformation2Request.DomainDisplayGroup(handle, size, i10, i11));
            entries = ((SAMPRDomainDisplayGroupBuffer) samrQueryDisplayInformation2Response.getDisplayInformation()).getEntries();
            if (entries == null) {
                entries = new ArrayList();
            }
            size += entries.size();
            totalReturned += samrQueryDisplayInformation2Response.getTotalReturned();
            returnValue = samrQueryDisplayInformation2Response.getReturnValue();
            if (!SystemErrorCode.ERROR_MORE_ENTRIES.is(returnValue)) {
                break;
            }
            arrayList.addAll(entries);
        }
        if (!SystemErrorCode.ERROR_NO_MORE_ITEMS.is(returnValue) && !SystemErrorCode.ERROR_SUCCESS.is(returnValue) && totalReturned != samrQueryDisplayInformation2Response.getTotalAvailable()) {
            throw new RPCException("QueryDisplayInformation2", returnValue);
        }
        arrayList.addAll(entries);
        DomainDisplayGroup[] domainDisplayGroupArr = new DomainDisplayGroup[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SAMPRDomainDisplayGroup sAMPRDomainDisplayGroup = (SAMPRDomainDisplayGroup) it.next();
            domainDisplayGroupArr[i12] = new DomainDisplayGroup(sAMPRDomainDisplayGroup.getRid(), parseRPCUnicodeString(sAMPRDomainDisplayGroup.getAccountName()), parseRPCUnicodeString(sAMPRDomainDisplayGroup.getDescription()), sAMPRDomainDisplayGroup.getAttributes());
            i12++;
        }
        return domainDisplayGroupArr;
    }

    public MembershipWithName[] getDomainsForServer(ServerHandle serverHandle, final int i10) throws RPCException {
        ArrayList arrayList = new ArrayList();
        final byte[] handle = parseHandle(serverHandle);
        enumerate(arrayList, new EnumerationCallback() { // from class: com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.1
            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public String getName() {
                return "SamrEnumerateDomainsInSamServer";
            }

            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public SamrEnumerateResponse request(int i11) {
                return (SamrEnumerateResponse) SecurityAccountManagerService.this.call(new SamrEnumerateDomainsInSamServerRequest(handle, i11, i10));
            }
        });
        return parseSAMPRRIDEnumerations(arrayList);
    }

    public MembershipWithName[] getGroupsForDomain(DomainHandle domainHandle, final int i10) throws RPCException {
        ArrayList arrayList = new ArrayList();
        final byte[] handle = parseHandle(domainHandle);
        enumerate(arrayList, new EnumerationCallback() { // from class: com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.3
            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public String getName() {
                return "SamrEnumerateGroupsInDomain";
            }

            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public SamrEnumerateResponse request(int i11) {
                return (SamrEnumerateResponse) SecurityAccountManagerService.this.call(new SamrEnumerateGroupsInDomainRequest(handle, i11, i10));
            }
        });
        return parseSAMPRRIDEnumerations(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    public byte[] getSecurityObject(ContextHandle contextHandle, boolean z, boolean z4, boolean z10, boolean z11) {
        ?? r22 = z;
        if (z4) {
            r22 = (z ? 1 : 0) | 2;
        }
        if (z10) {
            r22 = (r22 == true ? 1 : 0) | 4;
        }
        if (z11) {
            r22 = (r22 == true ? 1 : 0) | '\b';
        }
        return parseSAMPRSRSecurityDescriptor(((SamrQuerySecurityObjectResponse) callExpectSuccess(new SamrQuerySecurityObjectRequest(parseHandle(contextHandle), r22), "SamrQuerySecurityObject")).getSecurityDescriptor());
    }

    public MembershipWithName[] getUsersForDomain(DomainHandle domainHandle, int i10) {
        return getUsersForDomain(domainHandle, i10, 65535);
    }

    public AliasHandle openAlias(DomainHandle domainHandle, long j10, int i10) {
        return parseAliasHandle((HandleResponse) callExpectSuccess(new SamrOpenAliasRequest(parseHandle(domainHandle), i10, j10), "SamrOpenAlias"));
    }

    public DomainHandle openDomain(ServerHandle serverHandle, SID sid, int i10) {
        return parseDomainHandle((HandleResponse) callExpectSuccess(new SamrOpenDomainRequest(parseHandle(serverHandle), i10, parseSID(sid)), "SamrOpenDomain"));
    }

    public GroupHandle openGroup(DomainHandle domainHandle, long j10, int i10) {
        return parseGroupHandle((HandleResponse) callExpectSuccess(new SamrOpenGroupRequest(parseHandle(domainHandle), i10, j10), "SamrOpenGroupRequest"));
    }

    public ServerHandle openServer(String str) {
        return openServer(str, 33554432);
    }

    public UserHandle openUser(DomainHandle domainHandle, long j10, int i10) {
        return parseUserHandle((HandleResponse) callExpectSuccess(new SamrOpenUserRequest(parseHandle(domainHandle), i10, j10), "SamrOpenUserRequest"));
    }

    public MembershipWithName[] getUsersForDomain(DomainHandle domainHandle, final int i10, final int i11) throws RPCException {
        ArrayList arrayList = new ArrayList();
        final byte[] handle = parseHandle(domainHandle);
        enumerate(arrayList, new EnumerationCallback() { // from class: com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.4
            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public String getName() {
                return "SamrEnumerateUsersInDomain";
            }

            @Override // com.rapid7.client.dcerpc.mssamr.SecurityAccountManagerService.EnumerationCallback
            public SamrEnumerateResponse request(int i12) {
                return (SamrEnumerateResponse) SecurityAccountManagerService.this.call(new SamrEnumerateUsersInDomainRequest(handle, i12, i10, i11));
            }
        });
        return parseSAMPRRIDEnumerations(arrayList);
    }

    public ServerHandle openServer(String str, int i10) {
        return parseServerHandle((HandleResponse) callExpectSuccess(new SamrConnect2Request(parseWCharNT(str), i10), "SamrConnect2"));
    }
}
