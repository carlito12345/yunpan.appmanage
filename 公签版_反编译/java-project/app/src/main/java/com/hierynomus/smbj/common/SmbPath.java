package com.hierynomus.smbj.common;

import com.hierynomus.protocol.commons.Objects;
import com.hierynomus.utils.Strings;

/* loaded from: classes.dex */
public class SmbPath {
    private final String hostname;
    private final String path;
    private final String shareName;

    public SmbPath(String str) {
        this(str, null, null);
    }

    public static SmbPath parse(String str) {
        String[] strArrSplit = rewritePath(str).split("\\\\", 3);
        return strArrSplit.length == 1 ? new SmbPath(strArrSplit[0]) : strArrSplit.length == 2 ? new SmbPath(strArrSplit[0], strArrSplit[1]) : new SmbPath(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
    }

    private static String rewritePath(String str) {
        if (!Strings.isNotBlank(str)) {
            return str;
        }
        String strReplace = str.replace('/', com.hierynomus.smbfs.SmbPath.SEPARATOR);
        return strReplace.charAt(0) == '\\' ? (strReplace.length() <= 1 || strReplace.charAt(1) != '\\') ? strReplace.substring(1) : strReplace.substring(2) : strReplace;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SmbPath smbPath = (SmbPath) obj;
        return Objects.equals(this.hostname, smbPath.hostname) && Objects.equals(this.shareName, smbPath.shareName) && Objects.equals(this.path, smbPath.path);
    }

    public String getHostname() {
        return this.hostname;
    }

    public SmbPath getParent() {
        String str = this.path;
        if (str == null || str.isEmpty()) {
            return this;
        }
        int iLastIndexOf = this.path.lastIndexOf(92);
        return iLastIndexOf > 0 ? new SmbPath(this.hostname, this.shareName, this.path.substring(0, iLastIndexOf)) : new SmbPath(this.hostname, this.shareName);
    }

    public String getPath() {
        return this.path;
    }

    public String getShareName() {
        return this.shareName;
    }

    public int hashCode() {
        return Objects.hash(this.hostname, this.shareName, this.path);
    }

    public boolean isOnSameHost(SmbPath smbPath) {
        return smbPath != null && Objects.equals(this.hostname, smbPath.hostname);
    }

    public boolean isOnSameShare(SmbPath smbPath) {
        return isOnSameHost(smbPath) && Objects.equals(this.shareName, smbPath.shareName);
    }

    public String toString() {
        return toUncPath();
    }

    public String toUncPath() {
        StringBuilder sb2 = new StringBuilder("\\\\");
        sb2.append(this.hostname);
        String str = this.shareName;
        if (str != null && !str.isEmpty()) {
            if (this.shareName.charAt(0) != '\\') {
                sb2.append("\\");
            }
            sb2.append(this.shareName);
            if (Strings.isNotBlank(this.path)) {
                sb2.append("\\");
                sb2.append(this.path);
            }
        }
        return sb2.toString();
    }

    public SmbPath(String str, String str2) {
        this(str, str2, null);
    }

    public SmbPath(String str, String str2, String str3) {
        this.shareName = str2;
        this.hostname = str;
        this.path = rewritePath(str3);
    }

    public SmbPath(SmbPath smbPath, String str) {
        this.hostname = smbPath.hostname;
        if (Strings.isNotBlank(smbPath.shareName)) {
            this.shareName = smbPath.shareName;
            if (Strings.isNotBlank(smbPath.path)) {
                this.path = smbPath.path + "\\" + rewritePath(str);
                return;
            }
            this.path = rewritePath(str);
            return;
        }
        throw new IllegalArgumentException("Can only make child SmbPath of fully specified SmbPath");
    }
}
