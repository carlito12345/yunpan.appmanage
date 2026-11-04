package kf;

import a2.w0;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityJiliE02;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import db.t;
import f5.l;
import fa.b0;
import ha.j2;
import ha.jd;
import ha.s2;
import ha.wd;
import i3.j;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.nio.charset.StandardCharsets;
import j$.util.Objects;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.security.DigestException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.DateFormatSymbols;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l2.i;
import mb.g;
import o5.a0;
import o5.o;
import o5.w;
import s3.v;
import s3.y;
import s4.r;
import u1.d0;
import u1.f0;
import u4.z;
import ua.q8;
import ua.v0;
import x0.b1;
import x0.l1;
import x4.h;
import x4.k;
import x4.n;
import x4.q;
import x4.s;
import x4.u;
import x9.w3;

/* loaded from: classes.dex */
public class d implements l, o, j, i, y, tf.d, wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10285a;

    /* renamed from: b, reason: collision with root package name */
    public Object f10286b;

    /* renamed from: c, reason: collision with root package name */
    public Object f10287c;

    public /* synthetic */ d(int i10, Object obj, Object obj2, boolean z) {
        this.f10285a = i10;
        this.f10287c = obj;
        this.f10286b = obj2;
    }

    private final /* synthetic */ void O() {
    }

    public static boolean P(CodeEditor codeEditor, mb.j jVar, g gVar, db.i iVar, t tVar) {
        int i10 = jVar.f11082d.a().f11057b;
        codeEditor.g0(i10, gVar.o(i10).f11076c);
        codeEditor.u(codeEditor.getLineSeparator().f11097a, true, true);
        codeEditor.E();
        return tVar.c(true) || iVar.c(true);
    }

    public static void j(d dVar, boolean z, boolean z4) {
        synchronized (dVar) {
            boolean z10 = false;
            if (z) {
                if (((PowerManager.WakeLock) dVar.f10287c) == null) {
                    if (((Context) dVar.f10286b).checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                        u1.a.p("WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                        return;
                    }
                    PowerManager powerManager = (PowerManager) ((Context) dVar.f10286b).getSystemService("power");
                    if (powerManager == null) {
                        u1.a.p("PowerManager is null, therefore not creating the WakeLock.");
                        return;
                    } else {
                        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                        dVar.f10287c = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.setReferenceCounted(false);
                    }
                }
            }
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) dVar.f10287c;
            if (wakeLock == null) {
                return;
            }
            if (z && z4) {
                z10 = true;
            }
            if (z10) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }

    public static void k(u4.f fVar, x4.a aVar) {
        if (!(aVar instanceof x4.c)) {
            fVar.a(aVar);
            return;
        }
        x4.b bVar = ((x4.c) aVar).f18116a;
        int length = bVar.f2559b.length;
        for (int i10 = 0; i10 < length; i10++) {
            k(fVar, (x4.a) bVar.d(i10));
        }
    }

    public static int q(x4.a aVar) {
        if (aVar instanceof x4.e) {
            return 0;
        }
        if (aVar instanceof s) {
            return 2;
        }
        if (aVar instanceof x4.f) {
            return 3;
        }
        if (aVar instanceof x4.j) {
            return 4;
        }
        if (aVar instanceof x4.o) {
            return 6;
        }
        if (aVar instanceof x4.i) {
            return 16;
        }
        if (aVar instanceof x4.g) {
            return 17;
        }
        if (aVar instanceof x4.t) {
            return 23;
        }
        if (aVar instanceof u) {
            return 24;
        }
        if (aVar instanceof h) {
            return 25;
        }
        if (aVar instanceof q) {
            return 26;
        }
        if (aVar instanceof x4.c) {
            return 28;
        }
        if (aVar instanceof k) {
            return 30;
        }
        if (aVar instanceof x4.d) {
            return 31;
        }
        throw new RuntimeException("Shouldn't happen");
    }

    public static a0 u(ImageDecoder.Source source, int i10, int i11, f5.i iVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new n5.c(i10, i11, iVar));
        if (o5.g.t(drawableDecodeDrawable)) {
            return new a0(2, o5.g.f(drawableDecodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + drawableDecodeDrawable);
    }

    public ArrayDeque A() {
        oh.b bVar = (oh.b) this.f10286b;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) bVar.get()).get();
        if (arrayDeque != null) {
            return arrayDeque;
        }
        ArrayDeque arrayDeque2 = new ArrayDeque();
        bVar.set(new SoftReference(arrayDeque2));
        return arrayDeque2;
    }

    public q4.e B(q4.j jVar) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.f10286b;
        q4.e eVar = (q4.e) linkedHashMap.get(jVar);
        if (eVar != null) {
            return eVar;
        }
        q4.e eVar2 = new q4.e(jVar);
        linkedHashMap.put(jVar, eVar2);
        return eVar2;
    }

    public boolean C() {
        return (((StringBuilder) this.f10287c) == null && ((String) this.f10286b) == null) ? false : true;
    }

    @Override // ha.wd
    public void D() {
        switch (this.f10285a) {
            case 25:
                String str = (String) this.f10286b;
                if (str != null && str.equals("5555")) {
                    com.yunpan.appmanage.util.a0.u("已开启，请勿重复开启");
                    break;
                } else {
                    ActivityAdb.D((ActivityAdb) this.f10287c, true);
                    break;
                }
                break;
            case 26:
                ActivityDesktop activityDesktop = (ActivityDesktop) ((s2) this.f10287c).f7726d;
                int i10 = ActivityDesktop.G;
                da.g gVar = activityDesktop.A;
                p000if.a.E0(gVar, gVar, (AppBean) this.f10286b);
                break;
            case 27:
                AppBean appBean = (AppBean) this.f10286b;
                boolean z = appBean.isDisable;
                ActivityJiliE02 activityJiliE02 = (ActivityJiliE02) this.f10287c;
                try {
                    if (z) {
                        int i11 = ActivityJiliE02.E;
                        activityJiliE02.A.getPackageManager().setApplicationEnabledSetting(appBean.pack, 1, 0);
                        com.yunpan.appmanage.util.a0.v("操作成功", true);
                    } else {
                        boolean z4 = appBean.isHide;
                        if (z4) {
                            w0 w0Var = b0.f5652a;
                            w0Var.f347c = new v0(11);
                            u9.d.f15554a.execute(new fa.s(w0Var, appBean.pack, true ^ z4, 3));
                            break;
                        } else if (appBean.isUnInstall) {
                            w0 w0Var2 = b0.f5652a;
                            String str2 = appBean.pack;
                            w0Var2.f347c = new v0(12);
                            u9.d.f15554a.execute(new fa.u(w0Var2, str2, 5));
                            break;
                        } else {
                            int i12 = ActivityJiliE02.E;
                            activityJiliE02.A.getPackageManager().setApplicationEnabledSetting(appBean.pack, 2, 0);
                            com.yunpan.appmanage.util.a0.v("操作成功", true);
                        }
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 28:
                ActivitySystemHasWrite.x((ActivitySystemHasWrite) this.f10287c, (String) this.f10286b, true);
                break;
            default:
                q8 q8Var = (q8) this.f10287c;
                q8Var.V = false;
                w3 w3Var = (w3) this.f10286b;
                q8Var.F(w3Var);
                ArrayList arrayList = new ArrayList();
                arrayList.add(w3Var);
                q8Var.l.E(arrayList);
                q8Var.v(w3Var, false);
                break;
        }
    }

    public boolean E(int i10, KeyEvent keyEvent) {
        qb.a aVar = (qb.a) this.f10287c;
        if (aVar.b() || aVar.a() || keyEvent.isCtrlPressed()) {
            return (i10 >= 29 && i10 <= 54) || i10 == 66 || i10 == 19 || i10 == 20 || i10 == 21 || i10 == 22 || i10 == 122 || i10 == 123 || i10 == 62;
        }
        return false;
    }

    public void F(u.a aVar) {
        w0 w0Var = (w0) this.f10286b;
        ((ActionMode.Callback) w0Var.f346b).onDestroyActionMode(w0Var.G(aVar));
        q.a0 a0Var = (q.a0) this.f10287c;
        if (a0Var.f12778y != null) {
            a0Var.l.getDecorView().removeCallbacks(a0Var.z);
        }
        if (a0Var.f12777x != null) {
            l1 l1Var = a0Var.A;
            if (l1Var != null) {
                l1Var.b();
            }
            l1 l1VarA = b1.a(a0Var.f12777x);
            l1VarA.a(0.0f);
            a0Var.A = l1VarA;
            l1VarA.d(new q.q(2, this));
        }
        a0Var.f12776w = null;
        b1.v(a0Var.C);
        a0Var.H();
    }

    public boolean J(u.a aVar, v.k kVar) {
        b1.v(((q.a0) this.f10287c).C);
        w0 w0Var = (w0) this.f10286b;
        u.f fVarG = w0Var.G(aVar);
        a0.t tVar = (a0.t) w0Var.f349e;
        Menu a0Var = (Menu) tVar.get(kVar);
        if (a0Var == null) {
            a0Var = new v.a0((Context) w0Var.f347c, kVar);
            tVar.put(kVar, a0Var);
        }
        return ((ActionMode.Callback) w0Var.f346b).onPrepareActionMode(fVarG, a0Var);
    }

    public void K(u0.e eVar) {
        int i10 = eVar.f15170b;
        Handler handler = (Handler) this.f10287c;
        l5.y yVar = (l5.y) this.f10286b;
        if (i10 != 0) {
            handler.post(new androidx.emoji2.text.j(i10, 4, yVar));
        } else {
            handler.post(new y7.b(yVar, 21, eVar.f15169a));
        }
    }

    public synchronized kh.i L() {
        kh.i iVar;
        iVar = (kh.i) this.f10286b;
        if (iVar != null) {
            kh.i iVar2 = iVar.f10357c;
            this.f10286b = iVar2;
            if (iVar2 == null) {
                this.f10287c = null;
            }
        }
        return iVar;
    }

    public synchronized kh.i M() {
        try {
            if (((kh.i) this.f10286b) == null) {
                wait(1000);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return L();
    }

    public void N(Object obj) {
        ArrayDeque arrayDequeA = A();
        if (arrayDequeA.size() < 12) {
            arrayDequeA.push(obj);
        }
    }

    public void Q(boolean z, boolean z4) {
        if (z && ((WifiManager.WifiLock) this.f10287c) == null) {
            Context context = (Context) this.f10286b;
            if (context.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                u1.a.p("WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                return;
            }
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager == null) {
                u1.a.p("WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.f10287c = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        WifiManager.WifiLock wifiLock = (WifiManager.WifiLock) this.f10287c;
        if (wifiLock == null) {
            return;
        }
        if (z && z4) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public String R() {
        StringBuilder sb2 = (StringBuilder) this.f10287c;
        if (sb2 == null) {
            String str = (String) this.f10286b;
            return str != null ? str : "";
        }
        this.f10286b = sb2.toString();
        oh.f.l((StringBuilder) this.f10287c);
        this.f10287c = null;
        return (String) this.f10286b;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void S(x4.c cVar, boolean z) {
        b5.b bVar = (b5.b) this.f10287c;
        boolean z4 = z && bVar.d();
        x4.b bVar2 = cVar.f18116a;
        int length = bVar2.f2559b.length;
        if (z4) {
            bVar.c("  size: ".concat(qf.c.f0(length)));
        }
        bVar.m(length);
        for (int i10 = 0; i10 < length; i10++) {
            x4.a aVar = (x4.a) bVar2.d(i10);
            if (z4) {
                StringBuilder sb2 = new StringBuilder("  [");
                sb2.append(Integer.toHexString(i10));
                sb2.append("] ");
                sb2.append(q(aVar) == 30 ? "null" : aVar.d() + ' ' + aVar.a());
                bVar.c(sb2.toString());
            }
            int iQ = q(aVar);
            if (iQ == 0 || iQ == 6 || iQ == 2) {
                long jG = ((n) aVar).g();
                int iNumberOfLeadingZeros = (72 - Long.numberOfLeadingZeros((jG >> 63) ^ jG)) >> 3;
                bVar.i(iQ | ((iNumberOfLeadingZeros - 1) << 5));
                while (iNumberOfLeadingZeros > 0) {
                    bVar.i((byte) jG);
                    jG >>= 8;
                    iNumberOfLeadingZeros--;
                }
            } else if (iQ == 3) {
                android.support.v4.media.session.b.M(bVar, iQ, ((n) aVar).g());
            } else if (iQ != 4) {
                if (iQ == 16) {
                    android.support.v4.media.session.b.L(bVar, iQ, ((x4.i) aVar).f18126a << 32);
                } else if (iQ != 17) {
                    u4.f fVar = (u4.f) this.f10286b;
                    switch (iQ) {
                        case 21:
                            z zVar = fVar.f15360g;
                            throw new ClassCastException();
                        case 22:
                            fVar.getClass();
                            throw new ClassCastException();
                        case 23:
                            android.support.v4.media.session.b.M(bVar, iQ, fVar.f15358e.l((x4.t) aVar));
                            break;
                        case 24:
                            android.support.v4.media.session.b.M(bVar, iQ, fVar.f15359f.m((u) aVar));
                            break;
                        case 25:
                            android.support.v4.media.session.b.M(bVar, iQ, fVar.f15361h.l((h) aVar));
                            break;
                        case 26:
                            android.support.v4.media.session.b.M(bVar, iQ, fVar.f15362i.l((q) aVar));
                            break;
                        case 27:
                            throw new ClassCastException();
                        case 28:
                            bVar.i(iQ);
                            S((x4.c) aVar, false);
                            break;
                        case 29:
                            bVar.i(iQ);
                            throw new ClassCastException();
                        case 30:
                            bVar.i(iQ);
                            break;
                        case 31:
                            bVar.i((((x4.d) aVar).f18126a << 5) | iQ);
                            break;
                        default:
                            throw new RuntimeException("Shouldn't happen");
                    }
                } else {
                    android.support.v4.media.session.b.L(bVar, iQ, ((x4.g) aVar).f18127a);
                }
            }
        }
        if (z4) {
            bVar.e();
        }
    }

    @Override // s3.y
    public void a(u1.q qVar) {
        if (qVar.B() != 0 || (qVar.B() & 128) == 0) {
            return;
        }
        qVar.P(6);
        int iA = qVar.a() / 4;
        int i10 = 0;
        while (true) {
            s3.b0 b0Var = (s3.b0) this.f10287c;
            if (i10 >= iA) {
                b0Var.getClass();
                b0Var.f14011g.remove(0);
                return;
            }
            j3.f fVar = (j3.f) this.f10286b;
            qVar.l(0, 4, fVar.f9720b);
            fVar.m(0);
            int iG = fVar.g(16);
            fVar.o(3);
            if (iG == 0) {
                fVar.o(13);
            } else {
                int iG2 = fVar.g(13);
                if (b0Var.f14011g.get(iG2) == null) {
                    b0Var.f14011g.put(iG2, new s3.z(new g3.j(b0Var, iG2)));
                    b0Var.f14016m++;
                }
            }
            i10++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:201:0x037e, code lost:
    
        r0.addAll(r12);
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:128:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x033d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    @Override // i3.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(byte[] bArr, int i10, int i11, i3.i iVar, u1.f fVar) {
        r3.c cVarD;
        String strTrim;
        String string;
        char c7;
        int i12;
        d dVar = this;
        int i13 = 2;
        int i14 = 0;
        int i15 = -1;
        int i16 = 1;
        u1.q qVar = (u1.q) dVar.f10286b;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        ArrayList arrayList = new ArrayList();
        try {
            r3.i.c(qVar);
            while (!TextUtils.isEmpty(qVar.p(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int i17 = -1;
                int i18 = 0;
                while (i17 == i15) {
                    i18 = qVar.f15267b;
                    String strP = qVar.p(StandardCharsets.UTF_8);
                    i17 = strP == null ? 0 : "STYLE".equals(strP) ? 2 : strP.startsWith("NOTE") ? 1 : 3;
                }
                qVar.O(i18);
                if (i17 == 0) {
                    q4.a.c0(new v3.f(arrayList2), iVar, fVar);
                    return;
                }
                if (i17 == i16) {
                    while (!TextUtils.isEmpty(qVar.p(StandardCharsets.UTF_8))) {
                    }
                } else {
                    if (i17 == i13) {
                        if (!arrayList2.isEmpty()) {
                            throw new IllegalArgumentException("A style block was found after the first cue.");
                        }
                        qVar.p(StandardCharsets.UTF_8);
                        r3.a aVar = (r3.a) dVar.f10287c;
                        StringBuilder sb2 = aVar.f13666b;
                        sb2.setLength(i14);
                        int i19 = qVar.f15267b;
                        while (!TextUtils.isEmpty(qVar.p(StandardCharsets.UTF_8))) {
                        }
                        byte[] bArr2 = qVar.f15266a;
                        int i20 = qVar.f15267b;
                        u1.q qVar2 = aVar.f13665a;
                        qVar2.M(i20, bArr2);
                        qVar2.O(i19);
                        ArrayList arrayList3 = new ArrayList();
                        while (true) {
                            r3.a.c(qVar2);
                            if (qVar2.a() >= 5 && "::cue".equals(qVar2.z(StandardCharsets.UTF_8, 5))) {
                                int i21 = qVar2.f15267b;
                                String strB = r3.a.b(qVar2, sb2);
                                if (strB != null) {
                                    if ("{".equals(strB)) {
                                        qVar2.O(i21);
                                        strTrim = "";
                                    } else {
                                        if ("(".equals(strB)) {
                                            int i22 = qVar2.f15267b;
                                            int i23 = qVar2.f15268c;
                                            boolean z = false;
                                            while (i22 < i23 && !z) {
                                                int i24 = i22 + 1;
                                                boolean z4 = ((char) qVar2.f15266a[i22]) == ')';
                                                i22 = i24;
                                                z = z4;
                                            }
                                            strTrim = qVar2.z(StandardCharsets.UTF_8, (i22 + i15) - qVar2.f15267b).trim();
                                        } else {
                                            strTrim = null;
                                        }
                                        if (!")".equals(r3.a.b(qVar2, sb2))) {
                                            strTrim = null;
                                        }
                                    }
                                    if (strTrim != null && "{".equals(r3.a.b(qVar2, sb2))) {
                                        r3.b bVar = new r3.b();
                                        if (!strTrim.isEmpty()) {
                                            int iIndexOf = strTrim.indexOf(91);
                                            if (iIndexOf != i15) {
                                                Matcher matcher = r3.a.f13663c.matcher(strTrim.substring(iIndexOf));
                                                if (matcher.matches()) {
                                                    String strGroup = matcher.group(i16);
                                                    strGroup.getClass();
                                                    bVar.f13670d = strGroup;
                                                }
                                                strTrim = strTrim.substring(i14, iIndexOf);
                                            }
                                            String str = f0.f15206a;
                                            String[] strArrSplit = strTrim.split("\\.", i15);
                                            String str2 = strArrSplit[i14];
                                            int iIndexOf2 = str2.indexOf(35);
                                            if (iIndexOf2 != i15) {
                                                bVar.f13668b = str2.substring(i14, iIndexOf2);
                                                bVar.f13667a = str2.substring(iIndexOf2 + i16);
                                            } else {
                                                bVar.f13668b = str2;
                                            }
                                            if (strArrSplit.length > i16) {
                                                int length = strArrSplit.length;
                                                a9.o.k(length <= strArrSplit.length);
                                                bVar.f13669c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(strArrSplit, i16, length)));
                                            }
                                        }
                                        boolean z10 = false;
                                        String strB2 = null;
                                        while (!z10) {
                                            int i25 = qVar2.f15267b;
                                            strB2 = r3.a.b(qVar2, sb2);
                                            boolean z11 = strB2 == null || "}".equals(strB2);
                                            if (!z11) {
                                                qVar2.O(i25);
                                                r3.a.c(qVar2);
                                                String strA = r3.a.a(qVar2, sb2);
                                                if (!strA.isEmpty() && ":".equals(r3.a.b(qVar2, sb2))) {
                                                    r3.a.c(qVar2);
                                                    StringBuilder sb3 = new StringBuilder();
                                                    boolean z12 = false;
                                                    while (true) {
                                                        if (z12) {
                                                            string = sb3.toString();
                                                        } else {
                                                            int i26 = qVar2.f15267b;
                                                            String strB3 = r3.a.b(qVar2, sb2);
                                                            if (strB3 == null) {
                                                                string = null;
                                                            } else if ("}".equals(strB3) || ";".equals(strB3)) {
                                                                qVar2.O(i26);
                                                                z12 = true;
                                                            } else {
                                                                sb3.append(strB3);
                                                            }
                                                        }
                                                    }
                                                    if (string != null && !string.isEmpty()) {
                                                        int i27 = qVar2.f15267b;
                                                        String strB4 = r3.a.b(qVar2, sb2);
                                                        if (";".equals(strB4)) {
                                                            if (!"color".equals(strA)) {
                                                            }
                                                        } else if ("}".equals(strB4)) {
                                                            qVar2.O(i27);
                                                            if (!"color".equals(strA)) {
                                                                bVar.f13672f = u1.d.a(string, true);
                                                                bVar.f13673g = true;
                                                            } else if ("background-color".equals(strA)) {
                                                                bVar.f13674h = u1.d.a(string, true);
                                                                bVar.f13675i = true;
                                                            } else if ("ruby-position".equals(strA)) {
                                                                if ("over".equals(string)) {
                                                                    bVar.f13681p = 1;
                                                                } else if ("under".equals(string)) {
                                                                    bVar.f13681p = 2;
                                                                }
                                                            } else if ("text-combine-upright".equals(strA)) {
                                                                bVar.f13682q = "all".equals(string) || string.startsWith("digits");
                                                            } else if ("text-decoration".equals(strA)) {
                                                                if ("underline".equals(string)) {
                                                                    bVar.f13677k = 1;
                                                                }
                                                            } else if ("font-family".equals(strA)) {
                                                                bVar.f13671e = qf.c.b0(string);
                                                            } else if ("font-weight".equals(strA)) {
                                                                if ("bold".equals(string)) {
                                                                    bVar.l = 1;
                                                                }
                                                            } else if ("font-style".equals(strA)) {
                                                                if ("italic".equals(string)) {
                                                                    bVar.f13678m = 1;
                                                                }
                                                            } else if ("font-size".equals(strA)) {
                                                                Matcher matcher2 = r3.a.f13664d.matcher(qf.c.b0(string));
                                                                if (matcher2.matches()) {
                                                                    String strGroup2 = matcher2.group(2);
                                                                    strGroup2.getClass();
                                                                    switch (strGroup2.hashCode()) {
                                                                        case 37:
                                                                            if (strGroup2.equals("%")) {
                                                                                c7 = 0;
                                                                            }
                                                                            switch (c7) {
                                                                                case 0:
                                                                                    i12 = 1;
                                                                                    bVar.f13679n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i12 = 1;
                                                                                    bVar.f13679n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i12 = 1;
                                                                                    bVar.f13679n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup3 = matcher2.group(i12);
                                                                            strGroup3.getClass();
                                                                            bVar.f13680o = Float.parseFloat(strGroup3);
                                                                            break;
                                                                        case 3240:
                                                                            if (strGroup2.equals("em")) {
                                                                                c7 = 1;
                                                                            }
                                                                            switch (c7) {
                                                                            }
                                                                            String strGroup32 = matcher2.group(i12);
                                                                            strGroup32.getClass();
                                                                            bVar.f13680o = Float.parseFloat(strGroup32);
                                                                            break;
                                                                        case 3592:
                                                                            if (strGroup2.equals("px")) {
                                                                                c7 = 2;
                                                                            }
                                                                            switch (c7) {
                                                                            }
                                                                            String strGroup322 = matcher2.group(i12);
                                                                            strGroup322.getClass();
                                                                            bVar.f13680o = Float.parseFloat(strGroup322);
                                                                            break;
                                                                    }
                                                                    c7 = 65535;
                                                                    switch (c7) {
                                                                    }
                                                                    String strGroup3222 = matcher2.group(i12);
                                                                    strGroup3222.getClass();
                                                                    bVar.f13680o = Float.parseFloat(strGroup3222);
                                                                } else {
                                                                    u1.a.p("Invalid font-size: '" + string + "'.");
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            z10 = z11;
                                        }
                                        if ("}".equals(strB2)) {
                                            arrayList3.add(bVar);
                                        }
                                        i14 = 0;
                                        i15 = -1;
                                        i16 = 1;
                                    }
                                }
                            }
                        }
                    } else if (i17 == 3) {
                        Pattern pattern = r3.h.f13706a;
                        Charset charset = StandardCharsets.UTF_8;
                        String strP2 = qVar.p(charset);
                        if (strP2 == null) {
                            cVarD = null;
                        } else {
                            Pattern pattern2 = r3.h.f13706a;
                            Matcher matcher3 = pattern2.matcher(strP2);
                            if (matcher3.matches()) {
                                cVarD = r3.h.d(null, matcher3, qVar, arrayList);
                            } else {
                                cVarD = null;
                                String strP3 = qVar.p(charset);
                                if (strP3 != null) {
                                    Matcher matcher4 = pattern2.matcher(strP3);
                                    if (matcher4.matches()) {
                                        cVarD = r3.h.d(strP2.trim(), matcher4, qVar, arrayList);
                                    }
                                }
                            }
                        }
                        if (cVarD != null) {
                            arrayList2.add(cVarD);
                        }
                    }
                    dVar = this;
                    i13 = 2;
                    i14 = 0;
                    i15 = -1;
                    i16 = 1;
                }
            }
        } catch (r1.f0 e7) {
            throw new IllegalArgumentException(e7);
        }
    }

    @Override // tf.d
    public int d(int i10, int i11, byte[] bArr) throws wf.a {
        if (i11 < 0) {
            throw new wf.a("invalid length specified to decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            byte b10 = bArr[i12];
            vf.b bVar = (vf.b) this.f10286b;
            byte bA = (byte) ((bVar.a() & 255) ^ b10);
            bVar.c(b10);
            bArr[i12] = bA;
        }
        return i11;
    }

    @Override // i3.j
    public /* synthetic */ i3.d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // f5.l
    public int f(f5.i iVar) {
        return 2;
    }

    @Override // f5.c
    public boolean g(Object obj, File file, f5.i iVar) {
        return ((o5.b) this.f10287c).g(new o5.d(((BitmapDrawable) ((h5.z) obj).get()).getBitmap(), (i5.c) this.f10286b), file, iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011c A[EDGE_INSN: B:64:0x011c->B:50:0x011c BREAK  A[LOOP:1: B:36:0x00e3->B:49:0x010b], SYNTHETIC] */
    @Override // l2.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public l2.h h(l2.l lVar, long j10) {
        l2.h hVar;
        long j11 = lVar.f10499d;
        int iMin = (int) Math.min(20000L, lVar.f10498c - j11);
        u1.q qVar = (u1.q) this.f10287c;
        qVar.L(iMin);
        lVar.c(qVar.f15266a, 0, iMin, false);
        int i10 = -1;
        long j12 = -9223372036854775807L;
        int i11 = -1;
        while (qVar.a() >= 4) {
            if (q2.a.a(qVar.f15267b, qVar.f15266a) != 442) {
                qVar.P(1);
            } else {
                qVar.P(4);
                long jC = v.c(qVar);
                if (jC != -9223372036854775807L) {
                    long jB = ((d0) this.f10286b).b(jC);
                    if (jB > j10) {
                        if (j12 == -9223372036854775807L) {
                            return new l2.h(-1, jB, j11);
                        }
                        hVar = new l2.h(0, -9223372036854775807L, j11 + i11);
                    } else if (100000 + jB > j10) {
                        hVar = new l2.h(0, -9223372036854775807L, j11 + qVar.f15267b);
                    } else {
                        i11 = qVar.f15267b;
                        j12 = jB;
                    }
                    return hVar;
                }
                int i12 = qVar.f15268c;
                if (qVar.a() < 10) {
                    qVar.O(i12);
                } else {
                    qVar.P(9);
                    int iB = qVar.B() & 7;
                    if (qVar.a() < iB) {
                        qVar.O(i12);
                    } else {
                        qVar.P(iB);
                        if (qVar.a() < 4) {
                            qVar.O(i12);
                        } else {
                            if (q2.a.a(qVar.f15267b, qVar.f15266a) == 443) {
                                qVar.P(4);
                                int I = qVar.I();
                                if (qVar.a() >= I) {
                                    qVar.P(I);
                                    while (true) {
                                        if (qVar.a() >= 4) {
                                            break;
                                        }
                                        int iA = q2.a.a(qVar.f15267b, qVar.f15266a);
                                        if (iA == 442 || iA == 441 || (iA >>> 8) != 1) {
                                            break;
                                        }
                                        qVar.P(4);
                                        if (qVar.a() < 2) {
                                            qVar.O(i12);
                                            break;
                                        }
                                        qVar.O(Math.min(qVar.f15268c, qVar.f15267b + qVar.I()));
                                    }
                                } else {
                                    qVar.O(i12);
                                }
                            } else {
                                while (true) {
                                    if (qVar.a() >= 4) {
                                    }
                                    qVar.O(Math.min(qVar.f15268c, qVar.f15267b + qVar.I()));
                                }
                            }
                        }
                    }
                }
                i10 = qVar.f15267b;
            }
        }
        return j12 != -9223372036854775807L ? new l2.h(-2, j12, j11 + i10) : l2.h.f10465d;
    }

    @Override // l2.i
    public void i() {
        byte[] bArr = f0.f15207b;
        u1.q qVar = (u1.q) this.f10287c;
        qVar.getClass();
        qVar.M(bArr.length, bArr);
    }

    @Override // o5.o
    public void l(Bitmap bitmap, i5.c cVar) throws IOException {
        IOException iOException = ((a6.f) this.f10287c).f428b;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            cVar.c(bitmap);
            throw iOException;
        }
    }

    public void m(char c7) {
        StringBuilder sb2 = (StringBuilder) this.f10287c;
        if (sb2 != null) {
            sb2.append(c7);
            return;
        }
        if (((String) this.f10286b) == null) {
            this.f10286b = String.valueOf(c7);
            return;
        }
        StringBuilder sbB = oh.f.b();
        this.f10287c = sbB;
        sbB.append((String) this.f10286b);
        this.f10286b = null;
        ((StringBuilder) this.f10287c).append(c7);
    }

    public void n(String str) {
        StringBuilder sb2 = (StringBuilder) this.f10287c;
        if (sb2 != null) {
            sb2.append(str);
            return;
        }
        if (((String) this.f10286b) == null) {
            this.f10286b = str;
            return;
        }
        StringBuilder sbB = oh.f.b();
        this.f10287c = sbB;
        sbB.append((String) this.f10286b);
        this.f10286b = null;
        ((StringBuilder) this.f10287c).append(str);
    }

    public Object o() {
        ArrayDeque arrayDequeA = A();
        return !arrayDequeA.isEmpty() ? arrayDequeA.pop() : ((Supplier) this.f10287c).get();
    }

    @Override // o5.o
    public void p() {
        w wVar = (w) this.f10286b;
        synchronized (wVar) {
            wVar.f11638c = wVar.f11636a.length;
        }
    }

    public q4.b r(q4.i iVar) {
        LinkedHashMap linkedHashMap = B(iVar.f13003a).f12988i;
        if (linkedHashMap.containsKey(iVar)) {
            throw new IllegalStateException("already declared: " + iVar);
        }
        String str = iVar.f13005c;
        q4.d dVar = new q4.d(iVar, (str.equals("<init>") || str.equals("<clinit>")) ? 65537 : 1);
        linkedHashMap.put(iVar, dVar);
        return dVar.f12979c;
    }

    @Override // i3.j
    public void reset() {
        switch (this.f10285a) {
            case 12:
                StringBuilder sb2 = (StringBuilder) this.f10287c;
                if (sb2 != null) {
                    String[] strArr = oh.f.f11806a;
                    if (sb2.length() <= 8192) {
                        sb2.delete(0, sb2.length());
                        oh.f.f11810e.N(sb2);
                    }
                    this.f10287c = null;
                }
                this.f10286b = null;
                break;
        }
    }

    public void s(q4.f fVar, int i10) {
        LinkedHashMap linkedHashMap = B(fVar.f12989a).f12987h;
        if (!linkedHashMap.containsKey(fVar)) {
            linkedHashMap.put(fVar, new q4.c(fVar, i10));
        } else {
            throw new IllegalStateException("already declared: " + fVar);
        }
    }

    @Override // ha.wd
    public void t() {
        switch (this.f10285a) {
            case 25:
                ActivityAdb.D((ActivityAdb) this.f10287c, false);
                break;
            case 28:
                ActivitySystemHasWrite.x((ActivitySystemHasWrite) this.f10287c, (String) this.f10286b, false);
                break;
        }
    }

    public String toString() {
        switch (this.f10285a) {
            case 12:
                StringBuilder sb2 = (StringBuilder) this.f10287c;
                if (sb2 != null) {
                    return sb2.toString();
                }
                String str = (String) this.f10286b;
                return str != null ? str : "";
            default:
                return super.toString();
        }
    }

    public synchronized void v(kh.i iVar) {
        try {
            kh.i iVar2 = (kh.i) this.f10287c;
            if (iVar2 != null) {
                iVar2.f10357c = iVar;
                this.f10287c = iVar;
            } else {
                if (((kh.i) this.f10286b) != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f10287c = iVar;
                this.f10286b = iVar;
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public ClassLoader w(ClassLoader classLoader, File file) throws NoSuchAlgorithmException, DigestException, IOException, ClassNotFoundException {
        File file2;
        File file3;
        File file4;
        Iterator it;
        u4.f fVar;
        Iterator it2;
        File file5;
        File file6;
        q4.e eVar;
        u4.f fVar2;
        j2 j2Var;
        LinkedHashMap linkedHashMap;
        u4.j jVar;
        q4.d dVar;
        r rVar;
        l6.f fVar3;
        int i10;
        q4.d dVar2;
        int i11;
        q qVar;
        q4.e eVar2;
        LinkedHashMap linkedHashMap2;
        int iE;
        int i12;
        boolean z;
        int i13;
        b5.e eVar3;
        b5.e eVar4;
        int i14;
        int i15;
        Iterator it3;
        File file7;
        File[] fileArrB;
        d dVar3 = this;
        int i16 = 29;
        if (file == null) {
            String property = System.getProperty("dexmaker.dexcache");
            if (property != null) {
                file2 = new File(property);
            } else {
                try {
                    ClassLoader classLoader2 = q4.a.class.getClassLoader();
                    Class<?> cls = Class.forName("dalvik.system.PathClassLoader");
                    cls.cast(classLoader2);
                    fileArrB = q4.a.B(q4.a.w(classLoader2, cls));
                } catch (ClassCastException | ClassNotFoundException unused) {
                }
                file2 = fileArrB.length > 0 ? fileArrB[0] : null;
                if (file2 == null) {
                    throw new IllegalArgumentException("dexcache == null (and no default could be found; consider setting the 'dexmaker.dexcache' system property)");
                }
            }
        } else {
            file2 = file;
        }
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) dVar3.f10286b;
        Set setKeySet = linkedHashMap3.keySet();
        Iterator it4 = setKeySet.iterator();
        int size = setKeySet.size();
        int[] iArr = new int[size];
        int i17 = 0;
        while (it4.hasNext()) {
            q4.e eVarB = dVar3.B((q4.j) it4.next());
            Set setKeySet2 = eVarB.f12988i.keySet();
            q4.j jVar2 = eVarB.f12983d;
            if (jVar2 != null) {
                iArr[i17] = setKeySet2.hashCode() + ((Arrays.hashCode(eVarB.f12985f.f13022a) + (jVar2.f13019a.hashCode() * 31)) * 31);
                i17++;
            }
        }
        Arrays.sort(iArr);
        int i18 = 1;
        for (int i19 = 0; i19 < size; i19++) {
            i18 = (i18 * 31) + iArr[i19];
        }
        File file8 = new File(file2, g.b.i("Generated_", i18, ".jar"));
        if (file8.exists()) {
            return dVar3.x(file8, file2, classLoader);
        }
        if (((u4.f) dVar3.f10287c) == null) {
            dVar3.f10287c = new u4.f(new j2(i16));
        }
        Iterator it5 = linkedHashMap3.values().iterator();
        while (it5.hasNext()) {
            q4.e eVar5 = (q4.e) it5.next();
            u4.f fVar4 = (u4.f) dVar3.f10287c;
            boolean z4 = eVar5.f12981b;
            LinkedHashMap linkedHashMap4 = eVar5.f12988i;
            LinkedHashMap linkedHashMap5 = eVar5.f12987h;
            q4.j jVar3 = eVar5.f12980a;
            if (!z4) {
                throw new IllegalStateException("Undeclared type " + jVar3 + " declares members: " + linkedHashMap5.keySet() + " " + linkedHashMap4.keySet());
            }
            j2 j2Var2 = new j2(i16);
            u uVar = jVar3.f13021c;
            if (eVar5.f12986g == null) {
                it = it5;
                eVar5.f12986g = new u4.c(uVar, eVar5.f12982c, eVar5.f12983d.f13021c, eVar5.f12985f.f13023b, new x4.t(eVar5.f12984e));
                Iterator it6 = linkedHashMap4.values().iterator();
                while (it6.hasNext()) {
                    q4.d dVar4 = (q4.d) it6.next();
                    int i20 = dVar4.f12978b;
                    int i21 = i20 & 1024;
                    q qVar2 = dVar4.f12977a.f13007e;
                    if (i21 == 0 && (i20 & 256) == 0) {
                        q4.b bVar = dVar4.f12979c;
                        if (!bVar.f12968d) {
                            bVar.f();
                        }
                        ArrayList arrayList = bVar.f12966b;
                        Iterator it7 = arrayList.iterator();
                        it2 = it6;
                        int i22 = 0;
                        while (it7.hasNext()) {
                            q4.g gVar = (q4.g) it7.next();
                            File file9 = file2;
                            if (gVar.f12992a.isEmpty()) {
                                it7.remove();
                                file7 = file8;
                                it3 = it7;
                            } else {
                                it3 = it7;
                                int i23 = 0;
                                while (i23 < gVar.f12995d.size()) {
                                    while (((q4.g) gVar.f12995d.get(i23)).f12992a.isEmpty()) {
                                        List list = gVar.f12995d;
                                        list.set(i23, ((q4.g) list.get(i23)).f12996e);
                                        file8 = file8;
                                    }
                                    i23++;
                                    file8 = file8;
                                }
                                file7 = file8;
                                while (true) {
                                    q4.g gVar2 = gVar.f12996e;
                                    if (gVar2 == null || !gVar2.f12992a.isEmpty()) {
                                        break;
                                    }
                                    gVar.f12996e = gVar.f12996e.f12996e;
                                }
                                while (true) {
                                    q4.g gVar3 = gVar.f12997f;
                                    if (gVar3 == null || !gVar3.f12992a.isEmpty()) {
                                        break;
                                    }
                                    gVar.f12997f = gVar.f12997f.f12996e;
                                }
                                gVar.f12998g = i22;
                                i22++;
                            }
                            file2 = file9;
                            it7 = it3;
                            file8 = file7;
                        }
                        file5 = file2;
                        file6 = file8;
                        w4.b bVar2 = new w4.b(arrayList.size());
                        int i24 = 0;
                        while (i24 < arrayList.size()) {
                            q4.g gVar4 = (q4.g) arrayList.get(i24);
                            ArrayList arrayList2 = gVar4.f12992a;
                            ArrayList arrayList3 = arrayList;
                            w4.g gVar5 = new w4.g(arrayList2.size());
                            for (int i25 = 0; i25 < arrayList2.size(); i25++) {
                                gVar5.e(i25, (w4.f) arrayList2.get(i25));
                            }
                            gVar5.f2570a = false;
                            b5.e eVar6 = new b5.e(4);
                            Iterator it8 = gVar4.f12995d.iterator();
                            while (it8.hasNext()) {
                                eVar6.d(((q4.g) it8.next()).f12998g);
                            }
                            q4.g gVar6 = gVar4.f12996e;
                            if (gVar6 != null) {
                                i14 = gVar6.f12998g;
                                eVar6.d(i14);
                            } else {
                                i14 = -1;
                            }
                            q4.g gVar7 = gVar4.f12997f;
                            if (gVar7 != null) {
                                eVar6.d(gVar7.f12998g);
                            }
                            eVar6.f2570a = false;
                            w4.a aVar = new w4.a(gVar4.f12998g, gVar5, eVar6, i14);
                            w4.a aVar2 = (w4.a) bVar2.f2559b[i24];
                            bVar2.e(i24, aVar);
                            b5.e eVar7 = bVar2.f17447c;
                            if (aVar2 != null) {
                                eVar7.f(aVar2.f17443a, -1);
                            }
                            int i26 = eVar7.f2568c;
                            int i27 = 0;
                            while (true) {
                                i15 = aVar.f17443a;
                                w4.a aVar3 = aVar;
                                if (i27 <= i15 - i26) {
                                    eVar7.d(-1);
                                    i27++;
                                    aVar = aVar3;
                                }
                            }
                            eVar7.f(i15, i24);
                            bVar2.f17448d = -1;
                            i24++;
                            arrayList = arrayList3;
                        }
                        s4.a aVar4 = new s4.a(bVar2);
                        Iterator it9 = bVar.f12970f.iterator();
                        int iC = 0;
                        while (it9.hasNext()) {
                            iC += ((q4.h) it9.next()).f13000b.f13020b.c();
                        }
                        l6.f fVar5 = new l6.f(aVar4, iC, j2Var2);
                        w4.b bVar3 = (w4.b) aVar4.f14293b;
                        int length = bVar3.f2559b.length;
                        int iG = (bVar3.g() + 31) >> 5;
                        int[] iArr2 = new int[iG];
                        int[] iArr3 = new int[iG];
                        for (int i28 = 0; i28 < length; i28++) {
                            int i29 = ((w4.a) bVar3.d(i28)).f17443a;
                            int i30 = i29 >> 5;
                            iArr2[i30] = iArr2[i30] | (1 << (i29 & 31));
                        }
                        int[] iArr4 = new int[length];
                        fVar2 = fVar4;
                        j2Var = j2Var2;
                        int i31 = 0;
                        int i32 = 0;
                        for (int i33 = -1; i31 != i33; i33 = -1) {
                            while (true) {
                                if (((b5.e) aVar4.f14295d) == null) {
                                    int iG2 = bVar3.g();
                                    linkedHashMap2 = linkedHashMap5;
                                    b5.e[] eVarArr = new b5.e[iG2];
                                    eVar2 = eVar5;
                                    dVar2 = dVar4;
                                    b5.e eVar8 = new b5.e(10);
                                    int length2 = bVar3.f2559b.length;
                                    i11 = i20;
                                    int i34 = 0;
                                    while (i34 < length2) {
                                        int i35 = length2;
                                        w4.a aVar5 = (w4.a) bVar3.d(i34);
                                        q qVar3 = qVar2;
                                        b5.e eVar9 = aVar5.f17445c;
                                        l6.f fVar6 = fVar5;
                                        int i36 = eVar9.f2568c;
                                        int i37 = aVar5.f17443a;
                                        if (i36 == 0) {
                                            eVar8.d(i37);
                                            i13 = length;
                                        } else {
                                            i13 = length;
                                            int i38 = 0;
                                            while (i38 < i36) {
                                                int iE2 = eVar9.e(i38);
                                                b5.e eVar10 = eVarArr[iE2];
                                                int i39 = i36;
                                                if (eVar10 == null) {
                                                    eVar3 = eVar9;
                                                    eVar4 = new b5.e(10);
                                                    eVarArr[iE2] = eVar4;
                                                } else {
                                                    eVar3 = eVar9;
                                                    eVar4 = eVar10;
                                                }
                                                eVar4.d(i37);
                                                i38++;
                                                i36 = i39;
                                                eVar9 = eVar3;
                                            }
                                        }
                                        i34++;
                                        qVar2 = qVar3;
                                        length2 = i35;
                                        fVar5 = fVar6;
                                        length = i13;
                                    }
                                    fVar3 = fVar5;
                                    i10 = length;
                                    qVar = qVar2;
                                    int i40 = 0;
                                    while (i40 < iG2) {
                                        b5.e eVar11 = eVarArr[i40];
                                        if (eVar11 != null) {
                                            eVar11.c();
                                            if (eVar11.f2569d) {
                                                i12 = 1;
                                                z = false;
                                            } else {
                                                z = false;
                                                Arrays.sort(eVar11.f2567b, 0, eVar11.f2568c);
                                                i12 = 1;
                                                eVar11.f2569d = true;
                                            }
                                            eVar11.f2570a = z;
                                        } else {
                                            i12 = 1;
                                        }
                                        i40 += i12;
                                    }
                                    eVar8.c();
                                    if (!eVar8.f2569d) {
                                        Arrays.sort(eVar8.f2567b, 0, eVar8.f2568c);
                                        eVar8.f2569d = true;
                                    }
                                    eVar8.f2570a = false;
                                    if (eVarArr[0] == null) {
                                        eVarArr[0] = b5.e.f2566e;
                                    }
                                    aVar4.f14294c = eVarArr;
                                    aVar4.f14295d = eVar8;
                                } else {
                                    fVar3 = fVar5;
                                    i10 = length;
                                    dVar2 = dVar4;
                                    i11 = i20;
                                    qVar = qVar2;
                                    eVar2 = eVar5;
                                    linkedHashMap2 = linkedHashMap5;
                                }
                                b5.e eVar12 = ((b5.e[]) aVar4.f14294c)[i31];
                                if (eVar12 == null) {
                                    throw new RuntimeException("no such block: ".concat(qf.c.e0(i31)));
                                }
                                int i41 = eVar12.f2568c;
                                for (int i42 = 0; i42 < i41; i42++) {
                                    iE = eVar12.e(i42);
                                    if (q4.a.j(iE, iArr3)) {
                                        break;
                                    }
                                    if (q4.a.j(iE, iArr2) && bVar3.h(iE).f17446d == i31) {
                                        break;
                                    }
                                }
                                break;
                                int i43 = iE >> 5;
                                iArr3[i43] = (1 << (iE & 31)) | iArr3[i43];
                                i31 = iE;
                                linkedHashMap5 = linkedHashMap2;
                                eVar5 = eVar2;
                                dVar4 = dVar2;
                                i20 = i11;
                                qVar2 = qVar;
                                fVar5 = fVar3;
                                length = i10;
                            }
                            int i44 = 1;
                            int i45 = -1;
                            while (i31 != i45) {
                                int i46 = i31 >> 5;
                                int i47 = (i44 << (i31 & 31)) ^ i45;
                                iArr2[i46] = iArr2[i46] & i47;
                                iArr3[i46] = iArr3[i46] & i47;
                                iArr4[i32] = i31;
                                i32 += i44;
                                w4.a aVarH = bVar3.h(i31);
                                b5.e eVar13 = aVarH.f17445c;
                                int i48 = eVar13.f2568c;
                                int i49 = aVarH.f17446d;
                                w4.a aVarH2 = i48 != 0 ? (i48 == i44 || i49 == -1) ? bVar3.h(eVar13.e(0)) : bVar3.h(i49) : null;
                                if (aVarH2 == null) {
                                    break;
                                }
                                int i50 = aVarH2.f17443a;
                                if (q4.a.j(i50, iArr2)) {
                                    i31 = i50;
                                } else if (i49 == i50 || i49 < 0 || !q4.a.j(i49, iArr2)) {
                                    int i51 = eVar13.f2568c;
                                    int i52 = 0;
                                    while (true) {
                                        if (i52 >= i51) {
                                            i31 = -1;
                                            break;
                                        }
                                        int iE3 = eVar13.e(i52);
                                        if (q4.a.j(iE3, iArr2)) {
                                            i31 = iE3;
                                            break;
                                        }
                                        i52++;
                                    }
                                } else {
                                    i31 = i49;
                                }
                                i45 = -1;
                                i44 = 1;
                            }
                            int i53 = 0;
                            while (true) {
                                if (i53 >= iG) {
                                    i31 = -1;
                                    break;
                                }
                                int i54 = iArr2[i53];
                                if (i54 != 0) {
                                    int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i54);
                                    if (iNumberOfTrailingZeros == 32) {
                                        iNumberOfTrailingZeros = -1;
                                    }
                                    if (iNumberOfTrailingZeros >= 0) {
                                        i31 = (i53 << 5) + iNumberOfTrailingZeros;
                                        break;
                                    }
                                }
                                i53++;
                            }
                            linkedHashMap5 = linkedHashMap2;
                            eVar5 = eVar2;
                            dVar4 = dVar2;
                            i20 = i11;
                            qVar2 = qVar;
                            fVar5 = fVar3;
                            length = i10;
                        }
                        l6.f fVar7 = fVar5;
                        int i55 = length;
                        q4.d dVar5 = dVar4;
                        int i56 = i20;
                        q qVar4 = qVar2;
                        eVar = eVar5;
                        linkedHashMap = linkedHashMap5;
                        if (i32 != i55) {
                            throw new RuntimeException("shouldn't happen");
                        }
                        fVar7.f10663h = iArr4;
                        int i57 = 0;
                        while (true) {
                            d dVar6 = (d) fVar7.f10661f;
                            s4.a aVar6 = (s4.a) fVar7.f10660e;
                            if (i57 < i55) {
                                int i58 = i57 + 1;
                                int i59 = i58 == i55 ? -1 : iArr4[i58];
                                w4.a aVarH3 = bVar3.h(iArr4[i57]);
                                aVar6.getClass();
                                s4.f[] fVarArr = (s4.f[]) aVar6.f14293b;
                                int i60 = aVarH3.f17443a;
                                ((r) dVar6.f10287c).a(fVarArr[i60]);
                                s4.f fVar8 = ((s4.f[]) aVar6.f14294c)[i60];
                                w0 w0Var = (w0) fVar7.f10662g;
                                w0Var.f347c = aVarH3;
                                w0Var.f348d = fVar8;
                                w4.g gVar8 = aVarH3.f17444b;
                                int length3 = gVar8.f2559b.length;
                                int i61 = 0;
                                while (i61 < length3) {
                                    ((w4.f) gVar8.d(i61)).b(w0Var);
                                    i61++;
                                    i55 = i55;
                                }
                                int i62 = i55;
                                s4.f fVar9 = ((s4.f[]) aVar6.f14295d)[i60];
                                r rVar2 = (r) dVar6.f10287c;
                                rVar2.a(fVar9);
                                w4.f fVarG = gVar8.g();
                                int i63 = aVarH3.f17446d;
                                if (i63 >= 0 && i63 != i59) {
                                    if (fVarG.f17458a.f17475e == 4) {
                                        b5.e eVar14 = aVarH3.f17445c;
                                        if (eVar14.f2568c != 2) {
                                            throw new UnsupportedOperationException("block doesn't have exactly two successors");
                                        }
                                        int iE4 = eVar14.e(0);
                                        if (iE4 == i63) {
                                            iE4 = eVar14.e(1);
                                        }
                                        if (iE4 == i59) {
                                            s4.f fVar10 = fVarArr[i63];
                                            int size2 = rVar2.f14403c.size() - 2;
                                            try {
                                                rVar2.f14403c.set(size2, ((s4.v) rVar2.f14403c.get(size2)).o(fVar10));
                                            } catch (ClassCastException unused2) {
                                                throw new IllegalArgumentException("non-reversible instruction");
                                            } catch (IndexOutOfBoundsException unused3) {
                                                throw new IllegalArgumentException("too few instructions");
                                            }
                                        }
                                    }
                                    rVar2.a(new s4.v(s4.k.I, fVarG.f17459b, w4.l.f17468c, fVarArr[i63]));
                                }
                                i57 = i58;
                                i55 = i62;
                            } else {
                                s4.a aVar7 = new s4.a(aVar4, (int[]) fVar7.f10663h, aVar6);
                                ArrayList arrayList4 = (ArrayList) dVar6.f10286b;
                                if (arrayList4 == null) {
                                    throw new UnsupportedOperationException("already processed");
                                }
                                int size3 = arrayList4.size();
                                int i64 = 0;
                                while (true) {
                                    rVar = (r) dVar6.f10287c;
                                    if (i64 >= size3) {
                                        break;
                                    }
                                    rVar.a((s4.h) ((ArrayList) dVar6.f10286b).get(i64));
                                    i64++;
                                }
                                dVar6.f10286b = null;
                                jVar = new u4.j(qVar4, i56, new w0(rVar, aVar7), y4.b.f18928c);
                                dVar = dVar5;
                            }
                        }
                    } else {
                        it2 = it6;
                        file5 = file2;
                        file6 = file8;
                        eVar = eVar5;
                        fVar2 = fVar4;
                        j2Var = j2Var2;
                        linkedHashMap = linkedHashMap5;
                        jVar = new u4.j(qVar2, i20, null, y4.b.f18928c);
                        dVar = dVar4;
                    }
                    if ((dVar.f12978b & 65546) != 0) {
                        eVar5 = eVar;
                        eVar5.f12986g.f15341g.f15332i.add(jVar);
                    } else {
                        eVar5 = eVar;
                        eVar5.f12986g.f15341g.f15333j.add(jVar);
                    }
                    it6 = it2;
                    file2 = file5;
                    file8 = file6;
                    j2Var2 = j2Var;
                    fVar4 = fVar2;
                    linkedHashMap5 = linkedHashMap;
                }
                file3 = file2;
                file4 = file8;
                fVar = fVar4;
                for (q4.c cVar : linkedHashMap5.values()) {
                    h hVar = cVar.f12975a.f12991c;
                    int i65 = cVar.f12976b;
                    u4.h hVar2 = new u4.h(hVar, i65);
                    if ((i65 & 8) != 0) {
                        u4.c cVar2 = eVar5.f12986g;
                        k kVar = k.f18125a;
                        u4.b bVar4 = cVar2.f15341g;
                        if (bVar4.f15334k != null) {
                            throw new UnsupportedOperationException("static fields already sorted");
                        }
                        bVar4.f15329f.add(hVar2);
                        bVar4.f15330g.put(hVar2, kVar);
                    } else {
                        eVar5.f12986g.f15341g.f15331h.add(hVar2);
                    }
                }
            } else {
                file3 = file2;
                file4 = file8;
                it = it5;
                fVar = fVar4;
            }
            u4.c cVar3 = eVar5.f12986g;
            u4.d dVar7 = fVar.f15363j;
            dVar7.getClass();
            try {
                y4.c cVar4 = cVar3.f15336b.f18142a;
                dVar7.g();
                TreeMap treeMap = dVar7.f15346f;
                if (treeMap.get(cVar4) != null) {
                    throw new IllegalArgumentException("already added: " + cVar4);
                }
                treeMap.put(cVar4, cVar3);
                dVar3 = this;
                it5 = it;
                file2 = file3;
                file8 = file4;
                i16 = 29;
            } catch (NullPointerException unused4) {
                throw new NullPointerException("clazz == null");
            }
        }
        File file10 = file2;
        File file11 = file8;
        try {
            byte[] bArrB = ((u4.f) dVar3.f10287c).b();
            file11.createNewFile();
            JarOutputStream jarOutputStream = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(file11)));
            try {
                JarEntry jarEntry = new JarEntry("classes.dex");
                jarEntry.setSize(bArrB.length);
                jarOutputStream.putNextEntry(jarEntry);
                try {
                    jarOutputStream.write(bArrB);
                    jarOutputStream.closeEntry();
                    jarOutputStream.close();
                    return dVar3.x(file11, file10, classLoader);
                } catch (Throwable th2) {
                    jarOutputStream.closeEntry();
                    throw th2;
                }
            } catch (Throwable th3) {
                jarOutputStream.close();
                throw th3;
            }
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    public ClassLoader x(File file, File file2, ClassLoader classLoader) throws ClassNotFoundException {
        if (classLoader == null) {
            classLoader = null;
        }
        try {
            Class.forName("dalvik.system.BaseDexClassLoader");
            return (ClassLoader) Class.forName("dalvik.system.DexClassLoader").getConstructor(String.class, String.class, String.class, ClassLoader.class).newInstance(file.getPath(), file2.getAbsolutePath(), null, classLoader);
        } catch (ClassNotFoundException e7) {
            throw new UnsupportedOperationException("load() requires a Dalvik VM", e7);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InstantiationException unused2) {
            throw new AssertionError();
        } catch (NoSuchMethodException unused3) {
            throw new AssertionError();
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(e10.getCause());
        }
    }

    public l2.o y(Object... objArr) {
        Constructor constructorA;
        synchronized (((AtomicBoolean) this.f10287c)) {
            if (!((AtomicBoolean) this.f10287c).get()) {
                try {
                    constructorA = ((jd) this.f10286b).a();
                } catch (ClassNotFoundException unused) {
                    ((AtomicBoolean) this.f10287c).set(true);
                } catch (Exception e7) {
                    throw new RuntimeException("Error instantiating extension", e7);
                }
            }
            constructorA = null;
        }
        if (constructorA == null) {
            return null;
        }
        try {
            return (l2.o) constructorA.newInstance(objArr);
        } catch (Exception e10) {
            throw new IllegalStateException("Unexpected error creating extractor", e10);
        }
    }

    public String z(String str) {
        if (str == null) {
            return null;
        }
        Iterator it = ((ArrayList) this.f10286b).iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f10284b.equals(str)) {
                return cVar.f10283a;
            }
        }
        return null;
    }

    public /* synthetic */ d(int i10, boolean z) {
        this.f10285a = i10;
    }

    public /* synthetic */ d(Context context, int i10) {
        this.f10285a = i10;
        this.f10286b = context;
    }

    public /* synthetic */ d(Object obj, int i10, Object obj2) {
        this.f10285a = i10;
        this.f10286b = obj;
        this.f10287c = obj2;
    }

    public d(int i10) {
        this.f10285a = i10;
        switch (i10) {
            case 10:
                this.f10286b = new LinkedHashMap();
                break;
            case 13:
                this.f10286b = new u1.q();
                this.f10287c = new r3.a();
                break;
            default:
                this.f10286b = new ArrayList();
                this.f10287c = new ArrayList();
                break;
        }
    }

    public d(Supplier supplier) {
        this.f10285a = 8;
        this.f10287c = supplier;
        this.f10286b = new oh.b(new ah.a(2), 0);
    }

    public d(char[] cArr, long j10, boolean z) throws wf.a {
        this.f10285a = 20;
        vf.b bVar = new vf.b();
        this.f10286b = bVar;
        if (cArr != null && cArr.length > 0) {
            bVar.b(cArr, z);
            byte[] bArr = new byte[12];
            SecureRandom secureRandom = new SecureRandom();
            for (int i10 = 0; i10 < 12; i10++) {
                byte bNextInt = (byte) secureRandom.nextInt(256);
                vf.b bVar2 = (vf.b) this.f10286b;
                byte bA = (byte) ((bVar2.a() & 255) ^ bNextInt);
                bVar2.c(bNextInt);
                bArr[i10] = bA;
            }
            this.f10287c = bArr;
            bVar.b(cArr, z);
            byte[] bArr2 = (byte[]) this.f10287c;
            bArr2[11] = (byte) (j10 >>> 24);
            bArr2[10] = (byte) (j10 >>> 16);
            d(0, bArr2.length, bArr2);
            return;
        }
        throw new wf.a("input password is null or empty, cannot initialize standard encrypter");
    }

    private final void G() {
    }

    private final void H() {
    }

    private final void I() {
    }

    public d(Locale locale) {
        this.f10285a = 5;
        this.f10286b = locale;
        this.f10287c = DateFormatSymbols.getInstance(locale).getShortMonths();
        Calendar calendar = Calendar.getInstance(locale);
        int minimum = calendar.getMinimum(5);
        int maximum = calendar.getMaximum(5);
        String[] strArr = new String[(maximum - minimum) + 1];
        for (int i10 = minimum; i10 <= maximum; i10++) {
            strArr[i10 - minimum] = String.format("%02d", Integer.valueOf(i10));
        }
    }

    public d(j2 j2Var, int i10, int i11, int i12, int i13) {
        this.f10285a = 16;
        this.f10287c = new r(j2Var, i10, i12, i13);
        this.f10286b = new ArrayList(i11);
    }

    public d(CodeEditor codeEditor) {
        this.f10285a = 19;
        Objects.requireNonNull(codeEditor, "Cannot setup KeyEvent with null editor instance.");
        this.f10286b = codeEditor;
        this.f10287c = new qb.a(codeEditor);
    }

    public d(d0 d0Var) {
        this.f10285a = 14;
        this.f10286b = d0Var;
        this.f10287c = new u1.q();
    }

    public d(u4.f fVar, b5.b bVar) {
        this.f10285a = 24;
        if (fVar != null) {
            this.f10286b = fVar;
            this.f10287c = bVar;
            return;
        }
        throw new NullPointerException("file == null");
    }

    public d(ArrayList arrayList, ArrayList arrayList2) {
        this.f10285a = 4;
        int size = arrayList.size();
        this.f10286b = new int[size];
        this.f10287c = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            ((int[]) this.f10286b)[i10] = ((Integer) arrayList.get(i10)).intValue();
            ((float[]) this.f10287c)[i10] = ((Float) arrayList2.get(i10)).floatValue();
        }
    }

    public d(int i10, int i11) {
        this.f10285a = 4;
        this.f10286b = new int[]{i10, i11};
        this.f10287c = new float[]{0.0f, 1.0f};
    }

    public d(int i10, int i11, int i12) {
        this.f10285a = 4;
        this.f10286b = new int[]{i10, i11, i12};
        this.f10287c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public d(s3.b0 b0Var) {
        this.f10285a = 15;
        this.f10287c = b0Var;
        this.f10286b = new j3.f(new byte[4], 4);
    }

    public d(jd jdVar) {
        this.f10285a = 2;
        this.f10286b = jdVar;
        this.f10287c = new AtomicBoolean(false);
    }

    @Override // s3.y
    public void c(d0 d0Var, l2.q qVar, s3.d0 d0Var2) {
    }
}
