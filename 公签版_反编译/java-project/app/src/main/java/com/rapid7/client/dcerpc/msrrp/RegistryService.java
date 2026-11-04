package com.rapid7.client.dcerpc.msrrp;

import android.support.v4.media.session.a;
import com.rapid7.client.dcerpc.RPCException;
import com.rapid7.client.dcerpc.io.ndr.arrays.RPCConformantVaryingByteArray;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.msrrp.dto.FileTime;
import com.rapid7.client.dcerpc.msrrp.dto.RegistryHive;
import com.rapid7.client.dcerpc.msrrp.dto.RegistryKey;
import com.rapid7.client.dcerpc.msrrp.dto.RegistryKeyInfo;
import com.rapid7.client.dcerpc.msrrp.dto.RegistryValue;
import com.rapid7.client.dcerpc.msrrp.dto.RegistryValueType;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegEnumKeyRequest;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegEnumKeyResponse;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegEnumValueRequest;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegEnumValueResponse;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegGetKeySecurityRequest;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegGetKeySecurityResponse;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegOpenKey;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegQueryInfoKeyRequest;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegQueryInfoKeyResponse;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegQueryValueRequest;
import com.rapid7.client.dcerpc.msrrp.messages.BaseRegQueryValueResponse;
import com.rapid7.client.dcerpc.msrrp.messages.HandleRequest;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import com.rapid7.client.dcerpc.service.Service;
import com.rapid7.client.dcerpc.transport.RPCTransport;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class RegistryService extends Service {
    private static final int ACCESS_SYSTEM_SECURITY = 16777216;
    private static final int MAXIMUM_ALLOWED = 33554432;
    private static final int MAX_REGISTRY_KEY_CLASS_SIZE = 32767;
    private static final int MAX_REGISTRY_KEY_NAME_SIZE = 32767;
    private static final int MAX_REGISTRY_VALUE_DATA_SIZE = 1048576;
    private static final int MAX_REGISTRY_VALUE_NAME_SIZE = 32767;
    private final Map<RegistryHive, byte[]> hiveCache;
    private final Map<RegistryHandleKey, byte[]> keyPathCache;

    public static class RegistryHandleKey {
        private final int access;
        private final String path;

        public RegistryHandleKey(String str, int i10) {
            Objects.requireNonNull(str);
            this.path = str;
            this.access = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof RegistryHandleKey)) {
                return false;
            }
            RegistryHandleKey registryHandleKey = (RegistryHandleKey) obj;
            return this.path.equals(registryHandleKey.path) && this.access == registryHandleKey.access;
        }

        public int hashCode() {
            return Objects.hash(this.path, Integer.valueOf(this.access));
        }
    }

    public RegistryService(RPCTransport rPCTransport) {
        super(rPCTransport);
        this.hiveCache = new HashMap();
        this.keyPathCache = new HashMap();
    }

    private boolean isFileNotFound(RPCException rPCException) {
        return rPCException != null && rPCException.getErrorCode() == SystemErrorCode.ERROR_FILE_NOT_FOUND;
    }

    public String canonicalize(String str) {
        if (str == null) {
            str = "";
        }
        String lowerCase = str.toLowerCase();
        while (lowerCase.contains("\\\\")) {
            lowerCase = lowerCase.replace("\\\\", "\\");
        }
        return lowerCase.endsWith("\\") ? a.l(1, 0, lowerCase) : lowerCase;
    }

    public boolean doesKeyExist(String str, String str2) throws RPCException {
        try {
            openKey(str, str2);
            return true;
        } catch (RPCException e7) {
            if (isFileNotFound(e7)) {
                return false;
            }
            throw e7;
        }
    }

    public boolean doesValueExist(String str, String str2, String str3) throws RPCException {
        try {
            getValue(str, str2, str3);
            return true;
        } catch (RPCException e7) {
            if (isFileNotFound(e7)) {
                return false;
            }
            throw e7;
        }
    }

    public RegistryKeyInfo getKeyInfo(String str, String str2) {
        BaseRegQueryInfoKeyResponse baseRegQueryInfoKeyResponse = (BaseRegQueryInfoKeyResponse) callExpectSuccess(new BaseRegQueryInfoKeyRequest(openKey(str, str2)), "BaseRegQueryInfoKey");
        return new RegistryKeyInfo(baseRegQueryInfoKeyResponse.getSubKeys(), baseRegQueryInfoKeyResponse.getMaxSubKeyLen(), baseRegQueryInfoKeyResponse.getMaxClassLen(), baseRegQueryInfoKeyResponse.getValues(), baseRegQueryInfoKeyResponse.getMaxValueNameLen(), baseRegQueryInfoKeyResponse.getMaxValueLen(), baseRegQueryInfoKeyResponse.getSecurityDescriptor(), baseRegQueryInfoKeyResponse.getLastWriteTime());
    }

    public byte[] getKeySecurity(String str, String str2, int i10) {
        return ((BaseRegGetKeySecurityResponse) callExpectSuccess(new BaseRegGetKeySecurityRequest(openKey(str, str2, 50331648), i10, getKeyInfo(str, str2).getSecurityDescriptor()), "BaseRegGetKeySecurity")).getpRpcSecurityDescriptorOut().getLpSecurityDescriptor();
    }

    public List<RegistryKey> getSubKeys(String str, String str2) throws RPCException {
        int returnValue;
        LinkedList linkedList = new LinkedList();
        byte[] bArrOpenKey = openKey(str, str2);
        int i10 = 0;
        while (true) {
            BaseRegEnumKeyResponse baseRegEnumKeyResponse = (BaseRegEnumKeyResponse) call(new BaseRegEnumKeyRequest(bArrOpenKey, i10, 32767, 32767));
            returnValue = baseRegEnumKeyResponse.getReturnValue();
            if (!SystemErrorCode.ERROR_SUCCESS.is(returnValue)) {
                break;
            }
            linkedList.add(new RegistryKey(parseRPCUnicodeString(baseRegEnumKeyResponse.getLpNameOut()), new FileTime(baseRegEnumKeyResponse.getLastWriteTime())));
            i10++;
        }
        if (SystemErrorCode.ERROR_NO_MORE_ITEMS.is(returnValue)) {
            return Collections.unmodifiableList(new ArrayList(linkedList));
        }
        throw new RPCException("BaseRegEnumKey", returnValue);
    }

    public RegistryValue getValue(String str, String str2, String str3) {
        if (str3 == null) {
            str3 = "";
        }
        BaseRegQueryValueResponse baseRegQueryValueResponse = (BaseRegQueryValueResponse) callExpectSuccess(new BaseRegQueryValueRequest(openKey(str, str2), RPCUnicodeString.NullTerminated.of(str3), 1048576), "BaseRegQueryValue");
        RPCConformantVaryingByteArray data = baseRegQueryValueResponse.getData();
        return new RegistryValue(str3, RegistryValueType.getRegistryValueType(baseRegQueryValueResponse.getType().intValue()), data == null ? null : data.getArray());
    }

    public List<RegistryValue> getValues(String str, String str2) throws RPCException {
        int returnValue;
        LinkedList linkedList = new LinkedList();
        byte[] bArrOpenKey = openKey(str, str2);
        int i10 = 0;
        while (true) {
            BaseRegEnumValueResponse baseRegEnumValueResponse = (BaseRegEnumValueResponse) call(new BaseRegEnumValueRequest(bArrOpenKey, i10, 32767, 1048576));
            returnValue = baseRegEnumValueResponse.getReturnValue();
            if (!SystemErrorCode.ERROR_SUCCESS.is(returnValue)) {
                break;
            }
            linkedList.add(new RegistryValue(parseRPCUnicodeString(baseRegEnumValueResponse.getName()), RegistryValueType.getRegistryValueType(baseRegEnumValueResponse.getType().intValue()), baseRegEnumValueResponse.getData().getArray()));
            i10++;
        }
        if (SystemErrorCode.ERROR_NO_MORE_ITEMS.is(returnValue)) {
            return Collections.unmodifiableList(new ArrayList(linkedList));
        }
        throw new RPCException("BaseRegEnumValue", returnValue);
    }

    public byte[] openHive(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Invalid hive: null");
        }
        RegistryHive registryHiveByName = RegistryHive.getRegistryHiveByName(str);
        if (registryHiveByName == null) {
            throw new IllegalArgumentException("Unknown hive: ".concat(str));
        }
        synchronized (this.hiveCache) {
            try {
                if (this.hiveCache.containsKey(registryHiveByName)) {
                    return this.hiveCache.get(registryHiveByName);
                }
                byte[] handle = ((HandleResponse) callExpectSuccess(new HandleRequest(registryHiveByName.getOpNum(), 33554432), registryHiveByName.getOpName())).getHandle();
                this.hiveCache.put(registryHiveByName, handle);
                return handle;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public byte[] openKey(String str, String str2) {
        return openKey(str, str2, 33554432);
    }

    private byte[] openKey(String str, String str2, int i10) {
        String strCanonicalize = canonicalize(str2);
        if (strCanonicalize.isEmpty()) {
            return openHive(str);
        }
        synchronized (this.keyPathCache) {
            try {
                RegistryHandleKey registryHandleKey = new RegistryHandleKey(strCanonicalize, i10);
                if (this.keyPathCache.containsKey(registryHandleKey)) {
                    return this.keyPathCache.get(registryHandleKey);
                }
                byte[] handle = ((HandleResponse) callExpectSuccess(new BaseRegOpenKey(openHive(str), RPCUnicodeString.NullTerminated.of(strCanonicalize), 0, i10), "BaseRegOpenKey")).getHandle();
                this.keyPathCache.put(registryHandleKey, handle);
                return handle;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
