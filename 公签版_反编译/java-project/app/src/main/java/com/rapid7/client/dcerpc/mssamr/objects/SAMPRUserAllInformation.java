package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.RPCShortBlob;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import j$.util.Objects;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public class SAMPRUserAllInformation implements Unmarshallable {
    private long accountExpires;
    private RPCUnicodeString.NonNullTerminated adminComment;
    private int badPasswordCount;
    private int codePage;
    private int countryCode;
    private RPCUnicodeString.NonNullTerminated fullName;
    private RPCUnicodeString.NonNullTerminated homeDirectory;
    private RPCUnicodeString.NonNullTerminated homeDirectoryDrive;
    private long lastLogoff;
    private long lastLogon;
    private RPCShortBlob lmOwfPassword;
    private char lmPasswordPresent;
    private int logonCount;
    private SAMPRLogonHours logonHours;
    private RPCShortBlob ntOwfPassword;
    private char ntPasswordPresent;
    private RPCUnicodeString.NonNullTerminated parameters;
    private long passwordCanChange;
    private char passwordExpired;
    private long passwordLastSet;
    private long passwordMustChange;
    private long primaryGroupId;
    private RPCUnicodeString.NonNullTerminated privateData;
    private char privateDataSensitive;
    private RPCUnicodeString.NonNullTerminated profilePath;
    private RPCUnicodeString.NonNullTerminated scriptPath;
    private SAMPRSRSecurityDescriptor securityDescriptor;
    private long userAccountControl;
    private RPCUnicodeString.NonNullTerminated userComment;
    private long userId;
    private RPCUnicodeString.NonNullTerminated userName;
    private long whichFields;
    private RPCUnicodeString.NonNullTerminated workStations;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SAMPRUserAllInformation)) {
            return false;
        }
        SAMPRUserAllInformation sAMPRUserAllInformation = (SAMPRUserAllInformation) obj;
        return Long.valueOf(getLastLogon()).equals(Long.valueOf(sAMPRUserAllInformation.getLastLogon())) && Long.valueOf(getLastLogoff()).equals(Long.valueOf(sAMPRUserAllInformation.getLastLogoff())) && Long.valueOf(getPasswordLastSet()).equals(Long.valueOf(sAMPRUserAllInformation.getPasswordLastSet())) && Long.valueOf(getAccountExpires()).equals(Long.valueOf(sAMPRUserAllInformation.getAccountExpires())) && Long.valueOf(getPasswordCanChange()).equals(Long.valueOf(sAMPRUserAllInformation.getPasswordCanChange())) && Long.valueOf(getPasswordMustChange()).equals(Long.valueOf(sAMPRUserAllInformation.getPasswordMustChange())) && Objects.equals(getUserName(), sAMPRUserAllInformation.getUserName()) && Objects.equals(getFullName(), sAMPRUserAllInformation.getFullName()) && Objects.equals(getHomeDirectory(), sAMPRUserAllInformation.getHomeDirectory()) && Objects.equals(getHomeDirectoryDrive(), sAMPRUserAllInformation.getHomeDirectoryDrive()) && Objects.equals(getScriptPath(), sAMPRUserAllInformation.getScriptPath()) && Objects.equals(getProfilePath(), sAMPRUserAllInformation.getProfilePath()) && Objects.equals(getAdminComment(), sAMPRUserAllInformation.getAdminComment()) && Objects.equals(getWorkStations(), sAMPRUserAllInformation.getWorkStations()) && Objects.equals(getUserComment(), sAMPRUserAllInformation.getUserComment()) && Objects.equals(getParameters(), sAMPRUserAllInformation.getParameters()) && Objects.equals(getLmOwfPassword(), sAMPRUserAllInformation.getLmOwfPassword()) && Objects.equals(getNtOwfPassword(), sAMPRUserAllInformation.getNtOwfPassword()) && Objects.equals(getPrivateData(), sAMPRUserAllInformation.getPrivateData()) && Objects.equals(getSecurityDescriptor(), sAMPRUserAllInformation.getSecurityDescriptor()) && Long.valueOf(getUserId()).equals(Long.valueOf(sAMPRUserAllInformation.getUserId())) && Long.valueOf(getPrimaryGroupId()).equals(Long.valueOf(sAMPRUserAllInformation.getPrimaryGroupId())) && Long.valueOf(getUserAccountControl()).equals(Long.valueOf(sAMPRUserAllInformation.getUserAccountControl())) && Long.valueOf(getWhichFields()).equals(Long.valueOf(sAMPRUserAllInformation.getWhichFields())) && Objects.equals(getLogonHours(), sAMPRUserAllInformation.getLogonHours()) && Integer.valueOf(getBadPasswordCount()).equals(Integer.valueOf(sAMPRUserAllInformation.getBadPasswordCount())) && Integer.valueOf(getLogonCount()).equals(Integer.valueOf(sAMPRUserAllInformation.getLogonCount())) && Integer.valueOf(getCountryCode()).equals(Integer.valueOf(sAMPRUserAllInformation.getCountryCode())) && Integer.valueOf(getCodePage()).equals(Integer.valueOf(sAMPRUserAllInformation.getCodePage())) && Character.valueOf(getLmPasswordPresent()).equals(Character.valueOf(sAMPRUserAllInformation.getLmPasswordPresent())) && Character.valueOf(getNtPasswordPresent()).equals(Character.valueOf(sAMPRUserAllInformation.getNtPasswordPresent())) && Character.valueOf(getPasswordExpired()).equals(Character.valueOf(sAMPRUserAllInformation.getPasswordExpired())) && Character.valueOf(getPrivateDataSensitive()).equals(Character.valueOf(sAMPRUserAllInformation.getPrivateDataSensitive()));
    }

    public long getAccountExpires() {
        return this.accountExpires;
    }

    public RPCUnicodeString.NonNullTerminated getAdminComment() {
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

    public RPCUnicodeString.NonNullTerminated getFullName() {
        return this.fullName;
    }

    public RPCUnicodeString.NonNullTerminated getHomeDirectory() {
        return this.homeDirectory;
    }

    public RPCUnicodeString.NonNullTerminated getHomeDirectoryDrive() {
        return this.homeDirectoryDrive;
    }

    public long getLastLogoff() {
        return this.lastLogoff;
    }

    public long getLastLogon() {
        return this.lastLogon;
    }

    public RPCShortBlob getLmOwfPassword() {
        return this.lmOwfPassword;
    }

    public char getLmPasswordPresent() {
        return this.lmPasswordPresent;
    }

    public int getLogonCount() {
        return this.logonCount;
    }

    public SAMPRLogonHours getLogonHours() {
        return this.logonHours;
    }

    public RPCShortBlob getNtOwfPassword() {
        return this.ntOwfPassword;
    }

    public char getNtPasswordPresent() {
        return this.ntPasswordPresent;
    }

    public RPCUnicodeString.NonNullTerminated getParameters() {
        return this.parameters;
    }

    public long getPasswordCanChange() {
        return this.passwordCanChange;
    }

    public char getPasswordExpired() {
        return this.passwordExpired;
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

    public RPCUnicodeString.NonNullTerminated getPrivateData() {
        return this.privateData;
    }

    public char getPrivateDataSensitive() {
        return this.privateDataSensitive;
    }

    public RPCUnicodeString.NonNullTerminated getProfilePath() {
        return this.profilePath;
    }

    public RPCUnicodeString.NonNullTerminated getScriptPath() {
        return this.scriptPath;
    }

    public SAMPRSRSecurityDescriptor getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public long getUserAccountControl() {
        return this.userAccountControl;
    }

    public RPCUnicodeString.NonNullTerminated getUserComment() {
        return this.userComment;
    }

    public long getUserId() {
        return this.userId;
    }

    public RPCUnicodeString.NonNullTerminated getUserName() {
        return this.userName;
    }

    public long getWhichFields() {
        return this.whichFields;
    }

    public RPCUnicodeString.NonNullTerminated getWorkStations() {
        return this.workStations;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(getLastLogon()), Long.valueOf(getLastLogoff()), Long.valueOf(getPasswordLastSet()), Long.valueOf(getAccountExpires()), Long.valueOf(getPasswordCanChange()), Long.valueOf(getPasswordMustChange()), getUserName(), getFullName(), getHomeDirectory(), getHomeDirectoryDrive(), getScriptPath(), getProfilePath(), getAdminComment(), getWorkStations(), getUserComment(), getParameters(), getLmOwfPassword(), getNtOwfPassword(), getPrivateData(), getSecurityDescriptor(), Long.valueOf(getUserId()), Long.valueOf(getPrimaryGroupId()), Long.valueOf(getUserAccountControl()), Long.valueOf(getWhichFields()), getLogonHours(), Integer.valueOf(getBadPasswordCount()), Integer.valueOf(getLogonCount()), Integer.valueOf(getCountryCode()), Integer.valueOf(getCodePage()), Character.valueOf(getLmPasswordPresent()), Character.valueOf(getNtPasswordPresent()), Character.valueOf(getPasswordExpired()), Character.valueOf(getPrivateDataSensitive()));
    }

    public void setAccountExpires(long j10) {
        this.accountExpires = j10;
    }

    public void setAdminComment(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.adminComment = nonNullTerminated;
    }

    public void setBadPasswordCount(int i10) {
        this.badPasswordCount = i10;
    }

    public void setCodePage(int i10) {
        this.codePage = i10;
    }

    public void setCountryCode(int i10) {
        this.countryCode = i10;
    }

    public void setFullName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.fullName = nonNullTerminated;
    }

    public void setHomeDirectory(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.homeDirectory = nonNullTerminated;
    }

    public void setHomeDirectoryDrive(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.homeDirectoryDrive = nonNullTerminated;
    }

    public void setLastLogoff(long j10) {
        this.lastLogoff = j10;
    }

    public void setLastLogon(long j10) {
        this.lastLogon = j10;
    }

    public void setLmOwfPassword(RPCShortBlob rPCShortBlob) {
        this.lmOwfPassword = rPCShortBlob;
    }

    public void setLmPasswordPresent(char c7) {
        this.lmPasswordPresent = c7;
    }

    public void setLogonCount(int i10) {
        this.logonCount = i10;
    }

    public void setLogonHours(SAMPRLogonHours sAMPRLogonHours) {
        this.logonHours = sAMPRLogonHours;
    }

    public void setNtOwfPassword(RPCShortBlob rPCShortBlob) {
        this.ntOwfPassword = rPCShortBlob;
    }

    public void setNtPasswordPresent(char c7) {
        this.ntPasswordPresent = c7;
    }

    public void setParameters(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.parameters = nonNullTerminated;
    }

    public void setPasswordCanChange(long j10) {
        this.passwordCanChange = j10;
    }

    public void setPasswordExpired(char c7) {
        this.passwordExpired = c7;
    }

    public void setPasswordLastSet(long j10) {
        this.passwordLastSet = j10;
    }

    public void setPasswordMustChange(long j10) {
        this.passwordMustChange = j10;
    }

    public void setPrimaryGroupId(long j10) {
        this.primaryGroupId = j10;
    }

    public void setPrivateData(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.privateData = nonNullTerminated;
    }

    public void setPrivateDataSensitive(char c7) {
        this.privateDataSensitive = c7;
    }

    public void setProfilePath(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.profilePath = nonNullTerminated;
    }

    public void setScriptPath(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.scriptPath = nonNullTerminated;
    }

    public void setSecurityDescriptor(SAMPRSRSecurityDescriptor sAMPRSRSecurityDescriptor) {
        this.securityDescriptor = sAMPRSRSecurityDescriptor;
    }

    public void setUserAccountControl(long j10) {
        this.userAccountControl = j10;
    }

    public void setUserComment(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.userComment = nonNullTerminated;
    }

    public void setUserId(long j10) {
        this.userId = j10;
    }

    public void setUserName(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.userName = nonNullTerminated;
    }

    public void setWhichFields(long j10) {
        this.whichFields = j10;
    }

    public void setWorkStations(RPCUnicodeString.NonNullTerminated nonNullTerminated) {
        this.workStations = nonNullTerminated;
    }

    public String toString() {
        return String.format("SAMPR_USER_ALL_INFORMATION{UserId:%d, PrimaryGroupId:%d, UserName:%s, FullName:%s}", Long.valueOf(getUserId()), Long.valueOf(getPrimaryGroupId()), getUserName(), getFullName());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) throws UnmarshalException {
        this.userName.unmarshalDeferrals(packetInput);
        this.fullName.unmarshalDeferrals(packetInput);
        this.homeDirectory.unmarshalDeferrals(packetInput);
        this.homeDirectoryDrive.unmarshalDeferrals(packetInput);
        this.scriptPath.unmarshalDeferrals(packetInput);
        this.profilePath.unmarshalDeferrals(packetInput);
        this.adminComment.unmarshalDeferrals(packetInput);
        this.workStations.unmarshalDeferrals(packetInput);
        this.userComment.unmarshalDeferrals(packetInput);
        this.parameters.unmarshalDeferrals(packetInput);
        this.lmOwfPassword.unmarshalDeferrals(packetInput);
        this.ntOwfPassword.unmarshalDeferrals(packetInput);
        this.privateData.unmarshalDeferrals(packetInput);
        this.securityDescriptor.unmarshalDeferrals(packetInput);
        this.logonHours.unmarshalDeferrals(packetInput);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.EIGHT);
        this.lastLogon = packetInput.readLong();
        this.lastLogoff = packetInput.readLong();
        this.passwordLastSet = packetInput.readLong();
        this.accountExpires = packetInput.readLong();
        this.passwordCanChange = packetInput.readLong();
        this.passwordMustChange = packetInput.readLong();
        this.userName.unmarshalEntity(packetInput);
        this.fullName.unmarshalEntity(packetInput);
        this.homeDirectory.unmarshalEntity(packetInput);
        this.homeDirectoryDrive.unmarshalEntity(packetInput);
        this.scriptPath.unmarshalEntity(packetInput);
        this.profilePath.unmarshalEntity(packetInput);
        this.adminComment.unmarshalEntity(packetInput);
        this.workStations.unmarshalEntity(packetInput);
        this.userComment.unmarshalEntity(packetInput);
        this.parameters.unmarshalEntity(packetInput);
        this.lmOwfPassword.unmarshalEntity(packetInput);
        this.ntOwfPassword.unmarshalEntity(packetInput);
        this.privateData.unmarshalEntity(packetInput);
        this.securityDescriptor.unmarshalEntity(packetInput);
        this.userId = packetInput.readUnsignedInt();
        this.primaryGroupId = packetInput.readUnsignedInt();
        this.userAccountControl = packetInput.readUnsignedInt();
        this.whichFields = packetInput.readUnsignedInt();
        this.logonHours.unmarshalEntity(packetInput);
        packetInput.align(Alignment.TWO);
        this.badPasswordCount = packetInput.readUnsignedShort();
        this.logonCount = packetInput.readUnsignedShort();
        this.countryCode = packetInput.readUnsignedShort();
        this.codePage = packetInput.readUnsignedShort();
        this.lmPasswordPresent = packetInput.readUnsignedByte();
        this.ntPasswordPresent = packetInput.readUnsignedByte();
        this.passwordExpired = packetInput.readUnsignedByte();
        this.privateDataSensitive = packetInput.readUnsignedByte();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        RPCUnicodeString.NonNullTerminated nonNullTerminated = new RPCUnicodeString.NonNullTerminated();
        this.userName = nonNullTerminated;
        nonNullTerminated.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated2 = new RPCUnicodeString.NonNullTerminated();
        this.fullName = nonNullTerminated2;
        nonNullTerminated2.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated3 = new RPCUnicodeString.NonNullTerminated();
        this.homeDirectory = nonNullTerminated3;
        nonNullTerminated3.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated4 = new RPCUnicodeString.NonNullTerminated();
        this.homeDirectoryDrive = nonNullTerminated4;
        nonNullTerminated4.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated5 = new RPCUnicodeString.NonNullTerminated();
        this.scriptPath = nonNullTerminated5;
        nonNullTerminated5.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated6 = new RPCUnicodeString.NonNullTerminated();
        this.profilePath = nonNullTerminated6;
        nonNullTerminated6.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated7 = new RPCUnicodeString.NonNullTerminated();
        this.adminComment = nonNullTerminated7;
        nonNullTerminated7.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated8 = new RPCUnicodeString.NonNullTerminated();
        this.workStations = nonNullTerminated8;
        nonNullTerminated8.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated9 = new RPCUnicodeString.NonNullTerminated();
        this.userComment = nonNullTerminated9;
        nonNullTerminated9.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated10 = new RPCUnicodeString.NonNullTerminated();
        this.parameters = nonNullTerminated10;
        nonNullTerminated10.unmarshalPreamble(packetInput);
        RPCShortBlob rPCShortBlob = new RPCShortBlob();
        this.lmOwfPassword = rPCShortBlob;
        rPCShortBlob.unmarshalPreamble(packetInput);
        RPCShortBlob rPCShortBlob2 = new RPCShortBlob();
        this.ntOwfPassword = rPCShortBlob2;
        rPCShortBlob2.unmarshalPreamble(packetInput);
        RPCUnicodeString.NonNullTerminated nonNullTerminated11 = new RPCUnicodeString.NonNullTerminated();
        this.privateData = nonNullTerminated11;
        nonNullTerminated11.unmarshalPreamble(packetInput);
        SAMPRSRSecurityDescriptor sAMPRSRSecurityDescriptor = new SAMPRSRSecurityDescriptor();
        this.securityDescriptor = sAMPRSRSecurityDescriptor;
        sAMPRSRSecurityDescriptor.unmarshalPreamble(packetInput);
        SAMPRLogonHours sAMPRLogonHours = new SAMPRLogonHours();
        this.logonHours = sAMPRLogonHours;
        sAMPRLogonHours.unmarshalPreamble(packetInput);
    }
}
