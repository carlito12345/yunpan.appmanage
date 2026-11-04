package l5;

import a2.k1;
import a2.w0;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Looper;
import android.view.View;
import androidx.lifecycle.r0;
import androidx.lifecycle.u0;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import com.yunpan.appmanage.ui.ActivityDesktop;
import ha.db;
import ha.h3;
import ha.j2;
import ha.l2;
import ha.l4;
import ha.wd;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.nio.charset.StandardCharsets;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.text.Bidi;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.WeakHashMap;
import u7.g0;
import u7.t0;
import ua.e1;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public class y implements f5.c, r, nb.c, o5.l, u0, rh.u, t7.m, tf.c, y0.a0, wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10628a;

    /* renamed from: b, reason: collision with root package name */
    public Object f10629b;

    public /* synthetic */ y(int i10, Object obj) {
        this.f10628a = i10;
        this.f10629b = obj;
    }

    public static long G(Typeface typeface) throws NoSuchFieldException, SecurityException {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return 0L;
        }
    }

    public static Object y(Object[] objArr, int i10, p0.m mVar) {
        int i11 = (i10 & 1) == 0 ? 400 : 700;
        boolean z = (i10 & 2) != 0;
        Object obj = null;
        int i12 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int iAbs = (Math.abs(mVar.u(obj2) - i11) * 2) + (mVar.v(obj2) == z ? 0 : 1);
            if (obj == null || i12 > iAbs) {
                obj = obj2;
                i12 = iAbs;
            }
        }
        return obj;
    }

    public boolean A(String str) {
        String strF = F(str);
        if (strF == null) {
            return false;
        }
        return Boolean.parseBoolean(strF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6 */
    public List B(androidx.room.s sVar) {
        String str;
        int i10;
        List listSingletonList;
        u1.q qVar = new u1.q((byte[]) sVar.f2428d);
        ArrayList arrayList = (g0) this.f10629b;
        while (qVar.a() > 0) {
            int iB = qVar.B();
            int iB2 = qVar.f15267b + qVar.B();
            if (iB == 134) {
                arrayList = new ArrayList();
                int iB3 = qVar.B() & 31;
                for (int i11 = 0; i11 < iB3; i11++) {
                    String strZ = qVar.z(StandardCharsets.UTF_8, 3);
                    int iB4 = qVar.B();
                    boolean z = (iB4 & 128) != 0;
                    if (z) {
                        i10 = iB4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte B = (byte) qVar.B();
                    qVar.P(1);
                    if (z) {
                        boolean z4 = (B & 64) != 0;
                        byte[] bArr = u1.c.f15189a;
                        listSingletonList = Collections.singletonList(z4 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    r1.o oVar = new r1.o();
                    oVar.f13492n = r1.e0.l(str);
                    oVar.f13483d = strZ;
                    oVar.K = i10;
                    oVar.f13495q = listSingletonList;
                    arrayList.add(new r1.p(oVar));
                }
            }
            qVar.O(iB2);
            arrayList = arrayList;
        }
        return arrayList;
    }

    public int C(x4.a aVar) {
        u4.o oVar;
        u4.f fVar = (u4.f) this.f10629b;
        fVar.getClass();
        if (aVar instanceof x4.t) {
            u4.z zVar = fVar.f15358e;
            if (aVar == null) {
                zVar.getClass();
                throw new NullPointerException("cst == null");
            }
            zVar.f();
            oVar = (u4.o) ((TreeMap) zVar.f15415g).get((x4.t) aVar);
            if (oVar == null) {
                throw new IllegalArgumentException("not found");
            }
        } else if (aVar instanceof x4.u) {
            u4.z zVar2 = fVar.f15359f;
            if (aVar == null) {
                zVar2.getClass();
                throw new NullPointerException("cst == null");
            }
            zVar2.f();
            u4.o oVar2 = (u4.o) ((TreeMap) zVar2.f15415g).get(((x4.u) aVar).f18142a);
            if (oVar2 == null) {
                throw new IllegalArgumentException("not found: " + aVar);
            }
            oVar = oVar2;
        } else if (aVar instanceof x4.q) {
            u4.v vVar = fVar.f15362i;
            if (aVar == null) {
                vVar.getClass();
                throw new NullPointerException("cst == null");
            }
            vVar.f();
            oVar = (u4.o) vVar.f15401f.get((x4.q) aVar);
            if (oVar == null) {
                throw new IllegalArgumentException("not found");
            }
        } else if (aVar instanceof x4.h) {
            u4.l lVar = fVar.f15361h;
            if (aVar == null) {
                lVar.getClass();
                throw new NullPointerException("cst == null");
            }
            lVar.f();
            oVar = (u4.o) lVar.f15376f.get((x4.h) aVar);
            if (oVar == null) {
                throw new IllegalArgumentException("not found");
            }
        } else {
            oVar = null;
        }
        if (oVar == null) {
            return -1;
        }
        return oVar.e();
    }

    @Override // ha.wd
    public void D() {
        switch (this.f10628a) {
            case 23:
                h3 h3Var = (h3) this.f10629b;
                ActivityAdb.A((ActivityAdb) h3Var.f7143d, (String) h3Var.f7142c, true);
                break;
            case 26:
                fa.b0.f5652a.getClass();
                if (!w0.O()) {
                    com.yunpan.appmanage.util.a0.s("没连接adb，无法强制停止", false);
                    break;
                } else {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4048g0.execute(new db(25, this));
                    break;
                }
            case 28:
                ActivityCodeEditor activityCodeEditor = ((e1) this.f10629b).f15649c;
                int i10 = ActivityCodeEditor.f3967c1;
                activityCodeEditor.x(null);
                break;
            default:
                int i11 = ActivityDesktop.G;
                qf.c.Z(((ActivityDesktop) this.f10629b).A);
                break;
        }
    }

    public Long E(String str) {
        String strF = F(str);
        if (strF == null) {
            return null;
        }
        return strF.startsWith("0x") ? Long.valueOf(strF.substring(2), 16) : Long.valueOf(strF);
    }

    public String F(String str) {
        kf.b bVar;
        kf.b[] bVarArr = (kf.b[]) this.f10629b;
        int length = bVarArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                bVar = null;
                break;
            }
            bVar = bVarArr[i10];
            if (((String) bVar.f10279c).equals(str)) {
                break;
            }
            i10++;
        }
        if (bVar == null) {
            return null;
        }
        return (String) bVar.f10282f;
    }

    public void L(int i10) {
        switch (this.f10628a) {
            case 24:
                x9.y yVar = (x9.y) ((ActivityAppStorage) this.f10629b).D.t(i10);
                new mc.c(0, new ma.b(this, 7, yVar)).d(rc.f.f13757b).a(fc.b.a()).b(new l4(this, i10, yVar, 2));
                break;
        }
    }

    public void N() {
        db dbVar = new db(22, this);
        CodeEditor codeEditor = (CodeEditor) ((WeakReference) this.f10629b).get();
        if (codeEditor == null) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            dbVar.run();
        } else {
            codeEditor.Z(dbVar);
        }
    }

    @Override // nb.c
    public int a() {
        return ((ai.a[]) this.f10629b).length;
    }

    @Override // androidx.lifecycle.u0
    public r0 b(Class cls) {
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    @Override // o5.l
    public int c() {
        return (h() << 8) | h();
    }

    @Override // y0.a0
    public boolean d(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.f10629b;
        if (!swipeDismissBehavior.r(view)) {
            return false;
        }
        WeakHashMap weakHashMap = b1.f17953a;
        boolean z = k0.d(view) == 1;
        int i10 = swipeDismissBehavior.f3457d;
        b1.o((!(i10 == 0 && z) && (i10 != 1 || z)) ? view.getWidth() : -view.getWidth(), view);
        view.setAlpha(0.0f);
        return true;
    }

    @Override // androidx.lifecycle.u0
    public r0 e(Class cls, p1.c cVar) {
        r0 r0Var = null;
        for (p1.d dVar : (p1.d[]) this.f10629b) {
            if (dVar.f12566a.equals(cls)) {
                r0Var = (r0) androidx.lifecycle.k0.f1780a.a(cVar);
            }
        }
        if (r0Var != null) {
            return r0Var;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(cls.getName()));
    }

    @Override // f5.c
    public boolean g(Object obj, File file, f5.i iVar) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        k1 k1Var = (k1) this.f10629b;
        byte[] bArr = (byte[]) k1Var.e(byte[].class, 65536);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            while (true) {
                try {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    fileOutputStream2.write(bArr, 0, i10);
                } catch (IOException unused) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    k1Var.i(bArr);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    k1Var.i(bArr);
                    throw th;
                }
            }
            fileOutputStream2.close();
            try {
                fileOutputStream2.close();
            } catch (IOException unused4) {
            }
            k1Var.i(bArr);
            return true;
        } catch (IOException unused5) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // o5.l
    public short h() throws IOException {
        int i10 = ((InputStream) this.f10629b).read();
        if (i10 != -1) {
            return (short) i10;
        }
        throw new o5.k();
    }

    @Override // rh.u
    public void i(ph.q qVar, int i10) {
        boolean z = qVar instanceof ph.x;
        StringBuilder sb2 = (StringBuilder) this.f10629b;
        if (z) {
            ph.l.C(sb2, (ph.x) qVar);
            return;
        }
        if (qVar instanceof ph.l) {
            ph.l lVar = (ph.l) qVar;
            if (sb2.length() > 0) {
                if (((lVar.f12722d.f13286d & 4) == 0 && !lVar.l("br")) || ph.x.D(sb2)) {
                    return;
                }
                sb2.append(' ');
            }
        }
    }

    @Override // nb.c
    public int j(int i10) {
        return (int) (((ai.a[]) this.f10629b)[i10].f718b >> 32);
    }

    @Override // t7.m
    public Iterator k(androidx.room.s sVar, CharSequence charSequence) {
        return new t7.l(this, sVar, charSequence, 0);
    }

    @Override // l5.r
    public q l(w wVar) {
        return new m5.a((h5.m) this.f10629b);
    }

    @Override // tf.c
    public int m(int i10, int i11, byte[] bArr) throws wf.a {
        if (i10 < 0 || i11 < 0) {
            throw new wf.a("one of the input parameters were null in standard decrypt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            int i13 = bArr[i12] & 255;
            vf.b bVar = (vf.b) this.f10629b;
            byte bA = (byte) ((i13 ^ bVar.a()) & 255);
            bVar.c(bA);
            bArr[i12] = bA;
        }
        return i11;
    }

    @Override // o5.l
    public int n(int i10, byte[] bArr) throws o5.k {
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10 && (i12 = ((InputStream) this.f10629b).read(bArr, i11, i10 - i11)) != -1) {
            i11 += i12;
        }
        if (i11 == 0 && i12 == -1) {
            throw new o5.k();
        }
        return i11;
    }

    @Override // nb.c
    public int o(int i10) {
        return (int) (((ai.a[]) this.f10629b)[i10].f718b & 4294967295L);
    }

    @Override // rh.u
    public void p(ph.q qVar, int i10) {
        if (qVar instanceof ph.l) {
            ph.l lVar = (ph.l) qVar;
            ph.q qVarN = qVar.n();
            if ((lVar.f12722d.f13286d & 4) == 0) {
                return;
            }
            if ((qVarN instanceof ph.x) || ((qVarN instanceof ph.l) && (((ph.l) qVarN).f12722d.f13286d & 4) == 0)) {
                StringBuilder sb2 = (StringBuilder) this.f10629b;
                if (ph.x.D(sb2)) {
                    return;
                }
                sb2.append(' ');
            }
        }
    }

    @Override // nb.c
    public boolean q(int i10) {
        return (((ai.a[]) this.f10629b)[i10].f717a & 1) != 0;
    }

    public void r(int i10, boolean z) {
        h5.d0 d0Var = (h5.d0) this.f10629b;
        if (z) {
            d0Var.a(i10);
        } else {
            d0Var.getClass();
        }
    }

    public u7.u0 s() {
        return new u7.u0(((u7.q) this.f10629b).d(), new t0());
    }

    @Override // o5.l
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            return 0L;
        }
        long j11 = j10;
        while (j11 > 0) {
            InputStream inputStream = (InputStream) this.f10629b;
            long jSkip = inputStream.skip(j11);
            if (jSkip > 0) {
                j11 -= jSkip;
            } else {
                if (inputStream.read() == -1) {
                    break;
                }
                j11--;
            }
        }
        return j10 - j11;
    }

    @Override // ha.wd
    public void t() {
        switch (this.f10628a) {
            case 23:
                h3 h3Var = (h3) this.f10629b;
                ActivityAdb.A((ActivityAdb) h3Var.f7143d, (String) h3Var.f7142c, false);
                break;
        }
    }

    public Typeface u(Context context, o0.f fVar, Resources resources, int i10) throws NoSuchFieldException, SecurityException {
        o0.g gVar = (o0.g) y(fVar.f11456a, i10, new j2(27));
        if (gVar == null) {
            return null;
        }
        y yVar = p0.g.f12547a;
        int i11 = gVar.f11462f;
        String str = gVar.f11457a;
        Typeface typefaceX = yVar.x(context, resources, i11, str, i10);
        if (typefaceX != null) {
            p0.g.f12548b.c(p0.g.b(resources, i11, str, 0, i10), typefaceX);
        }
        long jG = G(typefaceX);
        if (jG != 0) {
            ((ConcurrentHashMap) this.f10629b).put(Long.valueOf(jG), fVar);
        }
        return typefaceX;
    }

    public Typeface v(Context context, u0.g[] gVarArr, int i10) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (gVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(z(gVarArr, i10).f15175a);
            try {
                Typeface typefaceW = w(context, inputStreamOpenInputStream);
                nh.b.l(inputStreamOpenInputStream);
                return typefaceW;
            } catch (IOException unused) {
                nh.b.l(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStreamOpenInputStream;
                nh.b.l(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Typeface w(Context context, InputStream inputStream) {
        File fileL = nh.b.L(context);
        if (fileL == null) {
            return null;
        }
        try {
            if (nh.b.o(fileL, inputStream)) {
                return Typeface.createFromFile(fileL.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileL.delete();
        }
    }

    public Typeface x(Context context, Resources resources, int i10, String str, int i11) {
        File fileL = nh.b.L(context);
        if (fileL == null) {
            return null;
        }
        try {
            if (nh.b.n(fileL, resources, i10)) {
                return Typeface.createFromFile(fileL.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileL.delete();
        }
    }

    public u0.g z(u0.g[] gVarArr, int i10) {
        return (u0.g) y(gVarArr, i10, new l2(26));
    }

    public y(int i10) {
        this.f10628a = 7;
        this.f10629b = new kf.b[i10];
    }

    public y(char[] cArr, long j10, long j11, byte[] bArr, boolean z) throws wf.a {
        byte bA;
        this.f10628a = 19;
        vf.b bVar = new vf.b();
        this.f10629b = bVar;
        if (cArr != null && cArr.length > 0) {
            bVar.b(cArr, z);
            byte b10 = bArr[0];
            int i10 = 0;
            while (i10 < 12) {
                i10++;
                if (i10 == 12 && (bA = (byte) (bVar.a() ^ b10)) != ((byte) (j10 >> 24)) && bA != ((byte) (j11 >> 8))) {
                    throw new wf.a("Wrong password!", 0);
                }
                bVar.c((byte) (bVar.a() ^ b10));
                if (i10 != 12) {
                    b10 = bArr[i10];
                }
            }
            return;
        }
        throw new wf.a("Wrong password!", 0);
    }

    public y(CodeEditor codeEditor) {
        this.f10628a = 18;
        this.f10629b = new WeakReference(codeEditor);
        codeEditor.l0(db.x.class, new db.m(3, this));
    }

    public y(nb.b bVar) {
        this.f10628a = 5;
        int length = bVar.f11333a.length;
        this.f10629b = new ai.a[length];
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) (bVar.f11333a[i10] & 4294967295L);
            ((ai.a[]) this.f10629b)[i10] = new ai.a(sb.h.g(bVar.j(i10), bVar.o(i10)), (int) (4294967295L & bVar.f11333a[i10]));
        }
        Bidi.reorderVisually(bArr, 0, (ai.a[]) this.f10629b, 0, length);
    }

    private final void I() {
    }

    private final void J() {
    }

    private final void K() {
    }

    public y(byte b10, int i10) {
        this.f10628a = i10;
        switch (i10) {
            case 9:
                this.f10629b = new ConcurrentHashMap();
                break;
            case 14:
                this.f10629b = new h5.d0(1);
                break;
            case 16:
                this.f10629b = null;
                break;
            case 22:
                break;
            default:
                this.f10629b = new h5.m(29);
                break;
        }
    }

    private final void H(int i10) {
    }

    private final void M(int i10) {
    }

    public y(p1.d[] dVarArr) {
        this.f10628a = 10;
        ue.d.e(dVarArr, "initializers");
        this.f10629b = dVarArr;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public y(u7.q qVar) {
        this((byte) 0, 22);
        this.f10628a = 22;
        this.f10629b = qVar;
    }
}
