package a2;

import android.content.ContentResolver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageInstallerSession;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInstaller;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import androidx.appcompat.widget.ActionBarContainer;
import com.gj.server.GjBinderWrapper;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class d {
    public static boolean a(Drawable.ConstantState constantState) {
        return constantState.canApplyTheme();
    }

    public static u7.y0 b(r1.d dVar) {
        u7.e0 e0Var = u7.g0.f15471b;
        u7.d0 d0Var = new u7.d0();
        u7.o1 it = g.f166h.keySet().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            if (Build.VERSION.SDK_INT >= u1.f0.l(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), dVar.a())) {
                d0Var.b(num);
            }
        }
        d0Var.b(2);
        return d0Var.g();
    }

    public static int c(int i10, int i11, r1.d dVar) {
        for (int i12 = 10; i12 > 0; i12--) {
            int iN = u1.f0.n(i12);
            if (iN != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(iN).build(), dVar.a())) {
                return i12;
            }
        }
        return 0;
    }

    public static void d(Drawable drawable, Outline outline) {
        drawable.getOutline(outline);
    }

    public static void e(Drawable drawable, Outline outline) {
        drawable.getOutline(outline);
    }

    public static Resources f(Resources.Theme theme) {
        return theme.getResources();
    }

    public static void g(int i10, List list) throws Exception {
        if (i10 < 1) {
            i10 = 0;
        }
        if (fa.a.f5646a.f()) {
            h(i10, list, true);
        } else {
            if (!fa.n0.f5722a.f5726a) {
                throw new Exception("No GJ Jni or shizuku");
            }
            h(i10, list, false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h(int i10, List list, boolean z) throws Throwable {
        PackageInstaller.Session session;
        IPackageInstaller iPackageInstallerAsInterface;
        int iCreateSession;
        int i11 = 0;
        ContentResolver contentResolver = AppStart.f3772h.getContentResolver();
        fa.b bVar = fa.a.f5646a;
        PackageInstaller packageInstaller = null;
        try {
        } catch (Throwable th2) {
            th = th2;
            session = null;
        }
        if (z) {
            IGjAdbFace iGjAdbFace = bVar.f5651b;
            if (iGjAdbFace == null) {
                iPackageInstallerAsInterface = null;
            } else {
                try {
                    iPackageInstallerAsInterface = IPackageInstaller.Stub.asInterface(new GjBinderWrapper(iGjAdbFace, bVar.e().getPackageInstaller().asBinder()));
                } catch (Exception unused) {
                }
            }
            if (i11 != 0) {
                try {
                    packageInstaller.abandonSession(i11);
                } catch (Exception unused2) {
                }
            }
            if (session != null) {
                try {
                    session.close();
                } catch (Throwable unused3) {
                }
            }
            throw th;
        }
        fa.n0.f5722a.getClass();
        iPackageInstallerAsInterface = IPackageInstaller.Stub.asInterface(new hi.c(IPackageManager.Stub.asInterface(new hi.c(hi.g.a("package"))).getPackageInstaller().asBinder()));
        int i12 = Build.VERSION.SDK_INT;
        PackageInstaller packageInstallerH = qf.c.h(iPackageInstallerAsInterface, i12 >= 31 ? AppStart.f3772h.getAttributionTag() : null, i10);
        try {
            PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
            int iIntValue = ((Integer) PackageInstaller.SessionParams.class.getDeclaredField("installFlags").get(sessionParams)).intValue();
            int i13 = iIntValue | 6;
            if (i12 >= 24) {
                i13 = iIntValue | 134;
            }
            if (com.yunpan.appmanage.util.v.f4106a.f4150x && (i12 <= 23 || i12 >= 29)) {
                i13 |= 1073741824;
            }
            PackageInstaller.SessionParams.class.getDeclaredField("installFlags").set(sessionParams, Integer.valueOf(i13));
            iCreateSession = packageInstallerH.createSession(sessionParams);
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            session = (PackageInstaller.Session) PackageInstaller.Session.class.getConstructor(IPackageInstallerSession.class).newInstance(z ? IPackageInstallerSession.Stub.asInterface(new GjBinderWrapper(bVar.f5651b, iPackageInstallerAsInterface.openSession(iCreateSession).asBinder())) : IPackageInstallerSession.Stub.asInterface(new hi.c(iPackageInstallerAsInterface.openSession(iCreateSession).asBinder())));
            try {
                Iterator it = list.iterator();
                int i14 = 0;
                while (it.hasNext()) {
                    InputStream inputStreamOpenInputStream = contentResolver.openInputStream((Uri) it.next());
                    OutputStream outputStreamOpenWrite = session.openWrite(i14 + ".apk", 0L, -1L);
                    byte[] bArr = new byte[8192];
                    while (true) {
                        try {
                            int i15 = inputStreamOpenInputStream.read(bArr);
                            if (i15 <= 0) {
                                break;
                            }
                            outputStreamOpenWrite.write(bArr, 0, i15);
                            outputStreamOpenWrite.flush();
                        } catch (Throwable th4) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                            try {
                                outputStreamOpenWrite.close();
                                throw th4;
                            } catch (IOException e10) {
                                e10.printStackTrace();
                                throw th4;
                            }
                        }
                    }
                    session.fsync(outputStreamOpenWrite);
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    try {
                        outputStreamOpenWrite.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    i14++;
                }
                Intent[] intentArr = {null};
                CountDownLatch countDownLatch = new CountDownLatch(1);
                session.commit((IntentSender) IntentSender.class.getConstructor(IIntentSender.class).newInstance(new ma.e(intentArr, countDownLatch)));
                if (!countDownLatch.await(120L, TimeUnit.SECONDS)) {
                    throw new Exception("安装超时");
                }
                Intent intent = intentArr[0];
                int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 1);
                if (intExtra == -1) {
                    Intent intent2 = Build.VERSION.SDK_INT >= 33 ? (Intent) intent.getParcelableExtra("android.intent.extra.INTENT", Intent.class) : (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
                    if (intent2 != null) {
                        intent2.addFlags(268435456);
                        AppStart.f3772h.startActivity(intent2);
                    }
                } else if (intExtra != 0) {
                    throw new Exception(intExtra + "," + intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE"));
                }
                try {
                    session.close();
                } catch (Throwable unused4) {
                }
            } catch (Throwable th5) {
                packageInstaller = packageInstallerH;
                th = th5;
                i11 = iCreateSession;
            }
        } catch (Throwable th6) {
            th = th6;
            i11 = iCreateSession;
            session = null;
            packageInstaller = packageInstallerH;
            th = th;
            if (i11 != 0) {
            }
            if (session != null) {
            }
            throw th;
        }
    }

    public static void i(ActionBarContainer actionBarContainer) {
        actionBarContainer.invalidateOutline();
    }

    public static Object j() {
        return new MediaDescription.Builder();
    }

    public static void k(w.q qVar, ColorStateList colorStateList) {
        qVar.setCheckMarkTintList(colorStateList);
    }

    public static void l(w.q qVar, PorterDuff.Mode mode) {
        qVar.setCheckMarkTintMode(mode);
    }
}
