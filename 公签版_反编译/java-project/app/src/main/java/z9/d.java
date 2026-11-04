package z9;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.bean.UsbAdbData;
import io.github.muntashirakon.adb.AdbProtocol;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import ua.i8;

/* loaded from: classes.dex */
public final class d implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final a f19502a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19503b;

    /* renamed from: c, reason: collision with root package name */
    public int f19504c;

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentLinkedQueue f19506e = new ConcurrentLinkedQueue();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f19505d = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public boolean f19507f = false;

    public d(a aVar, int i10) {
        this.f19502a = aVar;
        this.f19503b = i10;
    }

    public final void A() {
        this.f19507f = true;
        synchronized (this) {
            notifyAll();
        }
        synchronized (this.f19506e) {
            this.f19506e.notifyAll();
        }
    }

    public final byte[] J() {
        byte[] bArr;
        synchronized (this.f19506e) {
            bArr = null;
            while (!this.f19507f && (bArr = (byte[]) this.f19506e.poll()) == null) {
                try {
                    this.f19506e.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f19507f) {
                throw new IOException("Stream closed");
            }
        }
        return bArr;
    }

    public final UsbAdbData K(long j10) {
        byte[] bArr;
        byte b10;
        boolean z;
        UsbAdbData usbAdbData = new UsbAdbData();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        do {
            synchronized (this.f19506e) {
                bArr = (byte[]) this.f19506e.poll();
            }
            if (bArr != null) {
                byteArrayOutputStream.write(bArr, 0, bArr.length);
                new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
                byteArrayOutputStream.size();
                if (byteArrayOutputStream.size() > 4) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    int length = byteArray.length;
                    if (byteArray[length - 1] == 32 && (((b10 = byteArray[length - 2]) == 38 || b10 == 35 || b10 == 36) && byteArray[length - 3] == 32 && byteArray[length - 4] == 47 && byteArray[length - 5] == 58)) {
                        z = true;
                        break;
                    }
                }
            } else {
                if (System.currentTimeMillis() - jCurrentTimeMillis > j10) {
                    break;
                }
                try {
                    Thread.sleep(333L);
                } catch (InterruptedException unused) {
                }
            }
        } while (!this.f19507f);
        z = false;
        if (this.f19507f) {
            usbAdbData.lines.add("连接已断开");
        } else if (z) {
            String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
            String strSubstring = str.substring(str.lastIndexOf(SignParameters.NEW_LINE) + 1);
            if (strSubstring.contains("|")) {
                usbAdbData.code = new Integer(strSubstring.substring(0, strSubstring.indexOf("|"))).intValue();
            } else {
                usbAdbData.code = 0;
            }
            ArrayList arrayList = new ArrayList(Arrays.asList(str.split(SignParameters.NEW_LINE)));
            usbAdbData.lines = arrayList;
            if (!arrayList.isEmpty()) {
                usbAdbData.lines.remove(0);
            }
        } else {
            usbAdbData.code = 404;
            usbAdbData.lines.add("执行命令超时");
        }
        return usbAdbData;
    }

    public final void L() {
        e eVar = this.f19502a.f19488a;
        int i10 = this.f19504c;
        byte[] bArr = c.f19501a;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(0, AdbProtocol.A_OKAY);
        byteBufferOrder.putInt(4, this.f19503b);
        byteBufferOrder.putInt(8, i10);
        byteBufferOrder.putInt(12, 0);
        byteBufferOrder.putInt(16, 0);
        byteBufferOrder.putInt(20, 1497451343 ^ (-1));
        eVar.getClass();
        eVar.J(byteBufferOrder.array());
    }

    public final void M(String str) {
        N((str + "\n\u0000").getBytes(HTTP.UTF_8));
        Thread.sleep(222L);
    }

    public final void N(byte[] bArr) {
        synchronized (this) {
            while (true) {
                try {
                    if (this.f19507f || this.f19505d.compareAndSet(true, false)) {
                        break;
                    } else {
                        wait();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f19507f) {
                throw new IOException("Stream closed");
            }
        }
        e eVar = this.f19502a.f19488a;
        int i10 = this.f19503b;
        int i11 = this.f19504c;
        byte[] bArr2 = c.f19501a;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(0, AdbProtocol.A_WRTE);
        byteBufferOrder.putInt(4, i10);
        byteBufferOrder.putInt(8, i11);
        byteBufferOrder.putInt(12, bArr == null ? 0 : bArr.length);
        byteBufferOrder.putInt(16, bArr != null ? i8.m(bArr) : 0);
        byteBufferOrder.putInt(20, -1163154008);
        eVar.getClass();
        eVar.J(byteBufferOrder.array());
        if (bArr != null) {
            eVar.J(bArr);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            try {
                if (this.f19507f) {
                    return;
                }
                A();
                e eVar = this.f19502a.f19488a;
                int i10 = this.f19503b;
                int i11 = this.f19504c;
                byte[] bArr = c.f19501a;
                ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.putInt(0, AdbProtocol.A_CLSE);
                byteBufferOrder.putInt(4, i10);
                byteBufferOrder.putInt(8, i11);
                byteBufferOrder.putInt(12, 0);
                byteBufferOrder.putInt(16, 0);
                byteBufferOrder.putInt(20, -1163086916);
                eVar.getClass();
                eVar.J(byteBufferOrder.array());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void r(byte[] bArr) {
        synchronized (this.f19506e) {
            this.f19506e.add(bArr);
            this.f19506e.notifyAll();
        }
    }
}
