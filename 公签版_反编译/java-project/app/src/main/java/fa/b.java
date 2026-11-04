package fa;

import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.content.ContentResolver;
import android.content.pm.IPackageManager;
import android.hardware.input.IInputManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.ServiceManager;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.android.internal.app.IAppOpsService;
import com.gj.server.BinderWrapper;
import com.gj.server.GjBinderWrapper;
import com.gj.server.GjService;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f5650a = null;

    /* renamed from: b, reason: collision with root package name */
    public IGjAdbFace f5651b = null;

    public static String a(AppStart appStart) {
        try {
            String str = appStart.getPackageManager().getApplicationInfo(appStart.getPackageName(), 0).nativeLibraryDir + "/libgj.so --user=" + (Process.myUid() / 100000);
            if (appStart.getPackageName().equals("com.yunpan.appmanage")) {
                return str;
            }
            return str + " --package=" + appStart.getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean i() throws IOException {
        Socket socket;
        Throwable th2;
        try {
            socket = new Socket();
            try {
                socket.connect(new InetSocketAddress("127.0.0.1", 39527), 1000);
                socket.setSoTimeout(1000);
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(AppStart.f3772h.getPackageName());
                sb2.append(AppStart.f3772h.f3777e ? ":acc" : "");
                bufferedWriter.write(sb2.toString());
                bufferedWriter.write(" ");
                bufferedWriter.write(String.valueOf(Process.myUid() / 100000));
                bufferedWriter.write(SignParameters.NEW_LINE);
                bufferedWriter.flush();
                bufferedReader.readLine();
                try {
                    socket.close();
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            } catch (Throwable th3) {
                th2 = th3;
                try {
                    th2.printStackTrace();
                    if (socket == null) {
                        return false;
                    }
                    try {
                        socket.close();
                        return false;
                    } catch (Exception unused2) {
                        return false;
                    }
                } catch (Throwable th4) {
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            socket = null;
            th2 = th5;
        }
    }

    public final IActivityManager b() {
        IGjAdbFace iGjAdbFace = this.f5651b;
        if (iGjAdbFace == null) {
            return null;
        }
        try {
            IBinder service = iGjAdbFace.getService("activity");
            if (service == null) {
                return null;
            }
            GjBinderWrapper gjBinderWrapper = new GjBinderWrapper(this.f5651b, service);
            return Build.VERSION.SDK_INT >= 26 ? IActivityManager.Stub.asInterface(gjBinderWrapper) : ActivityManagerNative.asInterface(gjBinderWrapper);
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("getIActivityManager:" + e7.getMessage());
            return null;
        }
    }

    public final IAppOpsService c() {
        IGjAdbFace iGjAdbFace = this.f5651b;
        if (iGjAdbFace == null) {
            return null;
        }
        try {
            return IAppOpsService.Stub.asInterface(new GjBinderWrapper(iGjAdbFace, iGjAdbFace.getService("appops")));
        } catch (Exception unused) {
            return null;
        }
    }

    public final IInputManager d() {
        IGjAdbFace iGjAdbFace = this.f5651b;
        if (iGjAdbFace == null) {
            return null;
        }
        try {
            return IInputManager.Stub.asInterface(new GjBinderWrapper(iGjAdbFace, iGjAdbFace.getService("input")));
        } catch (Exception unused) {
            return null;
        }
    }

    public final IPackageManager e() {
        IGjAdbFace iGjAdbFace = this.f5651b;
        if (iGjAdbFace == null) {
            return null;
        }
        try {
            return IPackageManager.Stub.asInterface(new GjBinderWrapper(iGjAdbFace, iGjAdbFace.getService("package")));
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean f() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return this.f5651b != null;
        }
        try {
            IGjAdbFace iGjAdbFace = this.f5651b;
            if (iGjAdbFace != null) {
                if (iGjAdbFace.getVersion() == GjService.version) {
                    return true;
                }
                this.f5651b.exit();
                this.f5651b = null;
                this.f5650a = null;
            }
            IBinder service = ServiceManager.getService("gj_face_server");
            this.f5650a = service;
            if (service == null) {
                h();
            }
            IBinder iBinder = this.f5650a;
            if (iBinder != null && iBinder.pingBinder() && this.f5650a.isBinderAlive()) {
                IGjAdbFace iGjAdbFaceAsInterface = IGjAdbFace.Stub.asInterface(this.f5650a);
                this.f5651b = iGjAdbFaceAsInterface;
                if (iGjAdbFaceAsInterface != null) {
                    if (iGjAdbFaceAsInterface.getVersion() == GjService.version) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final void g() throws InterruptedException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            IGjAdbFace iGjAdbFace = this.f5651b;
            if (iGjAdbFace != null) {
                if (iGjAdbFace.getVersion() == GjService.version && this.f5651b.file_canReadAndWrite("/data/local/tmp")) {
                    return;
                }
                this.f5651b.exit();
                this.f5651b = null;
                this.f5650a = null;
            }
            IBinder service = ServiceManager.getService("gj_face_server");
            this.f5650a = service;
            if (service == null) {
                h();
                if (this.f5650a == null && i()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (this.f5650a == null && System.currentTimeMillis() - jCurrentTimeMillis < 1000) {
                        h();
                        if (this.f5650a != null) {
                            break;
                        }
                        try {
                            Thread.sleep(50L);
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
            }
            IBinder iBinder = this.f5650a;
            if (iBinder != null && iBinder.pingBinder() && this.f5650a.isBinderAlive()) {
                IGjAdbFace iGjAdbFaceAsInterface = IGjAdbFace.Stub.asInterface(this.f5650a);
                this.f5651b = iGjAdbFaceAsInterface;
                if (iGjAdbFaceAsInterface != null) {
                    iGjAdbFaceAsInterface.getVersion();
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final void h() {
        IBinder iBinder;
        try {
            ContentResolver contentResolver = AppStart.f3772h.getContentResolver();
            StringBuilder sb2 = new StringBuilder("content://");
            sb2.append(AppStart.f3772h.getPackageName());
            sb2.append(".provider");
            sb2.append(AppStart.f3772h.f3777e ? "Acc" : "");
            Bundle bundleCall = contentResolver.call(Uri.parse(sb2.toString()), "getBinder", (String) null, new Bundle());
            if (bundleCall != null) {
                bundleCall.setClassLoader(BinderWrapper.class.getClassLoader());
                BinderWrapper binderWrapper = (BinderWrapper) bundleCall.getParcelable("binder");
                if (binderWrapper != null && (iBinder = binderWrapper.binder) != null) {
                    this.f5650a = iBinder;
                    this.f5651b = IGjAdbFace.Stub.asInterface(iBinder);
                }
            }
            PrintStream printStream = System.out;
            android.support.v4.media.session.a.A(this.f5650a);
            printStream.getClass();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
