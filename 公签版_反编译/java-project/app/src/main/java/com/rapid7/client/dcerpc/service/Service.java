package com.rapid7.client.dcerpc.service;

import com.rapid7.client.dcerpc.RPCException;
import com.rapid7.client.dcerpc.dto.ContextHandle;
import com.rapid7.client.dcerpc.dto.SID;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.objects.RPCSID;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import com.rapid7.client.dcerpc.objects.WChar;
import com.rapid7.client.dcerpc.transport.RPCTransport;

/* loaded from: classes.dex */
public abstract class Service {
    private final RPCTransport transport;

    public Service(RPCTransport rPCTransport) {
        if (rPCTransport == null) {
            throw new IllegalArgumentException("Expecting non-null transport");
        }
        this.transport = rPCTransport;
    }

    public <R extends RequestResponse> R call(RequestCall<R> requestCall) {
        return (R) this.transport.call(requestCall);
    }

    public <R extends RequestResponse> R callExpect(RequestCall<R> requestCall, String str, SystemErrorCode... systemErrorCodeArr) throws RPCException {
        R r = (R) call(requestCall);
        if (systemErrorCodeArr == null) {
            return r;
        }
        int returnValue = r.getReturnValue();
        for (SystemErrorCode systemErrorCode : systemErrorCodeArr) {
            if (systemErrorCode != null && systemErrorCode.is(returnValue)) {
                return r;
            }
        }
        throw new RPCException(str, returnValue);
    }

    public <R extends RequestResponse> R callExpectSuccess(RequestCall<R> requestCall, String str) {
        return (R) callExpect(requestCall, str, SystemErrorCode.ERROR_SUCCESS);
    }

    public byte[] parseHandle(ContextHandle contextHandle) {
        return contextHandle.getBytes();
    }

    public RPCUnicodeString.NonNullTerminated[] parseNonNullTerminatedStrings(String[] strArr) {
        if (strArr == null) {
            return new RPCUnicodeString.NonNullTerminated[0];
        }
        RPCUnicodeString.NonNullTerminated[] nonNullTerminatedArr = new RPCUnicodeString.NonNullTerminated[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            nonNullTerminatedArr[i10] = RPCUnicodeString.NonNullTerminated.of(strArr[i10]);
        }
        return nonNullTerminatedArr;
    }

    public SID parseRPCSID(RPCSID rpcsid) {
        return parseRPCSID(rpcsid, true);
    }

    public SID[] parseRPCSIDs(RPCSID[] rpcsidArr) {
        SID[] sidArr;
        if (rpcsidArr == null) {
            sidArr = new SID[0];
            rpcsidArr = new RPCSID[0];
        } else {
            sidArr = new SID[rpcsidArr.length];
        }
        for (int i10 = 0; i10 < sidArr.length; i10++) {
            sidArr[i10] = parseRPCSID(rpcsidArr[i10]);
        }
        return sidArr;
    }

    public String parseRPCUnicodeString(RPCUnicodeString rPCUnicodeString) {
        return parseRPCUnicodeString(rPCUnicodeString, false);
    }

    public String[] parseRPCUnicodeStrings(RPCUnicodeString... rPCUnicodeStringArr) {
        if (rPCUnicodeStringArr == null) {
            return new String[0];
        }
        String[] strArr = new String[rPCUnicodeStringArr.length];
        for (int i10 = 0; i10 < rPCUnicodeStringArr.length; i10++) {
            RPCUnicodeString rPCUnicodeString = rPCUnicodeStringArr[i10];
            strArr[i10] = rPCUnicodeString == null ? null : rPCUnicodeString.getValue();
        }
        return strArr;
    }

    public RPCSID parseSID(SID sid) {
        if (sid == null) {
            return null;
        }
        RPCSID rpcsid = new RPCSID();
        rpcsid.setRevision((char) sid.getRevision());
        rpcsid.setIdentifierAuthority(sid.getIdentifierAuthority());
        rpcsid.setSubAuthority(sid.getSubAuthorities());
        return rpcsid;
    }

    public RPCSID[] parseSIDs(SID[] sidArr) {
        RPCSID[] rpcsidArr;
        if (sidArr == null) {
            rpcsidArr = new RPCSID[0];
            sidArr = new SID[0];
        } else {
            rpcsidArr = new RPCSID[sidArr.length];
        }
        for (int i10 = 0; i10 < rpcsidArr.length; i10++) {
            rpcsidArr[i10] = parseSID(sidArr[i10]);
        }
        return rpcsidArr;
    }

    public WChar.NonNullTerminated parseWChar(String str) {
        return parseWChar(str, true);
    }

    public WChar.NullTerminated parseWCharNT(String str) {
        return parseWCharNT(str, true);
    }

    public SID parseRPCSID(RPCSID rpcsid, boolean z) {
        if (rpcsid == null && z) {
            return null;
        }
        return new SID((byte) rpcsid.getRevision(), rpcsid.getIdentifierAuthority(), rpcsid.getSubAuthority());
    }

    public String parseRPCUnicodeString(RPCUnicodeString rPCUnicodeString, boolean z) {
        if (rPCUnicodeString != null) {
            return rPCUnicodeString.getValue();
        }
        if (z) {
            return null;
        }
        throw new NullPointerException("Expecting non-null rpcUnicodeString");
    }

    public WChar.NonNullTerminated parseWChar(String str, boolean z) {
        if (str == null && z) {
            return null;
        }
        return WChar.NonNullTerminated.of(str);
    }

    public WChar.NullTerminated parseWCharNT(String str, boolean z) {
        if (str == null && z) {
            return null;
        }
        return WChar.NullTerminated.of(str);
    }

    public String parseWChar(WChar wChar) {
        return parseWChar(wChar, true);
    }

    public String parseWChar(WChar wChar, boolean z) {
        if (wChar == null && z) {
            return null;
        }
        return wChar.getValue();
    }
}
