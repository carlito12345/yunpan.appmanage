package a2;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Message;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.gj.server.GjService;
import com.hjq.permissions.core.PermissionChannelImpl;
import com.hjq.permissions.core.PermissionChannelImplByRequestPermissions;
import com.hjq.permissions.core.PermissionChannelImplByStartActivity;
import com.hjq.permissions.core.PermissionRequestMainLogic;
import ha.fa;
import ha.ha;
import ha.j6;
import ha.ja;
import ha.l2;
import ha.m4;
import ha.v3;
import ha.x5;
import ha.y5;
import io.github.muntashirakon.adb.AdbStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.MappedByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayList;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f177a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f178b;

    public /* synthetic */ h(int i10, Object obj) {
        this.f177a = i10;
        this.f178b = obj;
    }

    private final void a() {
        d2.i iVar = (d2.i) this.f178b;
        synchronized (iVar.f4274a) {
            try {
                if (iVar.f4285m) {
                    return;
                }
                long j10 = iVar.l - 1;
                iVar.l = j10;
                if (j10 > 0) {
                    return;
                }
                if (j10 < 0) {
                    iVar.c(new IllegalStateException());
                } else {
                    iVar.a();
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x012e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws IOException {
        Object systemService = null;
        int i10 = 2;
        int i11 = 1;
        switch (this.f177a) {
            case 0:
                ((l) this.f178b).c();
                return;
            case 1:
                u1.m mVar = (u1.m) this.f178b;
                mVar.getClass();
                if (Thread.currentThread() == mVar.f15243a) {
                    mVar.e(-1, new u0(i11));
                    return;
                }
                return;
            case 2:
                n1 n1Var = (n1) this.f178b;
                if (n1Var.f236a0 >= 300000) {
                    ((q1) n1Var.f249n.f76b).L1 = true;
                    n1Var.f236a0 = 0L;
                    return;
                }
                return;
            case 3:
                ((a7.d) this.f178b).f460m.jumpToCurrentState();
                return;
            case 4:
                ((androidx.fragment.app.j0) this.f178b).invalidateOptionsMenu();
                return;
            case 5:
                androidx.activity.l lVar = (androidx.activity.l) this.f178b;
                Runnable runnable = lVar.f801b;
                if (runnable != null) {
                    runnable.run();
                    lVar.f801b = null;
                    return;
                }
                return;
            case 6:
                androidx.activity.n.b((androidx.activity.n) this.f178b);
                return;
            case 7:
                androidx.emoji2.text.r rVar = (androidx.emoji2.text.r) this.f178b;
                synchronized (rVar.f1138d) {
                    try {
                        if (rVar.f1142h == null) {
                            return;
                        }
                        try {
                            u0.g gVarD = rVar.d();
                            int i12 = gVarD.f15179e;
                            if (i12 == 2) {
                                synchronized (rVar.f1138d) {
                                }
                            }
                            if (i12 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i12 + ")");
                            }
                            try {
                                t0.o.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                gf.g gVar = rVar.f1137c;
                                Context context = rVar.f1135a;
                                gVar.getClass();
                                Typeface typefaceV = p0.g.f12547a.v(context, new u0.g[]{gVarD}, 0);
                                MappedByteBuffer mappedByteBufferZ = nh.b.Z(rVar.f1135a, gVarD.f15175a);
                                if (mappedByteBufferZ == null || typefaceV == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    t0.o.a("EmojiCompat.MetadataRepo.create");
                                    w0 w0Var = new w0(typefaceV, android.support.v4.media.session.b.B(mappedByteBufferZ));
                                    t0.o.b();
                                    synchronized (rVar.f1138d) {
                                        try {
                                            a9.o oVar = rVar.f1142h;
                                            if (oVar != null) {
                                                oVar.T(w0Var);
                                            }
                                        } finally {
                                        }
                                    }
                                    rVar.b();
                                    return;
                                } finally {
                                    t0.o.b();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            synchronized (rVar.f1138d) {
                                try {
                                    a9.o oVar2 = rVar.f1142h;
                                    if (oVar2 != null) {
                                        oVar2.S(th3);
                                    }
                                    rVar.b();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            case 8:
                androidx.lifecycle.f0 f0Var = (androidx.lifecycle.f0) this.f178b;
                ue.d.e(f0Var, "this$0");
                int i13 = f0Var.f1765b;
                androidx.lifecycle.v vVar = f0Var.f1769f;
                if (i13 == 0) {
                    f0Var.f1766c = true;
                    vVar.e(androidx.lifecycle.m.ON_PAUSE);
                }
                if (f0Var.f1764a == 0 && f0Var.f1766c) {
                    vVar.e(androidx.lifecycle.m.ON_STOP);
                    f0Var.f1767d = true;
                    return;
                }
                return;
            case 9:
                ((GjService) this.f178b).lambda$startHandshakeServer$0();
                return;
            case 10:
                ((com.google.android.material.timepicker.e) this.f178b).k();
                return;
            case 11:
                ((PermissionChannelImpl) this.f178b).handlerPermissionCallback();
                return;
            case 12:
                ((PermissionChannelImplByRequestPermissions) this.f178b).handlerPermissionCallback();
                return;
            case 13:
                ((PermissionChannelImplByStartActivity) this.f178b).lambda$startPermissionRequest$0();
                return;
            case 14:
                ((PermissionRequestMainLogic) this.f178b).handlePermissionRequestResult();
                return;
            case 15:
                com.yunpan.appmanage.carsdk.k0 k0Var = (com.yunpan.appmanage.carsdk.k0) this.f178b;
                k0Var.getClass();
                try {
                    Object obj = k0Var.f3846b;
                    if (obj != null) {
                        com.yunpan.appmanage.carsdk.k0.g(obj, "disconnect", new Object[0]);
                    }
                } catch (Throwable unused) {
                }
                k0Var.f3847c = null;
                k0Var.f3848d = null;
                k0Var.f3846b = null;
                if (Build.VERSION.SDK_INT >= 18) {
                    ((HandlerThread) k0Var.f3850f).quitSafely();
                    return;
                }
                return;
            case 16:
                a();
                return;
            case 17:
                fa.m mVar2 = (fa.m) this.f178b;
                mVar2.getClass();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(mVar2.f5715b.openInputStream()));
                    while (true) {
                        AdbStream adbStream = mVar2.f5715b;
                        if (adbStream == null || adbStream.isClosed()) {
                            return;
                        }
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                return;
                            } else {
                                mVar2.f5717d.add(line);
                            }
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            return;
                        }
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
            case 18:
                fa.r rVar2 = (fa.r) this.f178b;
                rVar2.getClass();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(rVar2.f5742b.openInputStream()));
                while (true) {
                    AdbStream adbStream2 = rVar2.f5742b;
                    if (adbStream2 == null || adbStream2.isClosed()) {
                        return;
                    }
                    try {
                        String line2 = bufferedReader2.readLine();
                        if (line2 == null) {
                            return;
                        } else {
                            rVar2.f5743c.add(line2);
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                break;
            case 19:
                fa.h0 h0Var = (fa.h0) this.f178b;
                h0Var.getClass();
                if (System.currentTimeMillis() - h0Var.f5689f > 2000) {
                    try {
                        h0Var.f5688e.d();
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
                return;
            case 20:
                View view = (View) this.f178b;
                Context context2 = view.getContext();
                int i14 = Build.VERSION.SDK_INT;
                if (i14 >= 23) {
                    systemService = n0.d.b(context2, InputMethodManager.class);
                } else {
                    String strC = i14 >= 23 ? n0.d.c(context2, InputMethodManager.class) : (String) n0.f.f11240a.get(InputMethodManager.class);
                    if (strC != null) {
                        systemService = context2.getSystemService(strC);
                    }
                }
                ((InputMethodManager) systemService).showSoftInput(view, 1);
                return;
            case 21:
                ((h2.n) this.f178b).l();
                return;
            case 22:
                ((ha.i0) this.f178b).f7183p.l(130);
                return;
            case 23:
                v3 v3Var = (v3) this.f178b;
                v3Var.getClass();
                w0 w0Var2 = fa.b0.f5652a;
                String str = "dumpsys deviceidle whitelist +" + v3Var.f6725b.getPackageName();
                w0Var2.getClass();
                w0.o(2000L, str);
                return;
            case 24:
                m4 m4Var = (m4) this.f178b;
                m4Var.getClass();
                w0 w0Var3 = fa.b0.f5652a;
                String str2 = "dumpsys deviceidle whitelist +" + m4Var.f6725b.getPackageName();
                w0Var3.getClass();
                w0.o(2000L, str2);
                return;
            case 25:
                int i15 = 0;
                while (true) {
                    y5 y5Var = (y5) this.f178b;
                    ArrayList arrayList = y5Var.f8090k;
                    if (i15 >= arrayList.size()) {
                        y5Var.f8093p.sendEmptyMessage(100);
                        return;
                    }
                    w3 w3Var = (w3) arrayList.get(i15);
                    StringBuilder sb2 = new StringBuilder();
                    String str3 = y5Var.f8087h;
                    w3Var.f18373j = g.b.l(str3, "中", sb2);
                    Message messageObtain = Message.obtain();
                    x5 x5Var = new x5();
                    x5Var.f8039a = i15;
                    x5Var.f8040b = w3Var;
                    messageObtain.what = 0;
                    messageObtain.obj = x5Var;
                    y5Var.f8093p.sendMessage(messageObtain);
                    if (str3.equals("安装")) {
                        if (w3Var.f18364a.toLowerCase().endsWith(".gj")) {
                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                                try {
                                    a9.o.R(new File(w3Var.f18365b));
                                    w3Var.f18373j = "安装成功，需重启";
                                } catch (Exception e11) {
                                    w3Var.f18373j = e11.getMessage();
                                }
                            } else {
                                w3Var.f18373j = "安装此类文件，需要系统写入权";
                            }
                        } else {
                            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                            int i16 = wVar.T;
                            if (i16 == 2 || i16 == 3) {
                                ma.l lVarG = com.bumptech.glide.d.G(w3Var.f18365b, new l2(i10));
                                if (lVarG.a()) {
                                    w3Var.f18373j = "安装成功";
                                } else {
                                    w3Var.f18373j = lVarG.f11049c;
                                }
                            } else if (!wVar.f4152y) {
                                fa.b0.f5652a.getClass();
                                if (w0.Q()) {
                                    String str4 = w3Var.f18365b;
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    w3Var.f18373j = w0.Y(com.yunpan.appmanage.util.j.f4033a.f4060n, str4).f5764c;
                                } else if (wVar.f4112c0 == 0) {
                                    String strD = ma.h.f11033a.d(w3Var.f18365b);
                                    w3Var.f18373j = strD.isEmpty() ? "安装成功" : strD;
                                } else {
                                    w3Var.f18373j = "请手动确认";
                                    com.bumptech.glide.c.I(y5Var.f6725b, w3Var.f18365b);
                                }
                            }
                        }
                        Message messageObtain2 = Message.obtain();
                        x5 x5Var2 = new x5();
                        x5Var2.f8039a = i15;
                        x5Var2.f8040b = w3Var;
                        messageObtain2.what = 0;
                        messageObtain2.obj = x5Var2;
                        y5Var.f8093p.sendMessage(messageObtain2);
                    }
                    i15++;
                }
                break;
            case 26:
                j6 j6Var = (j6) this.f178b;
                int i17 = j6Var.f7270m - 1;
                j6Var.f7270m = i17;
                if (i17 <= 0) {
                    ta.m.b(j6Var.f6725b, false);
                    j6Var.f7268j.setText("开始监听按键");
                    return;
                }
                j6Var.f7268j.setText("监听按键中(" + j6Var.f7270m + "s)");
                j6Var.f7265g.postDelayed(new h(26, j6Var), 1000L);
                return;
            case 27:
                fa faVar = (fa) this.f178b;
                if (faVar.f7034g.getChildAt(0) != null) {
                    faVar.f7034g.getChildAt(0).requestFocus();
                    return;
                }
                return;
            case 28:
                ha haVar = (ha) this.f178b;
                if (haVar.f7161g.getChildAt(0) != null) {
                    haVar.f7161g.getChildAt(0).requestFocus();
                    return;
                }
                return;
            default:
                ja jaVar = (ja) this.f178b;
                if (jaVar.f7285i.getChildAt(0) != null) {
                    jaVar.f7285i.getChildAt(0).requestFocus();
                    return;
                }
                return;
        }
    }
}
