package fa;

import a2.u0;
import android.content.ContextWrapper;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import com.yunpan.appmanage.bean.UsbAdbData;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyPairGenerator;

/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public UsbManager f5671a;

    /* renamed from: e, reason: collision with root package name */
    public UsbDevice f5675e;

    /* renamed from: b, reason: collision with root package name */
    public UsbDeviceConnection f5672b = null;

    /* renamed from: c, reason: collision with root package name */
    public z9.a f5673c = null;

    /* renamed from: d, reason: collision with root package name */
    public z9.d f5674d = null;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5676f = false;

    /* renamed from: g, reason: collision with root package name */
    public String f5677g = "";

    /* renamed from: h, reason: collision with root package name */
    public int f5678h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f5679i = 0;

    public static z9.b b(ContextWrapper contextWrapper) {
        String absolutePath = contextWrapper.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath.concat("/");
        }
        String strJ = g.b.j(absolutePath, "key/");
        if (!new File(strJ).exists()) {
            new File(strJ).mkdirs();
        }
        File file = new File(g.b.j(strJ, "privateKey"));
        File file2 = new File(g.b.j(strJ, "publicKey"));
        try {
            if (file.exists() && file2.exists() && file2.length() > 0 && file.length() > 0) {
                return z9.b.b(new u0(27), file, file2);
            }
            u0 u0Var = new u0(28);
            z9.b bVar = new z9.b();
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            bVar.f19499a = keyPairGenerator.genKeyPair();
            bVar.f19500b = u0Var;
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
            fileOutputStream.write(bVar.f19499a.getPrivate().getEncoded());
            fileOutputStream2.write(bVar.f19499a.getPublic().getEncoded());
            fileOutputStream.close();
            fileOutputStream2.close();
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    public final UsbAdbData a(long j10, String str) {
        UsbAdbData usbAdbData = new UsbAdbData();
        if (!c()) {
            usbAdbData.lines.add("连接已断开，请重新连接");
            return usbAdbData;
        }
        try {
            if (str.startsWith("adb shell ")) {
                str = str.substring(10);
            }
            if (this.f5679i > 0 && str.contains("pm grant ") && !str.contains("--user")) {
                str = str.replace("pm grant ", "pm grant --user " + this.f5679i + " ");
            }
            if (this.f5679i > 0 && str.contains("appops set ") && !str.contains("--user")) {
                str = str.replace("appops set ", "appops set --user " + this.f5679i + " ");
            }
            z9.d dVar = this.f5674d;
            dVar.getClass();
            try {
                dVar.N(new byte[]{0, 28, 10});
                Thread.sleep(60L);
            } catch (Exception unused) {
            }
            z9.d dVar2 = this.f5674d;
            synchronized (dVar2.f19506e) {
                if (dVar2.f19507f) {
                    throw new IOException("Stream closed");
                }
                while (dVar2.f19506e.poll() != null) {
                }
            }
            this.f5674d.M(str);
            return this.f5674d.K(j10);
        } catch (Exception unused2) {
            usbAdbData.lines.add("命令执行出错");
            return usbAdbData;
        }
    }

    public final boolean c() {
        z9.d dVar;
        return (this.f5672b == null || this.f5673c == null || (dVar = this.f5674d) == null || dVar.f19507f || !this.f5671a.hasPermission(this.f5675e)) ? false : true;
    }
}
