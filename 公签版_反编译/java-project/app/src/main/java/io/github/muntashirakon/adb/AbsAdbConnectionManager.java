package io.github.muntashirakon.adb;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.v;
import io.github.muntashirakon.adb.AdbConnection;
import io.github.muntashirakon.adb.android.AdbMdns;
import j$.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetAddress;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.security.auth.DestroyFailedException;
import wa.t;
import wa.u;
import wa.w;

/* loaded from: classes.dex */
public abstract class AbsAdbConnectionManager implements Closeable {
    private AdbConnection mAdbConnection;
    private final Object mLock = new Object();
    private String mHostAddress = "127.0.0.1";
    private int mApi = Build.VERSION.SDK_INT;
    private long mTimeout = 3333;
    private TimeUnit mTimeoutUnit = TimeUnit.MILLISECONDS;
    private boolean mThrowOnUnauthorised = false;
    boolean isConnected = false;

    private KeyPair getAdbKeyPair() {
        PrivateKey privateKey = getPrivateKey();
        Objects.requireNonNull(privateKey);
        Certificate certificate = getCertificate();
        Objects.requireNonNull(certificate);
        return new KeyPair(privateKey, certificate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$autoConnect$0(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i10, String str) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i10);
            if (t.f17728a.f17755v) {
                w.b("tcp找到端口：" + i10);
            }
            System.out.getClass();
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$autoConnect$1(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i10, String str) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i10);
            if (t.f17728a.f17755v) {
                w.b("tls找到端口：" + i10);
            }
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$autoConnect$2(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i10, String str) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i10);
        }
        countDownLatch.countDown();
    }

    public boolean autoConnect(Context context, long j10) {
        com.yunpan.appmanage.util.w wVar;
        this.isConnected = false;
        synchronized (this.mLock) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(-1);
                AtomicReference atomicReference = new AtomicReference(null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                if (t.f17728a.f17755v) {
                    w.b("搜索端口中......");
                }
                long j11 = v.f4106a.D ? 2222L : j10;
                int i10 = 0;
                do {
                    i10++;
                    if (i10 > 6) {
                        throw new InterruptedException("未找到adb端口，请确保已开启USB调试和无线调试");
                    }
                    AdbMdns adbMdns = new AdbMdns(context, AdbMdns.SERVICE_TYPE_ADB, new a(atomicReference, atomicInteger, countDownLatch, 0));
                    adbMdns.start();
                    AdbMdns adbMdns2 = new AdbMdns(context, AdbMdns.SERVICE_TYPE_TLS_CONNECT, new a(atomicReference, atomicInteger, countDownLatch, 1));
                    adbMdns2.start();
                    try {
                        if (!countDownLatch.await(j11, TimeUnit.MILLISECONDS)) {
                            u uVar = t.f17728a;
                            if (uVar.f17755v) {
                                w.b("搜索不到端口");
                            }
                            if (!v.f4106a.D) {
                                throw new InterruptedException("未找到adb端口，请确保已开启USB调试和无线调试");
                            }
                            if (uVar.f17755v) {
                                w.b("博越L模式 搜索不到端口");
                            }
                            try {
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 0);
                                Thread.sleep(200L);
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 0);
                                Thread.sleep(500L);
                                if (uVar.f17755v) {
                                    w.b("adb_wifi_enabled：" + Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled"));
                                }
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 1);
                                Thread.sleep(333L);
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 1);
                                Thread.sleep(1000L);
                            } catch (Exception unused) {
                            }
                        }
                        adbMdns.stop();
                        adbMdns2.stop();
                        wVar = v.f4106a;
                        if (!wVar.D) {
                            break;
                        }
                    } finally {
                        adbMdns.stop();
                        adbMdns2.stop();
                    }
                } while (countDownLatch.getCount() > 0);
                String str = (String) atomicReference.get();
                int i11 = atomicInteger.get();
                if (str == null || i11 == -1) {
                    throw new IOException("未找到有效的adb端口");
                }
                this.mHostAddress = str;
                u uVar2 = t.f17728a;
                if (uVar2.f17755v) {
                    w.b("尝试连接 " + str + ":" + i11);
                }
                AdbConnection.Builder keyPair = new AdbConnection.Builder(str, i11).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                String deviceName = getDeviceName();
                Objects.requireNonNull(deviceName);
                AdbConnection adbConnectionBuild = keyPair.setDeviceName(deviceName).build();
                this.mAdbConnection = adbConnectionBuild;
                if (!adbConnectionBuild.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised)) {
                    if (uVar2.f17755v) {
                        w.b("连接失败");
                    }
                    return false;
                }
                if (uVar2.f17755v) {
                    w.b("连接成功");
                }
                if (i11 > 10000 && wVar.C) {
                    if (uVar2.f17755v) {
                        w.b("已勾选自动修改端口为5555");
                    }
                    getAdbConnection().open("tcpip:5555");
                    try {
                        Thread.sleep(2222L);
                    } catch (Exception unused2) {
                    }
                    if (!isConnected()) {
                        if (t.f17728a.f17755v) {
                            w.b("修改完成，重新连接");
                        }
                        return connect(5555);
                    }
                    if (t.f17728a.f17755v) {
                        w.b("修改端口疑是失败");
                    }
                }
                this.isConnected = true;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        try {
            getPrivateKey().destroy();
        } catch (NoSuchMethodError | DestroyFailedException e7) {
            e7.printStackTrace();
        }
        AdbConnection adbConnection = this.mAdbConnection;
        if (adbConnection != null) {
            adbConnection.close();
            this.mAdbConnection = null;
        }
    }

    public boolean connect(int i10) {
        this.isConnected = false;
        synchronized (this.mLock) {
            try {
                if (isConnected()) {
                    return false;
                }
                AdbConnection.Builder keyPair = new AdbConnection.Builder(this.mHostAddress, i10).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                String deviceName = getDeviceName();
                Objects.requireNonNull(deviceName);
                AdbConnection adbConnectionBuild = keyPair.setDeviceName(deviceName).build();
                this.mAdbConnection = adbConnectionBuild;
                if (!adbConnectionBuild.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised)) {
                    return false;
                }
                this.isConnected = true;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean connectTcp(Context context, long j10) {
        return autoConnect(context, AdbMdns.SERVICE_TYPE_ADB, j10);
    }

    public boolean connectTls(Context context, long j10) {
        return autoConnect(context, AdbMdns.SERVICE_TYPE_TLS_CONNECT, j10);
    }

    public void disconnect() {
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null) {
                    adbConnection.close();
                    this.mAdbConnection = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public AdbConnection getAdbConnection() {
        AdbConnection adbConnection;
        synchronized (this.mLock) {
            adbConnection = this.mAdbConnection;
        }
        return adbConnection;
    }

    public int getApi() {
        return this.mApi;
    }

    public abstract Certificate getCertificate();

    public abstract String getDeviceName();

    public String getHostAddress() {
        return this.mHostAddress;
    }

    public abstract PrivateKey getPrivateKey();

    public long getTimeout() {
        return this.mTimeoutUnit.toMillis(this.mTimeout);
    }

    public TimeUnit getTimeoutUnit() {
        return this.mTimeoutUnit;
    }

    public boolean isConnected() {
        boolean z = false;
        if (!this.isConnected) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null && adbConnection.isConnected() && this.mAdbConnection.isConnectionEstablished()) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public boolean isThrowOnUnauthorised() {
        return this.mThrowOnUnauthorised;
    }

    public AdbStream openStream(String str) {
        AdbStream adbStreamOpen;
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection == null || !adbConnection.isConnected()) {
                    throw new IOException("Not connected to ADB.");
                }
                try {
                    adbStreamOpen = this.mAdbConnection.open(str);
                } catch (AdbPairingRequiredException e7) {
                    throw new IllegalStateException(e7);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return adbStreamOpen;
    }

    public boolean pair(int i10, String str) {
        return pair(this.mHostAddress, i10, str);
    }

    public void setApi(int i10) {
        this.mApi = i10;
    }

    public void setHostAddress(String str) {
        Objects.requireNonNull(str);
        this.mHostAddress = str;
    }

    public void setThrowOnUnauthorised(boolean z) {
        this.mThrowOnUnauthorised = z;
    }

    public void setTimeout(long j10, TimeUnit timeUnit) {
        this.mTimeout = j10;
        this.mTimeoutUnit = timeUnit;
    }

    public boolean pair(String str, int i10, String str2) {
        setApi(Build.VERSION.SDK_INT);
        synchronized (this.mLock) {
            KeyPair adbKeyPair = getAdbKeyPair();
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            PairingConnectionCtx pairingConnectionCtx = new PairingConnectionCtx(str, i10, StringCompat.getBytes(str2, HTTP.UTF_8), adbKeyPair, getDeviceName());
            try {
                pairingConnectionCtx.start();
                pairingConnectionCtx.close();
            } catch (Throwable th2) {
                try {
                    pairingConnectionCtx.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        }
        return true;
    }

    public AdbStream openStream(int i10, String... strArr) {
        AdbStream adbStreamOpen;
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null && adbConnection.isConnected()) {
                    try {
                        adbStreamOpen = this.mAdbConnection.open(i10, strArr);
                    } catch (AdbPairingRequiredException e7) {
                        throw new IllegalStateException(e7);
                    }
                } else {
                    throw new IOException("Not connected to ADB.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return adbStreamOpen;
    }

    public boolean connect(String str, int i10) {
        this.isConnected = false;
        synchronized (this.mLock) {
            try {
                if (isConnected()) {
                    return false;
                }
                this.mHostAddress = str;
                AdbConnection.Builder keyPair = new AdbConnection.Builder(str, i10).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                String deviceName = getDeviceName();
                Objects.requireNonNull(deviceName);
                AdbConnection adbConnectionBuild = keyPair.setDeviceName(deviceName).build();
                this.mAdbConnection = adbConnectionBuild;
                if (!adbConnectionBuild.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised)) {
                    return false;
                }
                this.isConnected = true;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean autoConnect(Context context, String str, long j10) {
        this.isConnected = false;
        synchronized (this.mLock) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(-1);
                AtomicReference atomicReference = new AtomicReference(null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                AdbMdns adbMdns = new AdbMdns(context, str, new a(atomicReference, atomicInteger, countDownLatch, 2));
                adbMdns.start();
                try {
                    if (countDownLatch.await(j10, TimeUnit.MILLISECONDS)) {
                        adbMdns.stop();
                        String str2 = (String) atomicReference.get();
                        int i10 = atomicInteger.get();
                        if (str2 != null && i10 != -1) {
                            this.mHostAddress = str2;
                            AdbConnection.Builder keyPair = new AdbConnection.Builder(str2, i10).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                            String deviceName = getDeviceName();
                            Objects.requireNonNull(deviceName);
                            AdbConnection adbConnectionBuild = keyPair.setDeviceName(deviceName).build();
                            this.mAdbConnection = adbConnectionBuild;
                            if (!adbConnectionBuild.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised)) {
                                return false;
                            }
                            this.isConnected = true;
                            return true;
                        }
                        throw new IOException("Could not find any valid host address or port");
                    }
                    throw new InterruptedException("Timed out while trying to find a valid host address and port");
                } catch (Throwable th2) {
                    adbMdns.stop();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
