package io.github.muntashirakon.adb;

import fg.b;
import ha.db;
import io.github.muntashirakon.adb.AdbProtocol;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import javax.security.auth.DestroyFailedException;

/* loaded from: classes.dex */
public class AdbConnection implements Closeable {
    public static final String TAG = "AdbConnection";
    private volatile boolean mAbortOnUnauthorised;
    private final int mApi;
    private volatile boolean mAuthorisationFailed;
    private volatile boolean mConnectAttempted;
    private volatile boolean mConnectionEstablished;
    private volatile Exception mConnectionException;
    private final Thread mConnectionThread;
    private final String mHost;
    private final KeyPair mKeyPair;
    private int mLastLocalId;
    private volatile int mMaxData;
    private final ConcurrentHashMap<Integer, AdbStream> mOpenedStreams;
    private final InputStream mPlainInputStream;
    private final OutputStream mPlainOutputStream;
    private final int mPort;
    private volatile int mProtocolVersion;
    private volatile boolean mSentSignature;
    private final Socket mSocket;
    private volatile InputStream mTlsInputStream;
    private volatile OutputStream mTlsOutputStream;
    private volatile String mDeviceName = "Unknown Device";
    private volatile boolean mIsTls = false;
    private final Object mLock = new Object();
    public boolean isAuthIn = false;

    private AdbConnection(String str, int i10, KeyPair keyPair, int i11) throws IOException {
        Objects.requireNonNull(str);
        this.mHost = str;
        this.mPort = i10;
        this.mApi = i11;
        this.mProtocolVersion = AdbProtocol.getProtocolVersion(i11);
        this.mMaxData = AdbProtocol.getMaxData(i11);
        Objects.requireNonNull(keyPair);
        this.mKeyPair = keyPair;
        try {
            Socket socket = new Socket(str, i10);
            this.mSocket = socket;
            this.mPlainInputStream = socket.getInputStream();
            this.mPlainOutputStream = socket.getOutputStream();
            socket.setTcpNoDelay(true);
            this.mOpenedStreams = new ConcurrentHashMap<>();
            this.mLastLocalId = 0;
            this.mConnectionThread = createConnectionThread();
        } catch (Throwable th2) {
            throw ((IOException) new IOException().initCause(th2));
        }
    }

    private void cleanupStreams() {
        Iterator<AdbStream> it = this.mOpenedStreams.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
        this.mOpenedStreams.clear();
    }

    public static AdbConnection create(String str, int i10, PrivateKey privateKey, Certificate certificate) {
        return create(str, i10, privateKey, certificate, 1);
    }

    private Thread createConnectionThread() {
        return new b(new db(7, this), 1);
    }

    private InputStream getInputStream() {
        if (!this.mIsTls) {
            return this.mPlainInputStream;
        }
        InputStream inputStream = this.mTlsInputStream;
        Objects.requireNonNull(inputStream);
        return inputStream;
    }

    private OutputStream getOutputStream() {
        if (!this.mIsTls) {
            return this.mPlainOutputStream;
        }
        OutputStream outputStream = this.mTlsOutputStream;
        Objects.requireNonNull(outputStream);
        return outputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createConnectionThread$0() throws IOException {
        AdbStream adbStream;
        byte[] bArrGenerateAuth;
        while (true) {
            if (!this.mConnectionThread.isInterrupted()) {
                try {
                    AdbProtocol.Message message = AdbProtocol.Message.parse(getInputStream(), this.mProtocolVersion, this.mMaxData);
                    int i10 = message.command;
                    switch (i10) {
                        case AdbProtocol.A_CLSE /* 1163086915 */:
                        case AdbProtocol.A_WRTE /* 1163154007 */:
                        case AdbProtocol.A_OKAY /* 1497451343 */:
                            if (this.mConnectionEstablished && (adbStream = this.mOpenedStreams.get(Integer.valueOf(message.arg1))) != null) {
                                synchronized (adbStream) {
                                    try {
                                        int i11 = message.command;
                                        if (i11 == 1497451343) {
                                            adbStream.updateRemoteId(message.arg0);
                                            adbStream.readyForWrite();
                                            adbStream.notify();
                                        } else if (i11 == 1163154007) {
                                            adbStream.addPayload(message.payload);
                                            adbStream.sendReady();
                                        } else {
                                            this.mOpenedStreams.remove(Integer.valueOf(message.arg1));
                                            adbStream.notifyClose(true);
                                        }
                                    } finally {
                                    }
                                }
                            }
                            break;
                        case AdbProtocol.A_AUTH /* 1213486401 */:
                            if (!this.mIsTls && message.arg0 == 1) {
                                this.isAuthIn = true;
                                if (!this.mSentSignature) {
                                    bArrGenerateAuth = AdbProtocol.generateAuth(2, AndroidPubkey.adbAuthSign(this.mKeyPair.getPrivateKey(), message.payload));
                                    this.mSentSignature = true;
                                } else if (this.mAbortOnUnauthorised) {
                                    this.mAuthorisationFailed = true;
                                    break;
                                } else {
                                    bArrGenerateAuth = AdbProtocol.generateAuth(3, AndroidPubkey.encodeWithName((RSAPublicKey) this.mKeyPair.getPublicKey(), this.mDeviceName));
                                }
                                sendPacket(bArrGenerateAuth);
                            }
                            break;
                        case AdbProtocol.A_CNXN /* 1314410051 */:
                            this.isAuthIn = false;
                            synchronized (this) {
                                this.mProtocolVersion = message.arg0;
                                this.mMaxData = message.arg1;
                                this.mConnectionEstablished = true;
                                notifyAll();
                            }
                        case AdbProtocol.A_STLS /* 1397511251 */:
                            sendPacket(AdbProtocol.generateStls());
                            SSLSocket sSLSocket = (SSLSocket) SslUtils.getSslContext(this.mKeyPair).getSocketFactory().createSocket(this.mSocket, this.mHost, this.mPort, true);
                            sSLSocket.startHandshake();
                            synchronized (this) {
                                this.mTlsInputStream = sSLSocket.getInputStream();
                                this.mTlsOutputStream = sSLSocket.getOutputStream();
                                this.mIsTls = true;
                            }
                        default:
                            String.format("Unrecognized command = 0x%x", Integer.valueOf(i10));
                    }
                } catch (Exception e7) {
                    this.mConnectionException = e7;
                    e7.printStackTrace();
                }
            }
        }
        synchronized (this) {
            cleanupStreams();
            notifyAll();
            this.mConnectionEstablished = false;
            this.mConnectAttempted = false;
        }
    }

    private boolean waitForConnection(long j10, TimeUnit timeUnit) {
        String message;
        synchronized (this) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                Objects.requireNonNull(timeUnit);
                long millis = jCurrentTimeMillis2 + timeUnit.toMillis(j10);
                while (!this.mConnectionEstablished && this.mConnectAttempted && millis - System.currentTimeMillis() > 0) {
                    wait(millis - System.currentTimeMillis());
                }
                while (!this.mConnectionEstablished && this.mConnectAttempted && System.currentTimeMillis() - jCurrentTimeMillis < 60000 && this.isAuthIn) {
                    Thread.sleep(1000L);
                }
                if (this.mConnectionEstablished) {
                    return true;
                }
                if (this.mConnectAttempted) {
                    return false;
                }
                if (this.mAuthorisationFailed) {
                    throw new AdbAuthenticationFailedException();
                }
                Exception exc = this.mConnectionException;
                if (exc == null || !(exc instanceof SSLProtocolException) || (message = exc.getMessage()) == null || !message.contains("protocol error")) {
                    throw new IOException("Connection failed");
                }
                throw ((AdbPairingRequiredException) new AdbPairingRequiredException("ADB pairing is required.").initCause(exc));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        q4.a.e(this.mSocket);
        this.mConnectionThread.interrupt();
        try {
            this.mConnectionThread.join();
        } catch (InterruptedException unused) {
        }
        try {
            this.mKeyPair.destroy();
        } catch (DestroyFailedException unused2) {
        }
    }

    public boolean connect() {
        return connect(Long.MAX_VALUE, TimeUnit.MILLISECONDS, false);
    }

    public void flushPacket() {
        synchronized (this.mLock) {
            getOutputStream().flush();
        }
    }

    public int getMaxData() {
        if (!this.mConnectAttempted) {
            throw new IllegalStateException("connect() must be called first");
        }
        waitForConnection(Long.MAX_VALUE, TimeUnit.MILLISECONDS);
        return this.mMaxData;
    }

    public int getProtocolVersion() {
        return this.mProtocolVersion;
    }

    public boolean isConnected() {
        return !this.mSocket.isClosed() && this.mSocket.isConnected();
    }

    public boolean isConnectionEstablished() {
        return this.mConnectionEstablished;
    }

    public AdbStream open(int i10, String... strArr) {
        if (i10 < 1 || i10 > 15) {
            throw new IllegalArgumentException(da.b.a(i10, "Invalid service: "));
        }
        return open(LocalServices.getDestination(i10, strArr));
    }

    public void sendPacket(byte[] bArr) {
        synchronized (this.mLock) {
            OutputStream outputStream = getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
        }
    }

    public void setDeviceName(String str) {
        Objects.requireNonNull(str);
        this.mDeviceName = str;
    }

    public static AdbConnection create(String str, int i10, PrivateKey privateKey, Certificate certificate, int i11) {
        Objects.requireNonNull(privateKey);
        Objects.requireNonNull(certificate);
        return create(str, i10, new KeyPair(privateKey, certificate), i11);
    }

    public boolean connect(long j10, TimeUnit timeUnit, boolean z) {
        if (this.mConnectionEstablished) {
            throw new IllegalStateException("Already connected");
        }
        sendPacket(AdbProtocol.generateConnect(this.mApi));
        this.mConnectAttempted = true;
        this.mAbortOnUnauthorised = z;
        this.mAuthorisationFailed = false;
        this.mConnectionThread.start();
        Objects.requireNonNull(timeUnit);
        return waitForConnection(j10, timeUnit);
    }

    public static class Builder {
        private int mApi;
        private Certificate mCertificate;
        private String mDeviceName;
        private String mHost;
        private KeyPair mKeyPair;
        private int mPort;
        private PrivateKey mPrivateKey;

        public Builder() {
            this.mHost = "127.0.0.1";
            this.mPort = 5555;
            this.mApi = 1;
        }

        public AdbConnection build() {
            Certificate certificate;
            if (this.mKeyPair == null) {
                PrivateKey privateKey = this.mPrivateKey;
                if (privateKey == null || (certificate = this.mCertificate) == null) {
                    throw new UnsupportedOperationException("Private key and certificate must be set.");
                }
                this.mKeyPair = new KeyPair(privateKey, certificate);
            }
            AdbConnection adbConnectionCreate = AdbConnection.create(this.mHost, this.mPort, this.mKeyPair, this.mApi);
            String str = this.mDeviceName;
            if (str != null) {
                adbConnectionCreate.setDeviceName(str);
            }
            return adbConnectionCreate;
        }

        public AdbConnection connect() throws IOException {
            AdbConnection adbConnectionBuild = build();
            if (adbConnectionBuild.connect()) {
                throw new IOException("Unable to establish a new connection.");
            }
            return adbConnectionBuild;
        }

        public Builder setApi(int i10) {
            this.mApi = i10;
            return this;
        }

        public Builder setCertificate(Certificate certificate) {
            this.mCertificate = certificate;
            return this;
        }

        public Builder setDeviceName(String str) {
            this.mDeviceName = str;
            return this;
        }

        public Builder setHost(String str) {
            this.mHost = str;
            return this;
        }

        public Builder setKeyPair(KeyPair keyPair) {
            this.mKeyPair = keyPair;
            return this;
        }

        public Builder setPort(int i10) {
            this.mPort = i10;
            return this;
        }

        public Builder setPrivateKey(PrivateKey privateKey) {
            this.mPrivateKey = privateKey;
            return this;
        }

        public AdbConnection connect(long j10, TimeUnit timeUnit, boolean z) throws IOException {
            AdbConnection adbConnectionBuild = build();
            if (adbConnectionBuild.connect(j10, timeUnit, z)) {
                throw new IOException("Unable to establish a new connection.");
            }
            return adbConnectionBuild;
        }

        public Builder(String str, int i10) {
            this.mApi = 1;
            this.mHost = str;
            this.mPort = i10;
        }
    }

    public static AdbConnection create(String str, int i10, KeyPair keyPair, int i11) {
        return new AdbConnection(str, i10, keyPair, i11);
    }

    public AdbStream open(String str) {
        int i10 = this.mLastLocalId + 1;
        this.mLastLocalId = i10;
        if (this.mConnectAttempted) {
            waitForConnection(Long.MAX_VALUE, TimeUnit.MILLISECONDS);
            AdbStream adbStream = new AdbStream(this, i10);
            this.mOpenedStreams.put(Integer.valueOf(i10), adbStream);
            Objects.requireNonNull(str);
            sendPacket(AdbProtocol.generateOpen(i10, str));
            synchronized (adbStream) {
                adbStream.wait();
            }
            if (!adbStream.isClosed()) {
                return adbStream;
            }
            this.mOpenedStreams.remove(Integer.valueOf(i10));
            throw new ConnectException("Stream open actively rejected by remote peer.");
        }
        throw new IllegalStateException("connect() must be called first");
    }
}
