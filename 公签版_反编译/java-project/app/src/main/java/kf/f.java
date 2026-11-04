package kf;

import android.content.pm.ResolveInfo;
import android.view.View;
import androidx.activity.h;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.yunpan.appmanage.ui.ActivityStart;
import ha.db;
import ha.wd;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import l5.y;
import rf.g;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public final class f implements e, wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10288a;

    /* renamed from: b, reason: collision with root package name */
    public int f10289b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10290c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f10291d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f10292e;

    public f() {
        this.f10288a = 0;
        this.f10289b = 0;
        StringBuilder sb2 = new StringBuilder();
        this.f10291d = sb2;
        sb2.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
        this.f10292e = new d(0);
    }

    public static void a(n8.d[][][] dVarArr, int i10, n8.d dVar) {
        n8.d[] dVarArr2 = dVarArr[i10 + dVar.f11323d][dVar.f11322c];
        m8.a aVar = dVar.f11320a;
        int iOrdinal = aVar.ordinal();
        char c7 = 2;
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                c7 = 1;
            } else if (iOrdinal == 4) {
                c7 = 3;
            } else {
                if (iOrdinal != 6) {
                    throw new IllegalStateException("Illegal mode " + aVar);
                }
                c7 = 0;
            }
        }
        n8.d dVar2 = dVarArr2[c7];
        if (dVar2 != null) {
            if (dVar2.f11325f <= dVar.f11325f) {
                return;
            }
        }
        dVarArr2[c7] = dVar;
    }

    public static boolean c(m8.a aVar, char c7) {
        int i10;
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 1) {
            return c7 >= '0' && c7 <= '9';
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 4) {
                return true;
            }
            if (iOrdinal != 6) {
                return false;
            }
            return n8.b.b(String.valueOf(c7));
        }
        if (c7 < '`') {
            i10 = n8.b.f11314a[c7];
        } else {
            int[] iArr = n8.b.f11314a;
            i10 = -1;
        }
        return i10 != -1;
    }

    public static m8.b h(int i10) {
        int iC = d0.f.c(i10);
        return iC != 0 ? iC != 1 ? m8.b.a(40) : m8.b.a(26) : m8.b.a(9);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(m8.b bVar, n8.d[][][] dVarArr, int i10, n8.d dVar) {
        int i11;
        j8.d dVar2 = (j8.d) this.f10292e;
        int length = dVar2.f9805a.length;
        CharsetEncoder[] charsetEncoderArr = dVar2.f9805a;
        int i12 = dVar2.f9806b;
        String str = (String) this.f10291d;
        if (i12 >= 0) {
            char cCharAt = str.charAt(i10);
            if (charsetEncoderArr[i12].canEncode("" + cCharAt)) {
                length = i12 + 1;
            } else {
                i12 = 0;
            }
        }
        int i13 = length;
        for (int i14 = i12; i14 < i13; i14++) {
            char cCharAt2 = str.charAt(i10);
            if (charsetEncoderArr[i14].canEncode("" + cCharAt2)) {
                a(dVarArr, i10, new n8.d(this, m8.a.BYTE, i10, i14, 1, dVar, bVar));
            }
        }
        m8.a aVar = m8.a.KANJI;
        if (c(aVar, str.charAt(i10))) {
            a(dVarArr, i10, new n8.d(this, aVar, i10, 0, 1, dVar, bVar));
        }
        int length2 = str.length();
        m8.a aVar2 = m8.a.ALPHANUMERIC;
        if (c(aVar2, str.charAt(i10))) {
            int i15 = i10 + 1;
            a(dVarArr, i10, new n8.d(this, aVar2, i10, 0, (i15 >= length2 || !c(aVar2, str.charAt(i15))) ? 1 : 2, dVar, bVar));
        }
        m8.a aVar3 = m8.a.NUMERIC;
        if (c(aVar3, str.charAt(i10))) {
            int i16 = i10 + 1;
            if (i16 >= length2 || !c(aVar3, str.charAt(i16))) {
                i11 = 1;
            } else {
                int i17 = i10 + 2;
                i11 = (i17 >= length2 || !c(aVar3, str.charAt(i17))) ? 2 : 3;
            }
            a(dVarArr, i10, new n8.d(this, aVar3, i10, 0, i11, dVar, bVar));
        }
    }

    public void d(int i10) {
        Object obj = this.f10291d;
        Object obj2 = this.f10292e;
        switch (this.f10288a) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj2;
                WeakReference weakReference = sideSheetBehavior.f3636p;
                if (weakReference != null && weakReference.get() != null) {
                    this.f10289b = i10;
                    if (!this.f10290c) {
                        WeakHashMap weakHashMap = b1.f17953a;
                        j0.m((View) sideSheetBehavior.f3636p.get(), (db) obj);
                        this.f10290c = true;
                        break;
                    }
                }
                break;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj2;
                WeakReference weakReference2 = bottomSheetBehavior.U;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f10289b = i10;
                    if (!this.f10290c) {
                        WeakHashMap weakHashMap2 = b1.f17953a;
                        j0.m((View) bottomSheetBehavior.U.get(), (h) obj);
                        this.f10290c = true;
                        break;
                    }
                }
                break;
        }
    }

    public v3.f e(m8.b bVar) throws i8.b {
        int i10;
        String str = (String) this.f10291d;
        int length = str.length();
        j8.d dVar = (j8.d) this.f10292e;
        n8.d[][][] dVarArr = (n8.d[][][]) Array.newInstance((Class<?>) n8.d.class, length + 1, dVar.f9805a.length, 4);
        b(bVar, dVarArr, 0, null);
        for (int i11 = 1; i11 <= length; i11++) {
            for (int i12 = 0; i12 < dVar.f9805a.length; i12++) {
                for (int i13 = 0; i13 < 4; i13++) {
                    n8.d dVar2 = dVarArr[i11][i12][i13];
                    if (dVar2 != null && i11 < length) {
                        b(bVar, dVarArr, i11, dVar2);
                    }
                }
            }
        }
        int i14 = -1;
        int i15 = -1;
        int i16 = Integer.MAX_VALUE;
        for (int i17 = 0; i17 < dVar.f9805a.length; i17++) {
            for (int i18 = 0; i18 < 4; i18++) {
                n8.d dVar3 = dVarArr[length][i17][i18];
                if (dVar3 != null && (i10 = dVar3.f11325f) < i16) {
                    i14 = i17;
                    i15 = i18;
                    i16 = i10;
                }
            }
        }
        if (i14 >= 0) {
            return new v3.f(this, bVar, dVarArr[length][i14][i15]);
        }
        throw new i8.b(g.b.A("Internal error: failed to encode \"", str, "\""));
    }

    @Override // kf.e
    public void f(ba.h hVar) {
        int i10 = this.f10289b - 1;
        this.f10289b = i10;
        boolean z = this.f10290c;
        StringBuilder sb2 = (StringBuilder) this.f10291d;
        if (z) {
            sb2.append(" />\n");
        } else {
            for (int i11 = 0; i11 < i10; i11++) {
                ((StringBuilder) this.f10291d).append("\t");
            }
            sb2.append("</");
            String str = hVar.f2696b;
            if (str != null) {
                String strZ = ((d) this.f10292e).z(str);
                if (strZ == null) {
                    strZ = hVar.f2696b;
                }
                sb2.append(strZ);
                sb2.append(":");
            }
            sb2.append(hVar.f2697c);
            sb2.append(">\n");
        }
        this.f10290c = false;
    }

    @Override // kf.e
    public void g(ba.h hVar) {
        d dVar = (d) this.f10292e;
        dVar.getClass();
        c cVar = new c(hVar.f2696b, hVar.f2697c);
        ((ArrayList) dVar.f10286b).add(cVar);
        ((ArrayList) dVar.f10287c).add(cVar);
    }

    @Override // kf.e
    public void i(ba.h hVar) {
        d dVar = (d) this.f10292e;
        dVar.getClass();
        c cVar = new c(hVar.f2696b, hVar.f2697c);
        ((ArrayList) dVar.f10286b).remove(cVar);
        ((ArrayList) dVar.f10287c).remove(cVar);
    }

    @Override // kf.e
    public void m(v3.f fVar) throws IOException {
        List<c> listEmptyList;
        String string;
        boolean z = this.f10290c;
        StringBuilder sb2 = (StringBuilder) this.f10291d;
        if (z) {
            sb2.append(">\n");
        }
        int i10 = this.f10289b;
        this.f10289b = i10 + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            ((StringBuilder) this.f10291d).append("\t");
        }
        sb2.append('<');
        String str = (String) fVar.f16474b;
        d dVar = (d) this.f10292e;
        if (str != null) {
            String strZ = dVar.z(str);
            if (strZ != null) {
                sb2.append(strZ);
                sb2.append(":");
            } else {
                sb2.append((String) fVar.f16474b);
                sb2.append(":");
            }
        }
        sb2.append((String) fVar.f16475c);
        ArrayList arrayList = (ArrayList) dVar.f10287c;
        if (arrayList.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(arrayList);
            arrayList.clear();
            listEmptyList = arrayList2;
        }
        if (!listEmptyList.isEmpty()) {
            for (c cVar : listEmptyList) {
                sb2.append(" xmlns:");
                sb2.append(cVar.f10283a);
                sb2.append("=\"");
                sb2.append(cVar.f10284b);
                sb2.append("\"");
            }
        }
        this.f10290c = true;
        for (b bVar : (b[]) ((y) fVar.f16476d).f10629b) {
            sb2.append(" ");
            String strZ2 = dVar.z((String) bVar.f10278b);
            if (strZ2 == null) {
                strZ2 = (String) bVar.f10278b;
            }
            if (strZ2 != null && !strZ2.isEmpty()) {
                sb2.append(strZ2);
                sb2.append(':');
            }
            String str2 = (String) bVar.f10282f;
            rf.a aVar = g.f13768a;
            aVar.getClass();
            if (str2 == null) {
                string = null;
            } else {
                try {
                    StringWriter stringWriter = new StringWriter(str2.length() * 2);
                    int length = str2.length();
                    int length2 = 0;
                    while (length2 < length) {
                        int iA = aVar.a(length2, stringWriter, str2);
                        if (iA == 0) {
                            char[] chars = Character.toChars(Character.codePointAt(str2, length2));
                            stringWriter.write(chars);
                            length2 += chars.length;
                        } else {
                            for (int i12 = 0; i12 < iA; i12++) {
                                length2 += Character.charCount(Character.codePointAt(str2, length2));
                            }
                        }
                    }
                    string = stringWriter.toString();
                } catch (IOException e7) {
                    throw new RuntimeException(e7);
                }
            }
            sb2.append((String) bVar.f10279c);
            sb2.append('=');
            sb2.append('\"');
            sb2.append(string);
            sb2.append('\"');
        }
    }

    @Override // ha.wd
    public void t() {
        int i10 = ActivityStart.G;
        ((ActivityStart) this.f10292e).x((ResolveInfo) this.f10291d, this.f10290c, this.f10289b);
    }

    public f(String str, Charset charset, boolean z, int i10) {
        this.f10288a = 2;
        this.f10291d = str;
        this.f10290c = z;
        this.f10292e = new j8.d(str, charset);
        this.f10289b = i10;
    }

    public f(ActivityStart activityStart, ResolveInfo resolveInfo, boolean z, int i10) {
        this.f10288a = 3;
        this.f10292e = activityStart;
        this.f10291d = resolveInfo;
        this.f10290c = z;
        this.f10289b = i10;
    }

    public f(SideSheetBehavior sideSheetBehavior) {
        this.f10288a = 1;
        this.f10292e = sideSheetBehavior;
        this.f10291d = new db(9, this);
    }

    public f(BottomSheetBehavior bottomSheetBehavior) {
        this.f10288a = 4;
        this.f10292e = bottomSheetBehavior;
        this.f10291d = new h(19, this);
    }

    @Override // ha.wd
    public void D() {
    }
}
