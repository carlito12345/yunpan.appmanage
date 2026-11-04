package com.gj.server;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.content.Context;
import android.content.IContentProvider;
import android.hardware.input.IInputManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.system.Os;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.gj.server.GjService;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.shizuku.FileParcelable;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import com.yunpan.appmanage.util.MyLog;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import oa.h;

/* loaded from: classes.dex */
public class GjService {
    private static final int HANDSHAKE_TCP_PORT = 39527;
    private static final String PROXY_TOKEN = "com.gj.server.GjService";
    private static final String TAG = "GjService";
    private static final int TRANSACTION_PROXY = 1593835521;
    public static int version = 7;
    IGjAdbFace.Stub binder;
    private final int defaultUserId;
    private volatile boolean handshakeServerStarted;
    String packageName;
    Map<String, IBinder> services;

    /* renamed from: com.gj.server.GjService$1, reason: invalid class name */
    public class AnonymousClass1 extends IGjAdbFace.Stub {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$exec$0(Process process, CmdResult cmdResult) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            return;
                        }
                        cmdResult.lists.add(line);
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (IOException e7) {
                e7.printStackTrace();
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public CmdResult exec(String str, long j10) throws InterruptedException, IOException, RemoteException {
            final CmdResult cmdResult = new CmdResult();
            try {
                ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/sh", "-c", str);
                processBuilder.redirectErrorStream(true);
                final Process processStart = processBuilder.start();
                fg.b bVar = new fg.b(new Runnable() { // from class: com.gj.server.c
                    @Override // java.lang.Runnable
                    public final void run() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
                        GjService.AnonymousClass1.lambda$exec$0(processStart, cmdResult);
                    }
                }, 1);
                bVar.start();
                if (Build.VERSION.SDK_INT < 26) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (bVar.isAlive() && System.currentTimeMillis() - jCurrentTimeMillis < j10) {
                        Thread.sleep(333L);
                    }
                    if (bVar.isAlive()) {
                        bVar.interrupt();
                        processStart.destroy();
                        throw new RemoteException("执行命令超时");
                    }
                } else if (!processStart.waitFor(j10, TimeUnit.MILLISECONDS)) {
                    processStart.destroyForcibly();
                    bVar.interrupt();
                    throw new RemoteException("执行命令超时");
                }
                bVar.join(1000L);
                cmdResult.code = processStart.exitValue();
            } catch (Exception e7) {
                cmdResult.lists.add(e7.getMessage());
            }
            return cmdResult;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public void exit() {
            System.exit(0);
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_canRead(String str) {
            try {
                return new File(str).canRead();
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_canReadAndWrite(String str) {
            try {
                if (new File(str).canRead()) {
                    return new File(str).canWrite();
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_delete(String str) {
            try {
                return new File(str).delete();
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_exists(String str) {
            try {
                return new File(str).exists();
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public long file_length(String str) {
            try {
                return new File(str).length();
            } catch (Exception unused) {
                return 0L;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public List<FileParcelable> file_listFiles(String str) {
            long length;
            ArrayList arrayList = new ArrayList();
            for (File file : new File(str).listFiles()) {
                try {
                    length = file.length();
                } catch (Exception unused) {
                    length = 0;
                }
                long j10 = length;
                if (file.isDirectory()) {
                    arrayList.add(new FileParcelable(file.getPath(), j10, true, 0L));
                } else {
                    arrayList.add(new FileParcelable(file.getPath(), j10, false, file.lastModified()));
                }
            }
            return arrayList;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_mkdirs(String str) {
            try {
                return new File(str).mkdirs();
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_rename(String str, String str2) {
            try {
                return new File(str).renameTo(new File(str2));
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public void forceStop(String str, int i10) {
            try {
                GjService.forceStopCompat(str, i10);
            } catch (Exception unused) {
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getGroupMaxVolume(int i10) {
            return 0;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public oa.b getNewProcess() {
            try {
                return new h(Runtime.getRuntime().exec("sh"));
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public IBinder getService(String str) {
            IBinder iBinder = GjService.this.services.get(str);
            if (iBinder != null && iBinder.pingBinder()) {
                return iBinder;
            }
            IBinder service = ServiceManager.getService(str);
            if (service != null) {
                GjService.this.services.put(str, service);
            }
            return service;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getUid() {
            return Build.VERSION.SDK_INT >= 21 ? Os.getuid() : Process.myUid();
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getUserId() {
            return GjService.this.defaultUserId;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getVersion() {
            return GjService.version;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean keyCode(int i10, boolean z) throws InterruptedException {
            try {
                IInputManager iInputManagerAsInterface = IInputManager.Stub.asInterface(ServiceManager.getService("input"));
                long jUptimeMillis = SystemClock.uptimeMillis();
                KeyEvent keyEvent = new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i10, 0);
                boolean zA = ga.a.a(iInputManagerAsInterface, keyEvent);
                if (z) {
                    try {
                        Thread.sleep(ViewConfiguration.getLongPressTimeout() + 50);
                        zA &= ga.a.a(iInputManagerAsInterface, KeyEvent.changeTimeRepeat(keyEvent, jUptimeMillis + ViewConfiguration.getLongPressTimeout() + 50, 1, 128));
                    } catch (InterruptedException e7) {
                        throw new RuntimeException(e7);
                    }
                }
                return zA & ga.a.a(iInputManagerAsInterface, KeyEvent.changeAction(keyEvent, 1));
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace.Stub, android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 != GjService.TRANSACTION_PROXY) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(GjService.PROXY_TOKEN);
            IBinder strongBinder = parcel.readStrongBinder();
            int i12 = parcel.readInt();
            int i13 = parcel.readInt();
            if (strongBinder == null) {
                return false;
            }
            Parcel parcelObtain = Parcel.obtain();
            try {
                parcelObtain.appendFrom(parcel, parcel.dataPosition(), parcel.dataAvail());
                return strongBinder.transact(i12, parcelObtain, parcel2, i13);
            } finally {
                parcelObtain.recycle();
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public ParcelFileDescriptor openFileRead(String str) throws RemoteException {
            try {
                return ParcelFileDescriptor.open(new File(str), 268435456);
            } catch (FileNotFoundException e7) {
                throw new RemoteException(e7.getMessage());
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public ParcelFileDescriptor openFileWrite(String str) throws RemoteException {
            try {
                return ParcelFileDescriptor.open(new File(str), 738197504);
            } catch (FileNotFoundException e7) {
                throw new RemoteException(e7.getMessage());
            }
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public byte[] transactRemote(String str, int i10, byte[] bArr, int i11) throws RemoteException {
            IBinder service = ServiceManager.getService(str);
            if (service == null) {
                return null;
            }
            try {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                if (bArr != null && bArr.length > 0) {
                    parcelObtain.unmarshall(bArr, 0, bArr.length);
                    parcelObtain.setDataPosition(0);
                }
                service.transact(i10, parcelObtain, parcelObtain2, i11);
                byte[] bArrMarshall = parcelObtain2.dataSize() > 0 ? parcelObtain2.marshall() : null;
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return bArrMarshall;
            } catch (Exception e7) {
                e7.printStackTrace();
                return null;
            }
        }
    }

    public static class HandshakeTarget {
        final String packageName;
        final int userId;

        public HandshakeTarget(String str, int i10) {
            this.packageName = str;
            this.userId = i10;
        }
    }

    public GjService(String str) {
        this(str, 0);
    }

    public static Bundle call(IContentProvider iContentProvider, String str, String str2, String str3, String str4, String str5, Bundle bundle) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 31) {
            return i10 >= 30 ? iContentProvider.call(str2, str, str3, str4, str5, bundle) : i10 >= 29 ? iContentProvider.call(str2, str3, str4, str5, bundle) : iContentProvider.call(str2, str4, str5, bundle);
        }
        try {
            return iContentProvider.call(new AttributionSource.Builder(Os.getuid()).setAttributionTag(str).build(), str3, str4, str5, bundle);
        } catch (LinkageError unused) {
            return iContentProvider.call(str2, str, str3, str4, str5, bundle);
        }
    }

    public static void forceStopCompat(String str, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object activityManagerService = getActivityManagerService();
        if (activityManagerService == null) {
            throw new IllegalStateException("IActivityManager is null");
        }
        try {
            activityManagerService.getClass().getMethod("forceStopPackage", String.class, Integer.TYPE).invoke(activityManagerService, str, Integer.valueOf(i10));
        } catch (NoSuchMethodException unused) {
            activityManagerService.getClass().getMethod("forceStopPackage", String.class).invoke(activityManagerService, str);
        }
    }

    private static void forceStopPackageCompat(Object obj, String str, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            obj.getClass().getMethod("forceStopPackage", String.class, Integer.TYPE).invoke(obj, str, Integer.valueOf(i10));
        } catch (NoSuchMethodException unused) {
            obj.getClass().getMethod("forceStopPackage", String.class).invoke(obj, str);
        }
    }

    public static Object getActivityManagerService() {
        try {
            return Build.VERSION.SDK_INT >= 26 ? Class.forName("android.app.ActivityManager").getMethod("getService", null).invoke(null, null) : Class.forName("android.app.ActivityManagerNative").getMethod("getDefault", null).invoke(null, null);
        } catch (Throwable th2) {
            MyLog.d(TAG, "失败：" + th2.getMessage());
            th2.printStackTrace();
            try {
                return Class.forName("android.app.IActivityManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, ServiceManager.getService("activity"));
            } catch (Throwable th3) {
                MyLog.d(TAG, "失败：" + th3.getMessage());
                th3.printStackTrace();
                return null;
            }
        }
    }

    private static IContentProvider getContentProviderExternalCompat(Object obj, String str, int i10, IBinder iBinder, String str2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        try {
            objInvoke = obj.getClass().getMethod("getContentProviderExternal", String.class, Integer.TYPE, IBinder.class, String.class).invoke(obj, str, Integer.valueOf(i10), iBinder, str2);
        } catch (NoSuchMethodException unused) {
            objInvoke = obj.getClass().getMethod("getContentProviderExternal", String.class, Integer.TYPE, IBinder.class).invoke(obj, str, Integer.valueOf(i10), iBinder);
        }
        if (objInvoke == null) {
            return null;
        }
        Field declaredField = objInvoke.getClass().getDeclaredField("provider");
        declaredField.setAccessible(true);
        return (IContentProvider) declaredField.get(objInvoke);
    }

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    private static Context getPackageContextAsUser(Context context, String str, int i10) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName("android.os.UserHandle");
        Class<?> cls2 = Integer.TYPE;
        return (Context) Context.class.getDeclaredMethod("createPackageContextAsUser", String.class, cls2, Class.forName("android.os.UserHandle")).invoke(context, str, 2, cls.getDeclaredMethod("of", cls2).invoke(null, Integer.valueOf(i10)));
    }

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    private static Context getSystemContext() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Object objInvoke = cls.getDeclaredMethod("currentActivityThread", null).invoke(null, null);
        if (objInvoke == null) {
            objInvoke = cls.getDeclaredMethod("systemMain", null).invoke(null, null);
        }
        return (Context) cls.getDeclaredMethod("getSystemContext", null).invoke(objInvoke, null);
    }

    private void handleHandshakeClient(Socket socket) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
        String line = bufferedReader.readLine();
        if (line == null || line.trim().isEmpty()) {
            bufferedWriter.write("empty\n");
            bufferedWriter.flush();
            return;
        }
        String strTrim = line.trim();
        MyLog.d(TAG, "收到握手请求：" + strTrim);
        HandshakeTarget handshakeTarget = parseHandshakeTarget(strTrim);
        MyLog.d(TAG, "handshake target: " + handshakeTarget.packageName + " user=" + handshakeTarget.userId);
        bufferedWriter.write(sendBinder(handshakeTarget.packageName, this.binder, false, handshakeTarget.userId) ? "ok\n" : "fail\n");
        bufferedWriter.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendBinder_$1() {
        MyLog.d(TAG, "exiting...");
        System.exit(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0020 A[EXC_TOP_SPLITTER, PHI: r3
  0x0020: PHI (r3v7 java.net.Socket) = (r3v6 java.net.Socket), (r3v8 java.net.Socket) binds: [B:17:0x0042, B:7:0x001e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$startHandshakeServer$0() throws IOException {
        ServerSocket serverSocket;
        Throwable th2;
        Socket socketAccept;
        try {
            serverSocket = new ServerSocket(HANDSHAKE_TCP_PORT, 1, InetAddress.getByName("127.0.0.1"));
            try {
                MyLog.d(TAG, "握手服务已启动");
                while (true) {
                    try {
                        socketAccept = serverSocket.accept();
                        try {
                            handleHandshakeClient(socketAccept);
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                MyLog.d(TAG, "握手服务异常：" + th.getMessage());
                                if (socketAccept != null) {
                                }
                            } catch (Throwable th4) {
                                if (socketAccept != null) {
                                    try {
                                        socketAccept.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        socketAccept = null;
                    }
                    if (socketAccept != null) {
                        try {
                            socketAccept.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            } catch (Throwable th6) {
                th2 = th6;
                try {
                    this.handshakeServerStarted = false;
                    MyLog.d(TAG, "握手服务启动失败：" + th2.getMessage());
                    if (serverSocket != null) {
                        try {
                            serverSocket.close();
                        } catch (IOException unused3) {
                        }
                    }
                } catch (Throwable th7) {
                    if (serverSocket != null) {
                        try {
                            serverSocket.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            serverSocket = null;
            th2 = th8;
        }
    }

    public static void main(String[] strArr) {
        if (Looper.getMainLooper() == null) {
            Looper.prepareMainLooper();
        }
        new GjService((strArr == null || strArr.length <= 0) ? "" : strArr[0], (strArr == null || strArr.length <= 1) ? 0 : parseUserId(strArr[1], 0));
        Looper.loop();
        System.exit(0);
    }

    private HandshakeTarget parseHandshakeTarget(String str) {
        String strTrim = str == null ? "" : str.trim();
        int userId = this.defaultUserId;
        int iIndexOf = strTrim.indexOf(32);
        if (iIndexOf >= 0) {
            userId = parseUserId(strTrim.substring(iIndexOf + 1), this.defaultUserId);
            strTrim = strTrim.substring(0, iIndexOf).trim();
        }
        return new HandshakeTarget(strTrim, userId);
    }

    private static int parseUserId(String str, int i10) {
        if (str == null) {
            return i10;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("--user=")) {
            strTrim = strTrim.substring(7);
        }
        if (strTrim.isEmpty()) {
            return i10;
        }
        try {
            return Integer.parseInt(strTrim);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    private static void removeContentProviderExternalCompat(Object obj, String str, IBinder iBinder) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        obj.getClass().getMethod("removeContentProviderExternal", String.class, IBinder.class).invoke(obj, str, iBinder);
    }

    private static boolean sendBinder(String str, IBinder iBinder, boolean z, int i10) {
        boolean zSendBinder_ = sendBinder_(str, iBinder, z, i10);
        if (z) {
            return zSendBinder_ || sendBinder_(g.b.j(str, ":acc"), iBinder, z, i10);
        }
        return zSendBinder_;
    }

    private static boolean sendBinder_(String str, IBinder iBinder, boolean z, int i10) {
        IBinder iBinder2;
        String str2;
        IBinder iBinder3;
        String strL = str;
        Object activityManagerService = getActivityManagerService();
        int i11 = 0;
        if (activityManagerService == null) {
            MyLog.d(TAG, "获取ActivityManager失败");
            return false;
        }
        String strJ = g.b.j(strL, ".provider");
        if (strL.endsWith(":acc")) {
            strL = android.support.v4.media.session.a.l(4, 0, strL);
            strJ = g.b.j(strL, ".providerAcc");
        }
        String str3 = strJ;
        String str4 = strL;
        IContentProvider iContentProvider = null;
        try {
            IContentProvider contentProviderExternalCompat = getContentProviderExternalCompat(activityManagerService, str3, i10, null, str3);
            try {
                if (contentProviderExternalCompat == null) {
                    MyLog.d(TAG, String.format("provider is null %s %d", str3, Integer.valueOf(i10)));
                    if (contentProviderExternalCompat != null) {
                        try {
                            removeContentProviderExternalCompat(activityManagerService, str3, null);
                        } catch (Throwable th2) {
                            MyLog.d(TAG, "removeContentProviderExternal" + th2.getMessage());
                        }
                    }
                    return false;
                }
                if (!contentProviderExternalCompat.asBinder().pingBinder()) {
                    MyLog.d(TAG, String.format("provider is dead %s %d", str3, Integer.valueOf(i10)));
                    try {
                        removeContentProviderExternalCompat(activityManagerService, str3, null);
                    } catch (Throwable th3) {
                        MyLog.d(TAG, "removeContentProviderExternal" + th3.getMessage());
                    }
                    return false;
                }
                if (!z) {
                    MyLog.d(TAG, "retry works");
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("binder", new BinderWrapper(iBinder));
                try {
                    Bundle bundleCall = call(contentProviderExternalCompat, null, null, str3, "sendBinder", null, bundle);
                    if (bundleCall != null) {
                        bundleCall.setClassLoader(BinderWrapper.class.getClassLoader());
                        MyLog.d(TAG, String.format("send binder to %s in user %d", str4, Integer.valueOf(i10)));
                        BinderWrapper binderWrapper = (BinderWrapper) bundleCall.getParcelable("binder");
                        if (binderWrapper != null && (iBinder3 = binderWrapper.binder) != null && iBinder3.pingBinder()) {
                            binderWrapper.binder.linkToDeath(new b(i11), 0);
                            MyLog.d(TAG, "成功");
                            try {
                                removeContentProviderExternalCompat(activityManagerService, str3, null);
                            } catch (Throwable th4) {
                                MyLog.d(TAG, "removeContentProviderExternal" + th4.getMessage());
                            }
                            return true;
                        }
                        str2 = str3;
                        iBinder2 = null;
                        try {
                            MyLog.d(TAG, "server binder not received");
                        } catch (Throwable th5) {
                            th = th5;
                            iContentProvider = contentProviderExternalCompat;
                            try {
                                MyLog.d(TAG, String.format("failed send binder to %s in user %d", str4, Integer.valueOf(i10)) + th.getMessage());
                                if (iContentProvider != null) {
                                    try {
                                        removeContentProviderExternalCompat(activityManagerService, str2, iBinder2);
                                    } catch (Throwable th6) {
                                        MyLog.d(TAG, "removeContentProviderExternal" + th6.getMessage());
                                    }
                                }
                                return false;
                            } finally {
                            }
                        }
                    } else {
                        str2 = str3;
                        iBinder2 = null;
                    }
                    MyLog.d(TAG, "失败");
                    try {
                        removeContentProviderExternalCompat(activityManagerService, str2, iBinder2);
                    } catch (Throwable th7) {
                        MyLog.d(TAG, "removeContentProviderExternal" + th7.getMessage());
                    }
                    return false;
                } catch (Throwable th8) {
                    th = th8;
                    str2 = str3;
                    iBinder2 = null;
                }
            } catch (Throwable th9) {
                th = th9;
                iBinder2 = null;
                str2 = str3;
            }
        } catch (Throwable th10) {
            th = th10;
            iBinder2 = null;
            str2 = str3;
        }
    }

    private synchronized void startHandshakeServer() {
        if (this.handshakeServerStarted) {
            return;
        }
        this.handshakeServerStarted = true;
        fg.b bVar = new fg.b(new a2.h(9, this), 1);
        bVar.setName("gj-handshake");
        bVar.start();
    }

    private void startKeepAlive() {
        Thread thread = new Thread(new a(0));
        thread.setDaemon(false);
        thread.start();
    }

    private void startServer() {
        try {
            try {
                ServiceManager.addService("gj_face_server", this.binder);
            } catch (Exception e7) {
                MyLog.d(TAG, "不能addService：" + e7.getMessage());
                sendBinder(this.packageName, this.binder, true, this.defaultUserId);
            }
            startHandshakeServer();
            MyLog.d(TAG, "运行啦");
        } catch (Exception e10) {
            MyLog.d(TAG, Log.getStackTraceString(e10));
            e10.printStackTrace();
            System.exit(1);
        }
    }

    public GjService(String str, int i10) {
        this.packageName = "";
        this.services = new HashMap();
        this.handshakeServerStarted = false;
        this.binder = new AnonymousClass1();
        this.packageName = str;
        this.defaultUserId = i10;
        MyLog.d(TAG, "GjService：" + str);
        startServer();
    }
}
