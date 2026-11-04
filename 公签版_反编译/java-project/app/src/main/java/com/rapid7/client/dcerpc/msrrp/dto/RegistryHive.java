package com.rapid7.client.dcerpc.msrrp.dto;

import com.rapid7.client.dcerpc.msrrp.messages.HandleRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum RegistryHive {
    HKEY_CLASSES_ROOT("HKEY_CLASSES_ROOT", "HKCR", "OpenClassesRoot", 0),
    HKEY_CURRENT_CONFIG("HKEY_CURRENT_CONFIG", "HKCC", "OpenCurrentConfig", 27),
    HKEY_CURRENT_USER("HKEY_CURRENT_USER", "HKCU", "OpenCurrentUser", 1),
    HKEY_LOCAL_MACHINE("HKEY_LOCAL_MACHINE", "HKLM", "OpenLocalMachine", 2),
    HKEY_PERFORMANCE_DATA("HKEY_PERFORMANCE_DATA", "", "OpenPerformanceData", 3),
    HKEY_PERFORMANCE_NLSTEXT("HKEY_PERFORMANCE_NLSTEXT", "", "OpenPerformanceNlsText", 33),
    HKEY_PERFORMANCE_TEXT("HKEY_PERFORMANCE_TEXT", "", "OpenPerformanceText", 32),
    HKEY_USERS("HKEY_USERS", "HKU", "OpenUsers", 4);

    private static final Map<String, RegistryHive> registryHiveByName = new HashMap();
    private final String fullName;
    private final String opName;
    private final short opNum;
    private final String shortName;

    static {
        for (RegistryHive registryHive : values()) {
            String fullName = registryHive.getFullName();
            Map<String, RegistryHive> map = registryHiveByName;
            map.put(fullName, registryHive);
            String shortName = registryHive.getShortName();
            if (!shortName.isEmpty()) {
                map.put(shortName, registryHive);
            }
        }
    }

    RegistryHive(String str, String str2, String str3, short s8) {
        this.fullName = str;
        this.shortName = str2;
        this.opName = str3;
        this.opNum = s8;
    }

    public static RegistryHive getRegistryHiveByName(String str) {
        return registryHiveByName.get(str.trim().toUpperCase());
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getOpName() {
        return this.opName;
    }

    public short getOpNum() {
        return this.opNum;
    }

    public HandleRequest getRequest(int i10) {
        return new HandleRequest(this.opNum, i10);
    }

    public String getShortName() {
        return this.shortName;
    }
}
