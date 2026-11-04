package com.hierynomus.ntlm;

import com.hierynomus.ntlm.messages.WindowsVersion;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes.dex */
public class NtlmConfig {
    private boolean integrity;
    private byte[] machineID;
    private boolean omitVersion;
    private WindowsVersion windowsVersion;
    private String workstationName;

    public static Builder builder(Random random) {
        return new Builder(random);
    }

    public static NtlmConfig defaultConfig() {
        return builder(new SecureRandom()).build();
    }

    public byte[] getMachineID() {
        return this.machineID;
    }

    public WindowsVersion getWindowsVersion() {
        return this.windowsVersion;
    }

    public String getWorkstationName() {
        return this.workstationName;
    }

    public boolean isIntegrityEnabled() {
        return this.integrity;
    }

    public boolean isOmitVersion() {
        return this.omitVersion;
    }

    public static Builder builder(NtlmConfig ntlmConfig) {
        return new Builder(ntlmConfig);
    }

    private NtlmConfig() {
    }

    private NtlmConfig(NtlmConfig ntlmConfig) {
        this.windowsVersion = ntlmConfig.windowsVersion;
        this.workstationName = ntlmConfig.workstationName;
        this.integrity = ntlmConfig.integrity;
        this.omitVersion = ntlmConfig.omitVersion;
        this.machineID = ntlmConfig.machineID;
    }

    public static class Builder {
        private NtlmConfig config;

        public Builder(Random random) {
            NtlmConfig ntlmConfig = new NtlmConfig();
            this.config = ntlmConfig;
            ntlmConfig.windowsVersion = new WindowsVersion(WindowsVersion.ProductMajorVersion.WINDOWS_MAJOR_VERSION_6, WindowsVersion.ProductMinorVersion.WINDOWS_MINOR_VERSION_1, 7600, WindowsVersion.NtlmRevisionCurrent.NTLMSSP_REVISION_W2K3);
            this.config.integrity = true;
            this.config.omitVersion = false;
            this.config.machineID = new byte[32];
            random.nextBytes(this.config.machineID);
        }

        public NtlmConfig build() {
            return new NtlmConfig();
        }

        public Builder withIntegrity(boolean z) {
            this.config.integrity = z;
            return this;
        }

        public Builder withMachineID(byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("MachineID must not be null");
            }
            if (bArr.length != 32) {
                throw new IllegalArgumentException("MachineID must be 32 bytes");
            }
            this.config.machineID = bArr;
            return this;
        }

        public Builder withOmitVersion(boolean z) {
            this.config.omitVersion = z;
            return this;
        }

        public Builder withWindowsVersion(WindowsVersion windowsVersion) {
            this.config.windowsVersion = windowsVersion;
            return this;
        }

        public Builder withWorkstationName(String str) {
            this.config.workstationName = str;
            return this;
        }

        public Builder(NtlmConfig ntlmConfig) {
            this.config = new NtlmConfig();
        }
    }
}
