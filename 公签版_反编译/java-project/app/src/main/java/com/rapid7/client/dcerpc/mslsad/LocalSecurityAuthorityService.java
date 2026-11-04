package com.rapid7.client.dcerpc.mslsad;

import com.rapid7.client.dcerpc.RPCException;
import com.rapid7.client.dcerpc.dto.SID;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.mslsad.dto.LSAPLookupLevel;
import com.rapid7.client.dcerpc.mslsad.dto.PolicyAuditEventsInfo;
import com.rapid7.client.dcerpc.mslsad.dto.PolicyDomainInfo;
import com.rapid7.client.dcerpc.mslsad.dto.PolicyHandle;
import com.rapid7.client.dcerpc.mslsad.messages.LsarCloseRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarEnumerateAccountRightsRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarEnumerateAccountRightsResponse;
import com.rapid7.client.dcerpc.mslsad.messages.LsarEnumerateAccountsWithUserRightRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarEnumerateAccountsWithUserRightResponse;
import com.rapid7.client.dcerpc.mslsad.messages.LsarLookupNamesRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarLookupNamesResponse;
import com.rapid7.client.dcerpc.mslsad.messages.LsarLookupSIDsRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarLookupSIDsResponse;
import com.rapid7.client.dcerpc.mslsad.messages.LsarOpenPolicy2Request;
import com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyRequest;
import com.rapid7.client.dcerpc.mslsad.messages.LsarQueryInformationPolicyResponse;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAccountDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyAuditEventsInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRPolicyPrimaryDomInfo;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRTranslatedName;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRTranslatedSID;
import com.rapid7.client.dcerpc.mslsad.objects.LSAPRTrustInformation;
import com.rapid7.client.dcerpc.objects.RPCSID;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import com.rapid7.client.dcerpc.objects.WChar;
import com.rapid7.client.dcerpc.service.Service;
import com.rapid7.client.dcerpc.transport.RPCTransport;

/* loaded from: classes.dex */
public class LocalSecurityAuthorityService extends Service {
    public static final int MAXIMUM_ALLOWED = 33554432;

    public LocalSecurityAuthorityService(RPCTransport rPCTransport) {
        super(rPCTransport);
    }

    private PolicyHandle parsePolicyHandle(byte[] bArr) {
        return new PolicyHandle(bArr);
    }

    public boolean closePolicyHandle(PolicyHandle policyHandle) throws RPCException {
        HandleResponse handleResponse = (HandleResponse) call(new LsarCloseRequest(parseHandle(policyHandle)));
        if (SystemErrorCode.ERROR_SUCCESS.is(handleResponse.getReturnValue())) {
            return true;
        }
        if (SystemErrorCode.STATUS_INVALID_HANDLE.is(handleResponse.getReturnValue())) {
            return false;
        }
        throw new RPCException("LsarClose", handleResponse.getReturnValue());
    }

    public String[] getAccountRights(PolicyHandle policyHandle, SID sid) {
        return parseRPCUnicodeStrings(((LsarEnumerateAccountRightsResponse) callExpectSuccess(new LsarEnumerateAccountRightsRequest(parseHandle(policyHandle), parseSID(sid)), "LsarEnumerateAccountRights")).getPrivNames());
    }

    public SID[] getAccountsWithUserRight(PolicyHandle policyHandle, String str) {
        return parseRPCSIDs(((LsarEnumerateAccountsWithUserRightResponse) callExpect(new LsarEnumerateAccountsWithUserRightRequest(parseHandle(policyHandle), RPCUnicodeString.NonNullTerminated.of(str)), "LsarEnumerateAccountsWithUserRight", SystemErrorCode.ERROR_SUCCESS, SystemErrorCode.STATUS_NO_MORE_ENTRIES)).getSids());
    }

    public PolicyDomainInfo getPolicyAccountDomainInformation(PolicyHandle policyHandle) {
        LSAPRPolicyAccountDomInfo lSAPRPolicyAccountDomInfo = (LSAPRPolicyAccountDomInfo) ((LsarQueryInformationPolicyResponse) callExpectSuccess(new LsarQueryInformationPolicyRequest.PolicyAccountDomainInformation(parseHandle(policyHandle)), "LsarQueryInformationPolicy[5]")).getPolicyInformation();
        if (lSAPRPolicyAccountDomInfo == null) {
            return null;
        }
        return new PolicyDomainInfo(parseRPCUnicodeString(lSAPRPolicyAccountDomInfo.getDomainName()), parseRPCSID(lSAPRPolicyAccountDomInfo.getDomainSid()));
    }

    public PolicyAuditEventsInfo getPolicyAuditEventsInfo(PolicyHandle policyHandle) {
        LSAPRPolicyAuditEventsInfo lSAPRPolicyAuditEventsInfo = (LSAPRPolicyAuditEventsInfo) ((LsarQueryInformationPolicyResponse) callExpectSuccess(new LsarQueryInformationPolicyRequest.PolicyAuditEventsInformation(parseHandle(policyHandle)), "LsarQueryInformationPolicy[2]")).getPolicyInformation();
        if (lSAPRPolicyAuditEventsInfo == null) {
            return null;
        }
        return new PolicyAuditEventsInfo(lSAPRPolicyAuditEventsInfo.getAuditingMode() != 0, lSAPRPolicyAuditEventsInfo.getEventAuditingOptions());
    }

    public PolicyDomainInfo getPolicyPrimaryDomainInformation(PolicyHandle policyHandle) {
        LSAPRPolicyPrimaryDomInfo lSAPRPolicyPrimaryDomInfo = (LSAPRPolicyPrimaryDomInfo) ((LsarQueryInformationPolicyResponse) callExpectSuccess(new LsarQueryInformationPolicyRequest.PolicyPrimaryDomainInformation(parseHandle(policyHandle)), "LsarQueryInformationPolicy[3]")).getPolicyInformation();
        if (lSAPRPolicyPrimaryDomInfo == null) {
            return null;
        }
        return new PolicyDomainInfo(parseRPCUnicodeString(lSAPRPolicyPrimaryDomInfo.getName()), parseRPCSID(lSAPRPolicyPrimaryDomInfo.getSid()));
    }

    public String[] lookupNamesForSIDs(PolicyHandle policyHandle, SID... sidArr) {
        return lookupNamesForSIDs(policyHandle, LSAPLookupLevel.LSAP_LOOKUP_WKSTA, sidArr);
    }

    public SID[] lookupSIDsForNames(PolicyHandle policyHandle, String... strArr) {
        return lookupSIDsForNames(policyHandle, LSAPLookupLevel.LSAP_LOOKUP_WKSTA, strArr);
    }

    public PolicyHandle openPolicyHandle() {
        return openPolicyHandle(33554432);
    }

    public String[] lookupNamesForSIDs(PolicyHandle policyHandle, LSAPLookupLevel lSAPLookupLevel, SID... sidArr) {
        LsarLookupSIDsRequest lsarLookupSIDsRequest = new LsarLookupSIDsRequest(parseHandle(policyHandle), parseSIDs(sidArr), lSAPLookupLevel.getValue());
        LSAPRTranslatedName[] names = ((LsarLookupSIDsResponse) callExpect(lsarLookupSIDsRequest, "LsarLookupSIDs", SystemErrorCode.ERROR_SUCCESS, SystemErrorCode.STATUS_SOME_NOT_MAPPED, SystemErrorCode.STATUS_NONE_MAPPED)).getTranslatedNames().getNames();
        if (names == null) {
            names = new LSAPRTranslatedName[0];
        }
        String[] strArr = new String[names.length];
        for (int i10 = 0; i10 < names.length; i10++) {
            strArr[i10] = parseRPCUnicodeString(names[i10].getName());
        }
        return strArr;
    }

    public SID[] lookupSIDsForNames(PolicyHandle policyHandle, LSAPLookupLevel lSAPLookupLevel, String... strArr) {
        int domainIndex;
        RPCSID sid;
        LsarLookupNamesResponse lsarLookupNamesResponse = (LsarLookupNamesResponse) callExpect(new LsarLookupNamesRequest(parseHandle(policyHandle), parseNonNullTerminatedStrings(strArr), lSAPLookupLevel.getValue()), "LsarLookupNames", SystemErrorCode.ERROR_SUCCESS, SystemErrorCode.STATUS_SOME_NOT_MAPPED, SystemErrorCode.STATUS_NONE_MAPPED);
        LSAPRTranslatedSID[] sIDs = lsarLookupNamesResponse.getTranslatedSIDs().getSIDs();
        if (sIDs == null) {
            sIDs = new LSAPRTranslatedSID[0];
        }
        LSAPRTrustInformation[] domains = lsarLookupNamesResponse.getReferencedDomains().getDomains();
        if (domains == null) {
            domains = new LSAPRTrustInformation[0];
        }
        SID[] sidArr = new SID[sIDs.length];
        for (int i10 = 0; i10 < sIDs.length; i10++) {
            LSAPRTranslatedSID lSAPRTranslatedSID = sIDs[i10];
            if (lSAPRTranslatedSID != null && (domainIndex = (int) lSAPRTranslatedSID.getDomainIndex()) >= 0 && (sid = domains[domainIndex].getSid()) != null) {
                sidArr[i10] = parseRPCSID(sid, false).resolveRelativeID(lSAPRTranslatedSID.getRelativeId());
            }
        }
        return sidArr;
    }

    public PolicyHandle openPolicyHandle(int i10) {
        return openPolicyHandle("", i10);
    }

    public PolicyHandle openPolicyHandle(String str, int i10) {
        if (str == null) {
            str = "";
        }
        return parsePolicyHandle(((HandleResponse) callExpectSuccess(new LsarOpenPolicy2Request(WChar.NullTerminated.of(str), i10), "LsarOpenPolicy2")).getHandle());
    }
}
