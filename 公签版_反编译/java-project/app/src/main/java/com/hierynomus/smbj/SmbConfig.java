package com.hierynomus.smbj;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2GlobalCapability;
import com.hierynomus.ntlm.NtlmConfig;
import com.hierynomus.protocol.commons.Factory;
import com.hierynomus.protocol.commons.socket.ProxySocketFactory;
import com.hierynomus.security.SecurityProvider;
import com.hierynomus.security.bc.BCSecurityProvider;
import com.hierynomus.smb.SMBPacket;
import com.hierynomus.smb.SMBPacketData;
import com.hierynomus.smbj.auth.Authenticator;
import com.hierynomus.smbj.auth.NtlmAuthenticator;
import com.hierynomus.smbj.auth.SpnegoAuthenticator;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.transport.TransportLayerFactory;
import com.hierynomus.smbj.transport.tcp.direct.DirectTcpTransportFactory;
import java.lang.reflect.InvocationTargetException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

/* loaded from: classes.dex */
public final class SmbConfig {
    private static final boolean ANDROID;
    private static final int DEFAULT_BUFFER_SIZE = 1048576;
    private static final int DEFAULT_SO_TIMEOUT = 0;
    private static final TimeUnit DEFAULT_SO_TIMEOUT_UNIT;
    private static final int DEFAULT_TIMEOUT = 60;
    private static final TimeUnit DEFAULT_TIMEOUT_UNIT;
    private static final TransportLayerFactory<SMBPacketData<?>, SMBPacket<?, ?>> DEFAULT_TRANSPORT_LAYER_FACTORY;
    private List<Factory.Named<Authenticator>> authenticators;
    private GSSContextConfig clientGSSContextConfig;
    private UUID clientGuid;
    private boolean dfsEnabled;
    private Set<SMB2Dialect> dialects;
    private boolean directoryLeasingEnabled;
    private boolean encryptData;
    private NtlmConfig ntlmConfig;
    private Random random;
    private int readBufferSize;
    private long readTimeout;
    private SecurityProvider securityProvider;
    private boolean signingEnabled;
    private boolean signingRequired;
    private int soTimeout;
    private SocketFactory socketFactory;
    private int transactBufferSize;
    private long transactTimeout;
    private TransportLayerFactory<SMBPacketData<?>, SMBPacket<?, ?>> transportLayerFactory;
    private boolean useMultiProtocolNegotiate;
    private int writeBufferSize;
    private long writeTimeout;

    public static class Builder {
        private SmbConfig config;
        private NtlmConfig.Builder ntlmConfigBuilder;

        public Builder() {
            SmbConfig smbConfig = new SmbConfig();
            this.config = smbConfig;
            this.ntlmConfigBuilder = NtlmConfig.builder(smbConfig.random);
        }

        public SmbConfig build() {
            if (this.config.dialects.isEmpty()) {
                throw new IllegalStateException("At least one SMB dialect should be specified");
            }
            if (this.config.signingRequired && !this.config.signingEnabled) {
                throw new IllegalStateException("If signing is required, it should also be enabled");
            }
            if (!this.config.signingEnabled && SMB2Dialect.supportsSmb3x(this.config.dialects)) {
                throw new IllegalStateException("Signing cannot be disabled when using SMB3.x dialects");
            }
            if (this.config.encryptData && !SMB2Dialect.supportsSmb3x(this.config.dialects)) {
                throw new IllegalStateException("If encryption is enabled, at least one dialect should be SMB3.x compatible");
            }
            this.config.ntlmConfig = this.ntlmConfigBuilder.build();
            return new SmbConfig();
        }

        @SafeVarargs
        public final Builder withAuthenticators(Factory.Named<Authenticator>... namedArr) {
            return withAuthenticators(Arrays.asList(namedArr));
        }

        public Builder withBufferSize(int i10) {
            if (i10 > 0) {
                return withReadBufferSize(i10).withWriteBufferSize(i10).withTransactBufferSize(i10);
            }
            throw new IllegalArgumentException("Buffer size must be greater than zero");
        }

        public Builder withClientGSSContextConfig(GSSContextConfig gSSContextConfig) {
            if (gSSContextConfig == null) {
                throw new IllegalArgumentException("Client GSSContext Config may not be null");
            }
            this.config.clientGSSContextConfig = gSSContextConfig;
            return this;
        }

        public Builder withClientGuid(UUID uuid) {
            if (uuid == null) {
                throw new IllegalArgumentException("Client GUID may not be null");
            }
            this.config.clientGuid = uuid;
            return this;
        }

        public Builder withDfsEnabled(boolean z) {
            this.config.dfsEnabled = z;
            return this;
        }

        public Builder withDialects(SMB2Dialect... sMB2DialectArr) {
            return withDialects(Arrays.asList(sMB2DialectArr));
        }

        public Builder withDirectoryLeasingEnabled(boolean z) {
            this.config.directoryLeasingEnabled = z;
            return this;
        }

        public Builder withEncryptData(boolean z) {
            this.config.encryptData = z;
            return this;
        }

        public Builder withMultiProtocolNegotiate(boolean z) {
            this.config.useMultiProtocolNegotiate = z;
            return this;
        }

        public Builder withNegotiatedBufferSize() {
            return withBufferSize(Integer.MAX_VALUE);
        }

        public NtlmConfig.Builder withNtlmConfig() {
            return this.ntlmConfigBuilder;
        }

        public Builder withRandomProvider(Random random) {
            if (random == null) {
                throw new IllegalArgumentException("Random provider may not be null");
            }
            this.config.random = random;
            return this;
        }

        public Builder withReadBufferSize(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Read buffer size must be greater than zero");
            }
            this.config.readBufferSize = i10;
            return this;
        }

        public Builder withReadTimeout(long j10, TimeUnit timeUnit) {
            this.config.readTimeout = timeUnit.toMillis(j10);
            return this;
        }

        public Builder withSecurityProvider(SecurityProvider securityProvider) {
            if (securityProvider == null) {
                throw new IllegalArgumentException("Security provider may not be null");
            }
            this.config.securityProvider = securityProvider;
            return this;
        }

        public Builder withSigningEnabled(boolean z) {
            this.config.signingEnabled = z;
            return this;
        }

        public Builder withSigningRequired(boolean z) {
            this.config.signingRequired = z;
            return this;
        }

        public Builder withSoTimeout(int i10) {
            return withSoTimeout(i10, TimeUnit.MILLISECONDS);
        }

        public Builder withSocketFactory(SocketFactory socketFactory) {
            if (socketFactory == null) {
                throw new IllegalArgumentException("Socket factory may not be null");
            }
            this.config.socketFactory = socketFactory;
            return this;
        }

        public Builder withTimeout(long j10, TimeUnit timeUnit) {
            return withReadTimeout(j10, timeUnit).withWriteTimeout(j10, timeUnit).withTransactTimeout(j10, timeUnit);
        }

        public Builder withTransactBufferSize(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Transact buffer size must be greater than zero");
            }
            this.config.transactBufferSize = i10;
            return this;
        }

        public Builder withTransactTimeout(long j10, TimeUnit timeUnit) {
            this.config.transactTimeout = timeUnit.toMillis(j10);
            return this;
        }

        public Builder withTransportLayerFactory(TransportLayerFactory<SMBPacketData<?>, SMBPacket<?, ?>> transportLayerFactory) {
            if (transportLayerFactory == null) {
                throw new IllegalArgumentException("Transport layer factory may not be null");
            }
            this.config.transportLayerFactory = transportLayerFactory;
            return this;
        }

        public Builder withWorkStationName(String str) {
            this.ntlmConfigBuilder.withWorkstationName(str);
            return this;
        }

        public Builder withWriteBufferSize(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Write buffer size must be greater than zero");
            }
            this.config.writeBufferSize = i10;
            return this;
        }

        public Builder withWriteTimeout(long j10, TimeUnit timeUnit) {
            this.config.writeTimeout = timeUnit.toMillis(j10);
            return this;
        }

        public Builder withAuthenticators(Iterable<Factory.Named<Authenticator>> iterable) {
            if (iterable == null) {
                throw new IllegalArgumentException("Authenticators may not be null");
            }
            this.config.authenticators.clear();
            for (Factory.Named<Authenticator> named : iterable) {
                if (named == null) {
                    throw new IllegalArgumentException("Authenticator may not be null");
                }
                this.config.authenticators.add(named);
            }
            return this;
        }

        public Builder withDialects(Iterable<SMB2Dialect> iterable) {
            if (iterable == null) {
                throw new IllegalArgumentException("Dialects may not be null");
            }
            this.config.dialects.clear();
            for (SMB2Dialect sMB2Dialect : iterable) {
                if (sMB2Dialect == null) {
                    throw new IllegalArgumentException("Dialect may not be null");
                }
                this.config.dialects.add(sMB2Dialect);
            }
            return this;
        }

        public Builder withSoTimeout(long j10, TimeUnit timeUnit) {
            if (j10 < 0) {
                throw new IllegalArgumentException("Socket timeout should be either 0 (no timeout) or a positive value");
            }
            long millis = timeUnit.toMillis(j10);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Socket timeout should be less than 2147483647ms");
            }
            this.config.soTimeout = (int) millis;
            return this;
        }

        public Builder(SmbConfig smbConfig) {
            SmbConfig smbConfig2 = new SmbConfig();
            this.config = smbConfig2;
            this.ntlmConfigBuilder = NtlmConfig.builder(smbConfig2.ntlmConfig);
        }
    }

    static {
        boolean z;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        DEFAULT_SO_TIMEOUT_UNIT = timeUnit;
        DEFAULT_TIMEOUT_UNIT = timeUnit;
        DEFAULT_TRANSPORT_LAYER_FACTORY = new DirectTcpTransportFactory();
        try {
            Class.forName("android.os.Build");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        ANDROID = z;
    }

    public static Builder builder() {
        return new Builder().withClientGuid(UUID.randomUUID()).withSecurityProvider(getDefaultSecurityProvider()).withSocketFactory(new ProxySocketFactory()).withSigningRequired(false).withSigningEnabled(true).withDfsEnabled(false).withMultiProtocolNegotiate(false).withBufferSize(1048576).withTransportLayerFactory(DEFAULT_TRANSPORT_LAYER_FACTORY).withSoTimeout(0L, DEFAULT_SO_TIMEOUT_UNIT).withDialects(SMB2Dialect.SMB_3_1_1, SMB2Dialect.SMB_3_0_2, SMB2Dialect.SMB_3_0, SMB2Dialect.SMB_2_1, SMB2Dialect.SMB_2_0_2).withAuthenticators(getDefaultAuthenticators()).withTimeout(60L, DEFAULT_TIMEOUT_UNIT).withClientGSSContextConfig(GSSContextConfig.createDefaultConfig()).withEncryptData(false).withDirectoryLeasingEnabled(true);
    }

    public static SmbConfig createDefaultConfig() {
        return builder().build();
    }

    private static List<Factory.Named<Authenticator>> getDefaultAuthenticators() {
        ArrayList arrayList = new ArrayList();
        if (!ANDROID) {
            try {
                arrayList.add((Factory.Named) SpnegoAuthenticator.Factory.class.getDeclaredConstructor(null).newInstance(null));
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e7) {
                throw new SMBRuntimeException(e7);
            }
        }
        arrayList.add(new NtlmAuthenticator.Factory());
        return arrayList;
    }

    private static SecurityProvider getDefaultSecurityProvider() {
        return new BCSecurityProvider();
    }

    public Set<SMB2GlobalCapability> getClientCapabilities() {
        if (!SMB2Dialect.supportsSmb3x(this.dialects)) {
            return EnumSet.noneOf(SMB2GlobalCapability.class);
        }
        EnumSet enumSetOf = EnumSet.of(SMB2GlobalCapability.SMB2_GLOBAL_CAP_LARGE_MTU);
        if (isDfsEnabled()) {
            enumSetOf.add(SMB2GlobalCapability.SMB2_GLOBAL_CAP_DFS);
        }
        if (isEncryptData()) {
            enumSetOf.add(SMB2GlobalCapability.SMB2_GLOBAL_CAP_ENCRYPTION);
        }
        if (isDirectoryLeasingEnabled()) {
            enumSetOf.add(SMB2GlobalCapability.SMB2_GLOBAL_CAP_LEASING);
            enumSetOf.add(SMB2GlobalCapability.SMB2_GLOBAL_CAP_DIRECTORY_LEASING);
        }
        return enumSetOf;
    }

    public GSSContextConfig getClientGSSContextConfig() {
        return this.clientGSSContextConfig;
    }

    public UUID getClientGuid() {
        return this.clientGuid;
    }

    public NtlmConfig getNtlmConfig() {
        return this.ntlmConfig;
    }

    public Random getRandomProvider() {
        return this.random;
    }

    public int getReadBufferSize() {
        return this.readBufferSize;
    }

    public long getReadTimeout() {
        return this.readTimeout;
    }

    public SecurityProvider getSecurityProvider() {
        return this.securityProvider;
    }

    public int getSoTimeout() {
        return this.soTimeout;
    }

    public SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    public List<Factory.Named<Authenticator>> getSupportedAuthenticators() {
        return new ArrayList(this.authenticators);
    }

    public Set<SMB2Dialect> getSupportedDialects() {
        return EnumSet.copyOf((Collection) this.dialects);
    }

    public int getTransactBufferSize() {
        return this.transactBufferSize;
    }

    public long getTransactTimeout() {
        return this.transactTimeout;
    }

    public TransportLayerFactory<SMBPacketData<?>, SMBPacket<?, ?>> getTransportLayerFactory() {
        return this.transportLayerFactory;
    }

    public String getWorkStationName() {
        return getNtlmConfig().getWorkstationName();
    }

    public int getWriteBufferSize() {
        return this.writeBufferSize;
    }

    public long getWriteTimeout() {
        return this.writeTimeout;
    }

    public boolean isDfsEnabled() {
        return this.dfsEnabled;
    }

    public boolean isDirectoryLeasingEnabled() {
        return this.directoryLeasingEnabled;
    }

    public boolean isEncryptData() {
        return this.encryptData;
    }

    public boolean isSigningEnabled() {
        return this.signingEnabled;
    }

    public boolean isSigningRequired() {
        return this.signingRequired;
    }

    public boolean isUseMultiProtocolNegotiate() {
        return this.useMultiProtocolNegotiate;
    }

    private SmbConfig() {
        this.directoryLeasingEnabled = true;
        this.dialects = EnumSet.noneOf(SMB2Dialect.class);
        this.random = new SecureRandom();
        this.authenticators = new ArrayList();
    }

    private SmbConfig(SmbConfig smbConfig) {
        this();
        this.dialects.addAll(smbConfig.dialects);
        this.authenticators.addAll(smbConfig.authenticators);
        this.socketFactory = smbConfig.socketFactory;
        this.random = smbConfig.random;
        this.clientGuid = smbConfig.clientGuid;
        this.signingRequired = smbConfig.signingRequired;
        this.signingEnabled = smbConfig.signingEnabled;
        this.dfsEnabled = smbConfig.dfsEnabled;
        this.securityProvider = smbConfig.securityProvider;
        this.readBufferSize = smbConfig.readBufferSize;
        this.readTimeout = smbConfig.readTimeout;
        this.writeBufferSize = smbConfig.writeBufferSize;
        this.writeTimeout = smbConfig.writeTimeout;
        this.transactBufferSize = smbConfig.transactBufferSize;
        this.transactTimeout = smbConfig.transactTimeout;
        this.transportLayerFactory = smbConfig.transportLayerFactory;
        this.soTimeout = smbConfig.soTimeout;
        this.useMultiProtocolNegotiate = smbConfig.useMultiProtocolNegotiate;
        this.clientGSSContextConfig = smbConfig.clientGSSContextConfig;
        this.encryptData = smbConfig.encryptData;
        this.directoryLeasingEnabled = smbConfig.directoryLeasingEnabled;
        this.ntlmConfig = smbConfig.ntlmConfig;
    }

    public static Builder builder(SmbConfig smbConfig) {
        return new Builder(smbConfig);
    }
}
