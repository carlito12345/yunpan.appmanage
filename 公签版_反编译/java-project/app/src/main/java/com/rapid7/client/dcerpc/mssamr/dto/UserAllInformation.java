package com.rapid7.client.dcerpc.mssamr.dto;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public class UserAllInformation {
    private final long accountExpires;
    private final String adminComment;
    private final int badPasswordCount;
    private final int codePage;
    private final int countryCode;
    private final String fullName;
    private final String homeDirectory;
    private final String homeDirectoryDrive;
    private final long lastLogoff;
    private final long lastLogon;
    private final int[] lmOwfPassword;
    private final boolean lmPasswordPresent;
    private final int logonCount;
    private final LogonHours logonHours;
    private final int[] ntOwfPassword;
    private final boolean ntPasswordPresent;
    private final String parameters;
    private final long passwordCanChange;
    private final boolean passwordExpired;
    private final long passwordLastSet;
    private final long passwordMustChange;
    private final long primaryGroupId;
    private final String privateData;
    private final boolean privateDataSensitive;
    private final String profilePath;
    private final String scriptPath;
    private final byte[] securityDescriptor;
    private final long userAccountControl;
    private final String userComment;
    private final long userId;
    private final String userName;
    private final long whichFields;
    private final String workStations;

    public UserAllInformation(long j10, long j11, long j12, long j13, long j14, long j15, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int[] iArr, int[] iArr2, String str11, byte[] bArr, long j16, long j17, long j18, long j19, LogonHours logonHours, int i10, int i11, int i12, int i13, boolean z, boolean z4, boolean z10, boolean z11) {
        this.lastLogon = j10;
        this.lastLogoff = j11;
        this.passwordLastSet = j12;
        this.accountExpires = j13;
        this.passwordCanChange = j14;
        this.passwordMustChange = j15;
        this.userName = str;
        this.fullName = str2;
        this.homeDirectory = str3;
        this.homeDirectoryDrive = str4;
        this.scriptPath = str5;
        this.profilePath = str6;
        this.adminComment = str7;
        this.workStations = str8;
        this.userComment = str9;
        this.parameters = str10;
        this.lmOwfPassword = iArr;
        this.ntOwfPassword = iArr2;
        this.privateData = str11;
        this.securityDescriptor = bArr;
        this.userId = j16;
        this.primaryGroupId = j17;
        this.userAccountControl = j18;
        this.whichFields = j19;
        this.logonHours = logonHours;
        this.badPasswordCount = i10;
        this.logonCount = i11;
        this.countryCode = i12;
        this.codePage = i13;
        this.lmPasswordPresent = z;
        this.ntPasswordPresent = z4;
        this.passwordExpired = z10;
        this.privateDataSensitive = z11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserAllInformation)) {
            return false;
        }
        UserAllInformation userAllInformation = (UserAllInformation) obj;
        return Long.valueOf(getLastLogon()).equals(Long.valueOf(userAllInformation.getLastLogon())) && Long.valueOf(getLastLogoff()).equals(Long.valueOf(userAllInformation.getLastLogoff())) && Long.valueOf(getPasswordLastSet()).equals(Long.valueOf(userAllInformation.getPasswordLastSet())) && Long.valueOf(getAccountExpires()).equals(Long.valueOf(userAllInformation.getAccountExpires())) && Long.valueOf(getPasswordCanChange()).equals(Long.valueOf(userAllInformation.getPasswordCanChange())) && Long.valueOf(getPasswordMustChange()).equals(Long.valueOf(userAllInformation.getPasswordMustChange())) && Objects.equals(getUserName(), userAllInformation.getUserName()) && Objects.equals(getFullName(), userAllInformation.getFullName()) && Objects.equals(getHomeDirectory(), userAllInformation.getHomeDirectory()) && Objects.equals(getHomeDirectoryDrive(), userAllInformation.getHomeDirectoryDrive()) && Objects.equals(getScriptPath(), userAllInformation.getScriptPath()) && Objects.equals(getProfilePath(), userAllInformation.getProfilePath()) && Objects.equals(getAdminComment(), userAllInformation.getAdminComment()) && Objects.equals(getWorkStations(), userAllInformation.getWorkStations()) && Objects.equals(getUserComment(), userAllInformation.getUserComment()) && Objects.equals(getParameters(), userAllInformation.getParameters()) && Arrays.equals(getLmOwfPassword(), userAllInformation.getLmOwfPassword()) && Arrays.equals(getNtOwfPassword(), userAllInformation.getNtOwfPassword()) && Objects.equals(getPrivateData(), userAllInformation.getPrivateData()) && Arrays.equals(getSecurityDescriptor(), userAllInformation.getSecurityDescriptor()) && Long.valueOf(getUserId()).equals(Long.valueOf(userAllInformation.getUserId())) && Long.valueOf(getPrimaryGroupId()).equals(Long.valueOf(userAllInformation.getPrimaryGroupId())) && Long.valueOf(getUserAccountControl()).equals(Long.valueOf(userAllInformation.getUserAccountControl())) && Long.valueOf(getWhichFields()).equals(Long.valueOf(userAllInformation.getWhichFields())) && Objects.equals(getLogonHours(), userAllInformation.getLogonHours()) && Integer.valueOf(getBadPasswordCount()).equals(Integer.valueOf(userAllInformation.getBadPasswordCount())) && Integer.valueOf(getLogonCount()).equals(Integer.valueOf(userAllInformation.getLogonCount())) && Integer.valueOf(getCountryCode()).equals(Integer.valueOf(userAllInformation.getCountryCode())) && Integer.valueOf(getCodePage()).equals(Integer.valueOf(userAllInformation.getCodePage())) && Boolean.valueOf(isLmPasswordPresent()).equals(Boolean.valueOf(userAllInformation.isLmPasswordPresent())) && Boolean.valueOf(isNtPasswordPresent()).equals(Boolean.valueOf(userAllInformation.isNtPasswordPresent())) && Boolean.valueOf(isPasswordExpired()).equals(Boolean.valueOf(userAllInformation.isPasswordExpired())) && Boolean.valueOf(isPrivateDataSensitive()).equals(Boolean.valueOf(userAllInformation.isPrivateDataSensitive()));
    }

    public long getAccountExpires() {
        return this.accountExpires;
    }

    public String getAdminComment() {
        return this.adminComment;
    }

    public int getBadPasswordCount() {
        return this.badPasswordCount;
    }

    public int getCodePage() {
        return this.codePage;
    }

    public int getCountryCode() {
        return this.countryCode;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getHomeDirectory() {
        return this.homeDirectory;
    }

    public String getHomeDirectoryDrive() {
        return this.homeDirectoryDrive;
    }

    public long getLastLogoff() {
        return this.lastLogoff;
    }

    public long getLastLogon() {
        return this.lastLogon;
    }

    public int[] getLmOwfPassword() {
        return this.lmOwfPassword;
    }

    public int getLogonCount() {
        return this.logonCount;
    }

    public LogonHours getLogonHours() {
        return this.logonHours;
    }

    public int[] getNtOwfPassword() {
        return this.ntOwfPassword;
    }

    public String getParameters() {
        return this.parameters;
    }

    public long getPasswordCanChange() {
        return this.passwordCanChange;
    }

    public long getPasswordLastSet() {
        return this.passwordLastSet;
    }

    public long getPasswordMustChange() {
        return this.passwordMustChange;
    }

    public long getPrimaryGroupId() {
        return this.primaryGroupId;
    }

    public String getPrivateData() {
        return this.privateData;
    }

    public String getProfilePath() {
        return this.profilePath;
    }

    public String getScriptPath() {
        return this.scriptPath;
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public long getUserAccountControl() {
        return this.userAccountControl;
    }

    public String getUserComment() {
        return this.userComment;
    }

    public long getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public long getWhichFields() {
        return this.whichFields;
    }

    public String getWorkStations() {
        return this.workStations;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(getLastLogon()), Long.valueOf(getLastLogoff()), Long.valueOf(getPasswordLastSet()), Long.valueOf(getAccountExpires()), Long.valueOf(getPasswordCanChange()), Long.valueOf(getPasswordMustChange()), getUserName(), getFullName(), getHomeDirectory(), getHomeDirectoryDrive(), getScriptPath(), getProfilePath(), getAdminComment(), getWorkStations(), getUserComment(), getParameters(), getLmOwfPassword(), getNtOwfPassword(), getPrivateData(), getSecurityDescriptor(), Long.valueOf(getUserId()), Long.valueOf(getPrimaryGroupId()), Long.valueOf(getUserAccountControl()), Long.valueOf(getWhichFields()), getLogonHours(), Integer.valueOf(getBadPasswordCount()), Integer.valueOf(getLogonCount()), Integer.valueOf(getCountryCode()), Integer.valueOf(getCodePage()), Boolean.valueOf(isLmPasswordPresent()), Boolean.valueOf(isNtPasswordPresent()), Boolean.valueOf(isPasswordExpired()), Boolean.valueOf(isPrivateDataSensitive()));
    }

    public boolean isLmPasswordPresent() {
        return this.lmPasswordPresent;
    }

    public boolean isNtPasswordPresent() {
        return this.ntPasswordPresent;
    }

    public boolean isPasswordExpired() {
        return this.passwordExpired;
    }

    public boolean isPrivateDataSensitive() {
        return this.privateDataSensitive;
    }

    public String toString() {
        return String.format("UserAllInformation{UserId:%d, PrimaryGroupId:%d, UserName:%s, FullName:%s}", Long.valueOf(getUserId()), Long.valueOf(getPrimaryGroupId()), getUserName(), getFullName());
    }
}
