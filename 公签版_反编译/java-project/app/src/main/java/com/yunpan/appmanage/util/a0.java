package com.yunpan.appmanage.util;

import android.os.Build;
import android.os.StatFs;
import android.text.TextUtils;
import com.hjq.toast.ToastParams;
import com.hjq.toast.Toaster;
import com.hjq.toast.style.CustomToastStyle;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final b0 f3996a = new b0(0);

    public static byte[] A(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 8192);
            if (i10 == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static int a(int i10, String str) {
        int i11 = str.charAt(0) == 'r' ? 4 : 0;
        if (str.charAt(1) == 'w') {
            i11 += 2;
        }
        char cCharAt = str.charAt(2);
        if (cCharAt != '-' && !Character.isUpperCase(cCharAt)) {
            i11++;
        }
        int i12 = i11 * i10;
        if (cCharAt == 's' || cCharAt == 'S') {
            return i12 + (i10 == 100 ? 4000 : NoConst.MIN_HEARTBEAT_INTERVAL);
        }
        return (cCharAt == 't' || cCharAt == 'T') ? i12 + 1000 : i12;
    }

    public static boolean b(String str) {
        try {
            return new File(str).canRead();
        } catch (SecurityException | Exception unused) {
            return false;
        }
    }

    public static boolean c(File file) {
        try {
            if (file.canRead()) {
                return file.canWrite();
            }
            return false;
        } catch (SecurityException | Exception unused) {
            return false;
        }
    }

    public static boolean d(String str) {
        return c(new File(str));
    }

    public static boolean e(String str, String str2) {
        File file = new File(str);
        File file2 = new File(str2);
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream.close();
                            fileInputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    fileInputStream.close();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
                throw th4;
            }
        } catch (Exception unused3) {
            return false;
        }
    }

    public static boolean f(File file) {
        try {
            return file.exists();
        } catch (SecurityException | Exception unused) {
            return false;
        }
    }

    public static boolean g(String str) {
        return f(new File(str));
    }

    public static int h(String str) {
        if (str == null || str.length() != 9) {
            return 0;
        }
        return a(100, str.substring(0, 3)) + a(10, str.substring(3, 6)) + a(1, str.substring(6, 9));
    }

    public static String i(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(".");
        if (iLastIndexOf > 0) {
            String lowerCase = name.substring(iLastIndexOf, name.length()).toLowerCase(Locale.getDefault());
            HashMap mapA = y.a();
            if (!TextUtils.isEmpty(lowerCase) && mapA.keySet().contains(lowerCase)) {
                return (String) mapA.get(lowerCase);
            }
        }
        return "*/*";
    }

    public static long j(String str) {
        return Build.VERSION.SDK_INT >= 18 ? new StatFs(str).getAvailableBytes() : r0.getAvailableBlocks() * r0.getBlockSize();
    }

    public static long k(String str) {
        try {
            StatFs statFs = new StatFs(str);
            if (Build.VERSION.SDK_INT < 18) {
                return statFs.getBlockCount() * statFs.getBlockSize();
            }
            PrintStream printStream = System.out;
            statFs.getBlockCountLong();
            statFs.getBlockSizeLong();
            printStream.getClass();
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void l(AppStart appStart) {
        try {
            Toaster.init(appStart);
            Toaster.setView(R.layout.toast_custom_view);
            Toaster.setGravity(17);
        } catch (Exception unused) {
        }
    }

    public static boolean m(String str) {
        boolean z;
        boolean z4;
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(str).entries();
            z = false;
            z4 = false;
            while (enumerationEntries.hasMoreElements()) {
                try {
                    String name = enumerationEntries.nextElement().getName();
                    if (name.endsWith(".dex")) {
                        z = true;
                    } else if (name.endsWith("anifest.xml")) {
                        z4 = true;
                    }
                } catch (Exception e7) {
                    e = e7;
                    e.printStackTrace();
                    if (z) {
                    }
                }
            }
        } catch (Exception e10) {
            e = e10;
            z = false;
            z4 = false;
        }
        return !z && z4;
    }

    public static boolean n(File file) {
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                if (file2.getName().toLowerCase().endsWith("dex")) {
                    return true;
                }
            } else if (file2.isDirectory() && n(file2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean o() {
        return g("/system/bin/cmd");
    }

    public static long p(File file) {
        try {
            return file.length();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void q(String str, byte[] bArr) throws Exception {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (Exception e7) {
            throw new Exception(g.b.z(e7, new StringBuilder("saveBytesToFile  ")));
        }
    }

    public static void r(String str) {
        Toaster.showLong((CharSequence) str);
    }

    public static void s(CharSequence charSequence, boolean z) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = charSequence;
        toastParams.style = new CustomToastStyle(R.layout.toast_error);
        toastParams.duration = !z ? 1 : 0;
        Toaster.show(toastParams);
    }

    public static void t(String str) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = str;
        toastParams.style = new CustomToastStyle(R.layout.toast_error);
        toastParams.duration = str.length() < 12 ? 0 : 1;
        Toaster.show(toastParams);
    }

    public static void u(CharSequence charSequence) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = charSequence;
        toastParams.style = new CustomToastStyle(R.layout.toast_info);
        toastParams.duration = charSequence.length() < 12 ? 0 : 1;
        Toaster.show(toastParams);
    }

    public static void v(CharSequence charSequence, boolean z) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = charSequence;
        toastParams.style = new CustomToastStyle(R.layout.toast_success);
        toastParams.duration = !z ? 1 : 0;
        Toaster.show(toastParams);
    }

    public static void w(String str) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = str;
        toastParams.style = new CustomToastStyle(R.layout.toast_success);
        toastParams.duration = str.length() < 12 ? 0 : 1;
        Toaster.show(toastParams);
    }

    public static void x(String str) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = str;
        toastParams.style = new CustomToastStyle(R.layout.toast_success_da);
        toastParams.duration = str.length() < 12 ? 0 : 1;
        Toaster.show(toastParams);
    }

    public static void y(String str) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = str;
        toastParams.style = new CustomToastStyle(R.layout.toast_warn);
        toastParams.duration = str.length() < 12 ? 0 : 1;
        Toaster.show(toastParams);
    }

    public static void z(String str, boolean z) {
        ToastParams toastParams = new ToastParams();
        toastParams.text = str;
        toastParams.style = new CustomToastStyle(R.layout.toast_warn);
        toastParams.duration = !z ? 1 : 0;
        Toaster.show(toastParams);
    }
}
