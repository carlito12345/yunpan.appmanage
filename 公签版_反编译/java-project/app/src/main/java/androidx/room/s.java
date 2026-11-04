package androidx.room;

import a2.g1;
import a2.u0;
import a2.w0;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.Xml;
import com.hjq.permissions.OnPermissionCallback;
import com.yunpan.appmanage.bean.PsBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivityStudy;
import fa.b0;
import ha.db;
import ha.v1;
import ha.wd;
import ha.y6;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.BreakIterator;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import l2.z;
import l5.y;
import okhttp3.Protocol;
import org.bouncycastle.crypto.hpke.HPKE;
import org.xmlpull.v1.XmlPullParserException;
import u1.d0;
import u1.f0;
import u7.a0;
import u7.d1;
import u7.h0;
import u7.j0;
import ua.s7;
import x9.x0;
import x9.y0;

/* loaded from: classes.dex */
public final class s implements wd, ob.a, l2.i, y6, OnPermissionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2425a;

    /* renamed from: b, reason: collision with root package name */
    public int f2426b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2427c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2428d;

    public /* synthetic */ s(da.g gVar, int i10, Object obj, int i11) {
        this.f2425a = i11;
        this.f2428d = gVar;
        this.f2426b = i10;
        this.f2427c = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f1, code lost:
    
        if (r3 == 1) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f3, code lost:
    
        if (r3 == 2) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f5, code lost:
    
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
    
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01fd, code lost:
    
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0200, code lost:
    
        r4 = new android.graphics.LinearGradient(r12, r13, r27, r26, (int[]) r0.f10286b, (float[]) r0.f10287c, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0215, code lost:
    
        r4 = new android.graphics.SweepGradient(r21, r25, (int[]) r0.f10286b, (float[]) r0.f10287c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0227, code lost:
    
        r6 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x022e, code lost:
    
        if (r22 <= 0.0f) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0233, code lost:
    
        if (r3 == 1) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0236, code lost:
    
        if (r3 == 2) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0238, code lost:
    
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x023b, code lost:
    
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023e, code lost:
    
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0240, code lost:
    
        r4 = new android.graphics.RadialGradient(r6, r25, r22, (int[]) r0.f10286b, (float[]) r0.f10287c, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0261, code lost:
    
        return new androidx.room.s(r4, (java.lang.Object) null, 0, 5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0269, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01cb, code lost:
    
        if (r9.size() <= 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01cd, code lost:
    
        r0 = new kf.d(r9, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d3, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d4, code lost:
    
        if (r0 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d8, code lost:
    
        if (r19 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01da, code lost:
    
        r0 = new kf.d(r7, r10, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e2, code lost:
    
        r0 = new kf.d(r7, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ea, code lost:
    
        if (r11 == 1) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ed, code lost:
    
        if (r11 == 2) goto L107;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static s c(Resources resources, int i10, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        int i11;
        int color;
        float f10;
        float f11;
        float f12;
        int i12 = 5;
        XmlResourceParser xml = resources.getXml(i10);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        name.getClass();
        Object obj = null;
        if (!name.equals("gradient")) {
            if (name.equals("selector")) {
                ColorStateList colorStateListB = o0.c.b(resources, xml, attributeSetAsAttributeSet, theme);
                return new s(obj, colorStateListB, colorStateListB.getDefaultColor(), i12);
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        String name2 = xml.getName();
        if (!name2.equals("gradient")) {
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        TypedArray typedArrayG = o0.b.g(resources, theme, attributeSetAsAttributeSet, l0.a.f10375d);
        float f13 = !o0.b.d(xml, "startX") ? 0.0f : typedArrayG.getFloat(8, 0.0f);
        float f14 = !o0.b.d(xml, "startY") ? 0.0f : typedArrayG.getFloat(9, 0.0f);
        float f15 = !o0.b.d(xml, "endX") ? 0.0f : typedArrayG.getFloat(10, 0.0f);
        float f16 = !o0.b.d(xml, "endY") ? 0.0f : typedArrayG.getFloat(11, 0.0f);
        float f17 = !o0.b.d(xml, "centerX") ? 0.0f : typedArrayG.getFloat(3, 0.0f);
        float f18 = !o0.b.d(xml, "centerY") ? 0.0f : typedArrayG.getFloat(4, 0.0f);
        int i13 = !o0.b.d(xml, "type") ? 0 : typedArrayG.getInt(2, 0);
        int color2 = !o0.b.d(xml, "startColor") ? 0 : typedArrayG.getColor(0, 0);
        boolean zD = o0.b.d(xml, "centerColor");
        int color3 = !o0.b.d(xml, "centerColor") ? 0 : typedArrayG.getColor(7, 0);
        if (o0.b.d(xml, "endColor")) {
            i11 = 0;
            color = typedArrayG.getColor(1, 0);
        } else {
            i11 = 0;
            color = 0;
        }
        if (o0.b.d(xml, "tileMode")) {
            i11 = typedArrayG.getInt(6, i11);
        }
        if (o0.b.d(xml, "gradientRadius")) {
            f10 = f17;
            f11 = typedArrayG.getFloat(5, 0.0f);
        } else {
            f10 = f17;
            f11 = 0.0f;
        }
        typedArrayG.recycle();
        int depth = xml.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        float f19 = f18;
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next2 = xml.next();
            float f20 = f16;
            if (next2 == 1) {
                f12 = f15;
                break;
            }
            int depth2 = xml.getDepth();
            f12 = f15;
            if (depth2 < depth && next2 == 3) {
                break;
            }
            if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                TypedArray typedArrayG2 = o0.b.g(resources, theme, attributeSetAsAttributeSet, l0.a.f10376e);
                boolean zHasValue = typedArrayG2.hasValue(0);
                boolean zHasValue2 = typedArrayG2.hasValue(1);
                if (!zHasValue || !zHasValue2) {
                    break;
                }
                int color4 = typedArrayG2.getColor(0, 0);
                float f21 = typedArrayG2.getFloat(1, 0.0f);
                typedArrayG2.recycle();
                arrayList2.add(Integer.valueOf(color4));
                arrayList.add(Float.valueOf(f21));
            }
            f16 = f20;
            f15 = f12;
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    public static void d(String str) {
        if (str.equalsIgnoreCase(":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i10 = 0;
        boolean z = false;
        while (i10 <= length) {
            char cCharAt = str.charAt(!z ? i10 : length);
            boolean z4 = cCharAt < ' ' || cCharAt == ' ';
            if (z) {
                if (!z4) {
                    break;
                } else {
                    length--;
                }
            } else if (z4) {
                i10++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i10, length + 1).toString().length() == 0) {
            return;
        }
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception unused) {
        }
    }

    public static s r(String str) {
        a9.o.i("The separator may not be the empty string.", str.length() != 0);
        if (str.length() == 1) {
            return new s(new y(17, new t7.b(str.charAt(0))));
        }
        return new s(new bd.c(str, 4));
    }

    private final /* synthetic */ void w() {
    }

    public static s z(String str) throws ProtocolException, NumberFormatException {
        Protocol protocol;
        int i10;
        String strSubstring;
        if (str.startsWith("HTTP/1.")) {
            i10 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                protocol = Protocol.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                protocol = Protocol.HTTP_1_1;
            }
        } else if (str.startsWith("ICY ")) {
            protocol = Protocol.HTTP_1_0;
            i10 = 4;
        } else {
            if (!str.startsWith("SOURCETABLE ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            protocol = Protocol.HTTP_1_1;
            i10 = 12;
        }
        int i11 = i10 + 3;
        if (str.length() < i11) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i12 = Integer.parseInt(str.substring(i10, i11));
            if (str.length() <= i11) {
                strSubstring = "";
            } else {
                if (str.charAt(i11) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i10 + 4);
            }
            return new s(protocol, i12, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public void A(Object obj, Object obj2) {
        int i10 = (this.f2426b + 1) * 2;
        Object[] objArr = (Object[]) this.f2427c;
        if (i10 > objArr.length) {
            this.f2427c = Arrays.copyOf(objArr, a0.f(objArr.length, i10));
        }
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 == null) {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
        Object[] objArr2 = (Object[]) this.f2427c;
        int i11 = this.f2426b;
        int i12 = i11 * 2;
        objArr2[i12] = obj;
        objArr2[i12 + 1] = obj2;
        this.f2426b = i11 + 1;
    }

    public void B(Set set) {
        if (set instanceof Collection) {
            int size = (set.size() + this.f2426b) * 2;
            Object[] objArr = (Object[]) this.f2427c;
            if (size > objArr.length) {
                this.f2427c = Arrays.copyOf(objArr, a0.f(objArr.length, size));
            }
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            A(entry.getKey(), entry.getValue());
        }
    }

    public yb.a C(int i10) {
        Object next;
        ArrayList arrayList = (ArrayList) this.f2428d;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((yb.a) next).f19109a == i10) {
                break;
            }
        }
        yb.a aVar = (yb.a) next;
        if (aVar != null) {
            arrayList.remove(aVar);
            arrayList.add(aVar);
        }
        return aVar;
    }

    @Override // ha.wd
    public void D() {
        switch (this.f2425a) {
            case 4:
                x0 x0Var = (x0) this.f2427c;
                x0Var.f18384b = !x0Var.f18384b;
                ((y0) this.f2428d).D(this.f2426b, x0Var);
                break;
            case 13:
                int i10 = ActivityAccessibility.G;
                ((ActivityAccessibility) this.f2428d).x(this.f2426b);
                break;
            case 17:
                for (String str : ((PsBean) this.f2427c).pid.split(",")) {
                    System.out.getClass();
                    b0.f5652a.g("kill " + str, null);
                }
                ((ActivityPs) this.f2428d).D.C(this.f2426b);
                break;
        }
    }

    public List E(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itK = ((t7.m) this.f2428d).k(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (true) {
            t7.l lVar = (t7.l) itK;
            if (!lVar.hasNext()) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add((String) lVar.next());
        }
    }

    public void F(byte[] bArr, int i10, int i11) {
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) this.f2428d;
        try {
            if (byteArrayOutputStream.size() + i11 > 4096) {
                e(0);
            }
            byteArrayOutputStream.write(bArr, i10, i11);
        } catch (IllegalStateException e7) {
            throw new RuntimeException(e7);
        }
    }

    public void G(d4.b bVar) {
        bVar.d("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        bVar.d("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '4135cdf74409428db4bd0ef6688b7463')");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    @Override // ob.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(int i10, int i11) {
        int iMax;
        int i12;
        int iPreceding;
        mb.h hVar = (mb.h) this.f2428d;
        if (i11 <= 0 || Character.isWhitespace(hVar.charAt(i11 - 1))) {
            iMax = i11;
        } else {
            BreakIterator breakIterator = (BreakIterator) this.f2427c;
            if (breakIterator.isBoundary(i11) || (iPreceding = breakIterator.preceding(i11)) == -1 || (iMax = Math.max(i10, Math.min(i11, iPreceding))) <= i10) {
            }
        }
        if (iMax == i11 && i11 > i10) {
            int i13 = i11 - 1;
            if (!Character.isWhitespace(hVar.charAt(i13))) {
                if (i11 == this.f2426b) {
                    return i11;
                }
                while (i13 > i10) {
                    if (hVar.charAt(i13) == '.' && i13 - 1 >= i10 && !Character.isDigit(hVar.charAt(i12))) {
                        return i13 + 1;
                    }
                    i13--;
                }
                return i11;
            }
        }
        return iMax;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0190  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public d1 b(boolean z) {
        short[] sArr;
        char c7;
        byte[] bArr;
        boolean z4;
        d1 d1Var;
        h0 h0Var;
        h0 h0Var2;
        if (z && (h0Var2 = (h0) this.f2428d) != null) {
            throw h0Var2.a();
        }
        int i10 = this.f2426b;
        Object[] objArrCopyOf = (Object[]) this.f2427c;
        if (i10 == 0) {
            d1Var = d1.f15447g;
        } else {
            int i11 = 1;
            Object h0Var3 = null;
            if (i10 == 1) {
                Objects.requireNonNull(objArrCopyOf[0]);
                Objects.requireNonNull(objArrCopyOf[1]);
                d1Var = new d1(null, objArrCopyOf, 1);
            } else {
                a9.o.p(i10, objArrCopyOf.length >> 1);
                int i12 = j0.i(i10);
                if (i10 == 1) {
                    Objects.requireNonNull(objArrCopyOf[0]);
                    Objects.requireNonNull(objArrCopyOf[1]);
                } else {
                    int i13 = i12 - 1;
                    char c10 = 65535;
                    if (i12 <= 128) {
                        bArr = new byte[i12];
                        Arrays.fill(bArr, (byte) -1);
                        int i14 = 0;
                        int i15 = 0;
                        while (i14 < i10) {
                            int i16 = i14 * 2;
                            int i17 = i15 * 2;
                            Object obj = objArrCopyOf[i16];
                            Objects.requireNonNull(obj);
                            Object obj2 = objArrCopyOf[i16 ^ i11];
                            Objects.requireNonNull(obj2);
                            int iP = u7.q.p(obj.hashCode());
                            while (true) {
                                int i18 = iP & i13;
                                int i19 = bArr[i18] & 255;
                                if (i19 == 255) {
                                    bArr[i18] = (byte) i17;
                                    if (i15 < i14) {
                                        objArrCopyOf[i17] = obj;
                                        objArrCopyOf[i17 ^ 1] = obj2;
                                    }
                                    i15++;
                                } else {
                                    if (obj.equals(objArrCopyOf[i19])) {
                                        int i20 = i19 ^ 1;
                                        Object obj3 = objArrCopyOf[i20];
                                        Objects.requireNonNull(obj3);
                                        h0 h0Var4 = new h0(obj, obj2, obj3);
                                        objArrCopyOf[i20] = obj2;
                                        h0Var3 = h0Var4;
                                        break;
                                    }
                                    iP = i18 + 1;
                                }
                            }
                            i14++;
                            i11 = 1;
                        }
                        if (i15 != i10) {
                            sArr = new Object[]{bArr, Integer.valueOf(i15), h0Var3};
                            h0Var3 = sArr;
                        }
                        h0Var3 = bArr;
                    } else {
                        if (i12 <= 32768) {
                            sArr = new short[i12];
                            Arrays.fill(sArr, (short) -1);
                            int i21 = 0;
                            for (int i22 = 0; i22 < i10; i22++) {
                                int i23 = i22 * 2;
                                int i24 = i21 * 2;
                                Object obj4 = objArrCopyOf[i23];
                                Objects.requireNonNull(obj4);
                                Object obj5 = objArrCopyOf[i23 ^ 1];
                                Objects.requireNonNull(obj5);
                                int iP2 = u7.q.p(obj4.hashCode());
                                while (true) {
                                    int i25 = iP2 & i13;
                                    int i26 = sArr[i25] & HPKE.aead_EXPORT_ONLY;
                                    if (i26 == 65535) {
                                        sArr[i25] = (short) i24;
                                        if (i21 < i22) {
                                            objArrCopyOf[i24] = obj4;
                                            objArrCopyOf[i24 ^ 1] = obj5;
                                        }
                                        i21++;
                                    } else {
                                        if (obj4.equals(objArrCopyOf[i26])) {
                                            int i27 = i26 ^ 1;
                                            Object obj6 = objArrCopyOf[i27];
                                            Objects.requireNonNull(obj6);
                                            h0Var3 = new h0(obj4, obj5, obj6);
                                            objArrCopyOf[i27] = obj5;
                                            break;
                                        }
                                        iP2 = i25 + 1;
                                    }
                                }
                            }
                            if (i21 != i10) {
                                bArr = new Object[]{sArr, Integer.valueOf(i21), h0Var3};
                                h0Var3 = bArr;
                            }
                        } else {
                            sArr = new int[i12];
                            Arrays.fill((int[]) sArr, -1);
                            int i28 = 0;
                            int i29 = 0;
                            while (i28 < i10) {
                                int i30 = i28 * 2;
                                int i31 = i29 * 2;
                                Object obj7 = objArrCopyOf[i30];
                                Objects.requireNonNull(obj7);
                                Object obj8 = objArrCopyOf[i30 ^ 1];
                                Objects.requireNonNull(obj8);
                                int iP3 = u7.q.p(obj7.hashCode());
                                while (true) {
                                    int i32 = iP3 & i13;
                                    ?? r15 = sArr[i32];
                                    if (r15 == c10) {
                                        sArr[i32] = i31;
                                        if (i29 < i28) {
                                            objArrCopyOf[i31] = obj7;
                                            objArrCopyOf[i31 ^ 1] = obj8;
                                        }
                                        i29++;
                                    } else {
                                        if (obj7.equals(objArrCopyOf[r15])) {
                                            int i33 = r15 ^ 1;
                                            Object obj9 = objArrCopyOf[i33];
                                            Objects.requireNonNull(obj9);
                                            h0Var3 = new h0(obj7, obj8, obj9);
                                            objArrCopyOf[i33] = obj8;
                                            break;
                                        }
                                        iP3 = i32 + 1;
                                        c10 = 65535;
                                    }
                                }
                                i28++;
                                c10 = 65535;
                            }
                            if (i29 != i10) {
                                c7 = 2;
                                h0Var3 = new Object[]{sArr, Integer.valueOf(i29), h0Var3};
                                z4 = h0Var3 instanceof Object[];
                                Object obj10 = h0Var3;
                                if (z4) {
                                    Object[] objArr = (Object[]) h0Var3;
                                    this.f2428d = (h0) objArr[c7];
                                    Object obj11 = objArr[0];
                                    int iIntValue = ((Integer) objArr[1]).intValue();
                                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue * 2);
                                    obj10 = obj11;
                                    i10 = iIntValue;
                                }
                                d1Var = new d1(obj10, objArrCopyOf, i10);
                            }
                        }
                        h0Var3 = sArr;
                    }
                }
                c7 = 2;
                z4 = h0Var3 instanceof Object[];
                Object obj102 = h0Var3;
                if (z4) {
                }
                d1Var = new d1(obj102, objArrCopyOf, i10);
            }
        }
        if (!z || (h0Var = (h0) this.f2428d) == null) {
            return d1Var;
        }
        throw h0Var.a();
    }

    public void e(int i10) throws IllegalStateException {
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) this.f2428d;
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length - i10;
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 16;
            ((Mac) this.f2427c).update(byteArray, i11, i12 <= length ? 16 : length - i11);
            i11 = i12;
        }
        byteArrayOutputStream.reset();
    }

    public long f(l2.l lVar) {
        long j10;
        dd.c cVar;
        l2.t tVar;
        boolean zA;
        int iM;
        while (true) {
            long jD = lVar.d();
            j10 = lVar.f10498c;
            long j11 = j10 - 6;
            cVar = (dd.c) this.f2428d;
            tVar = (l2.t) this.f2427c;
            if (jD >= j11) {
                break;
            }
            long jD2 = lVar.d();
            u1.q qVar = new u1.q(17);
            lVar.c(qVar.f15266a, 0, 2, false);
            char cH = qVar.h(0, ByteOrder.BIG_ENDIAN);
            int i10 = this.f2426b;
            if (cH != i10) {
                lVar.f10501f = 0;
                lVar.k((int) (jD2 - lVar.f10499d), false);
                zA = false;
            } else {
                byte[] bArr = qVar.f15266a;
                int i11 = 0;
                while (i11 < 15 && (iM = lVar.m(2 + i11, 15 - i11, bArr)) != -1) {
                    i11 += iM;
                }
                qVar.N(i11 + 2);
                lVar.f10501f = 0;
                lVar.k((int) (jD2 - lVar.f10499d), false);
                zA = l2.b.a(qVar, tVar, i10, cVar);
            }
            if (zA) {
                break;
            }
            lVar.k(1, false);
        }
        if (lVar.d() < j10 - 6) {
            return cVar.f4591b;
        }
        lVar.k((int) (j10 - lVar.d()), false);
        return tVar.f10526j;
    }

    public Object g(int i10) {
        SparseArray sparseArray;
        if (this.f2426b == -1) {
            this.f2426b = 0;
        }
        while (true) {
            int i11 = this.f2426b;
            sparseArray = (SparseArray) this.f2427c;
            if (i11 <= 0 || i10 >= sparseArray.keyAt(i11)) {
                break;
            }
            this.f2426b--;
        }
        while (this.f2426b < sparseArray.size() - 1 && i10 >= sparseArray.keyAt(this.f2426b + 1)) {
            this.f2426b++;
        }
        return sparseArray.valueAt(this.f2426b);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7  */
    @Override // l2.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public l2.h h(l2.l lVar, long j10) {
        switch (this.f2425a) {
            case 7:
                long j11 = lVar.f10499d;
                long jF = f(lVar);
                long jD = lVar.d();
                lVar.k(Math.max(6, ((l2.t) this.f2427c).f10519c), false);
                long jF2 = f(lVar);
                return (jF > j10 || jF2 <= j10) ? jF2 <= j10 ? new l2.h(-2, jF2, lVar.d()) : new l2.h(-1, jF, j11) : new l2.h(0, -9223372036854775807L, jD);
            default:
                long j12 = lVar.f10499d;
                int iMin = (int) Math.min(112800, lVar.f10498c - j12);
                u1.q qVar = (u1.q) this.f2428d;
                qVar.L(iMin);
                lVar.c(qVar.f15266a, 0, iMin, false);
                int i10 = qVar.f15268c;
                long j13 = -1;
                long j14 = -1;
                long j15 = -9223372036854775807L;
                while (qVar.a() >= 188) {
                    byte[] bArr = qVar.f15266a;
                    int i11 = qVar.f15267b;
                    while (i11 < i10 && bArr[i11] != 71) {
                        i11++;
                    }
                    int i12 = i11 + 188;
                    if (i12 > i10) {
                        return j15 == -9223372036854775807L ? new l2.h(-2, j15, j12 + j13) : l2.h.f10465d;
                    }
                    long jY = com.bumptech.glide.d.Y(qVar, i11, this.f2426b);
                    if (jY != -9223372036854775807L) {
                        long jB = ((d0) this.f2427c).b(jY);
                        if (jB > j10) {
                            return j15 == -9223372036854775807L ? new l2.h(-1, jB, j12) : new l2.h(0, -9223372036854775807L, j12 + j14);
                        }
                        if (jB + 100000 > j10) {
                            return new l2.h(0, -9223372036854775807L, j12 + i11);
                        }
                        j14 = i11;
                        j15 = jB;
                    }
                    qVar.O(i12);
                    j13 = i12;
                }
                if (j15 == -9223372036854775807L) {
                }
        }
    }

    @Override // l2.i
    public void i() {
        switch (this.f2425a) {
            case 7:
                break;
            default:
                byte[] bArr = f0.f15207b;
                u1.q qVar = (u1.q) this.f2428d;
                qVar.getClass();
                qVar.M(bArr.length, bArr);
                break;
        }
    }

    public List j() {
        ArrayList arrayList = (ArrayList) this.f2428d;
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public List k() {
        List list = (List) this.f2427c;
        return list == null ? Collections.emptyList() : list;
    }

    public int l() {
        int i10 = this.f2426b;
        if (i10 != 2) {
            return i10 != 3 ? 0 : 512;
        }
        return 2048;
    }

    public Long m(wh.m mVar) {
        try {
            return Long.valueOf(((wh.k) this.f2427c).b(mVar));
        } catch (sh.a e7) {
            if (this.f2426b > 0) {
                return null;
            }
            throw e7;
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        switch (this.f2425a) {
            case 14:
                if (z) {
                    c6.g gVar = (c6.g) this.f2427c;
                    int i10 = this.f2426b;
                    ((AppBean) gVar.t(i10)).name = str;
                    gVar.e(i10);
                    ((ActivityNezhaWallpaper) this.f2428d).M.l(i10).g().m("appName", str);
                    break;
                }
                break;
            case 15:
                if (z) {
                    c6.g gVar2 = (c6.g) this.f2427c;
                    int i11 = this.f2426b;
                    ((AppBean) gVar2.t(i11)).name = str;
                    gVar2.e(i11);
                    ((ActivityNezhaWallpaperL) this.f2428d).M.l(i11).g().m("appName", str);
                    break;
                }
                break;
            default:
                if (z) {
                    c6.g gVar3 = (c6.g) this.f2427c;
                    int i12 = this.f2426b;
                    ((AppBean) gVar3.t(i12)).name = str;
                    gVar3.e(i12);
                    ((ActivityNezhaWallpaperX) this.f2428d).I.l(i12).g().m("name", str);
                    break;
                }
                break;
        }
    }

    public void o(byte[] bArr) throws InvalidKeyException {
        try {
            ((Mac) this.f2427c).init(new SecretKeySpec(bArr, "HmacSHA1"));
        } catch (InvalidKeyException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        int i10 = 0;
        if (list.isEmpty()) {
            com.yunpan.appmanage.util.a0.u("需授予查看应用使用情况权限，简称使用统计权限");
            return;
        }
        ArrayList arrayList = (ArrayList) this.f2427c;
        int i11 = this.f2426b;
        String strSubstring = ((String) arrayList.get(i11)).substring(2);
        int i12 = ActivityStudy.I;
        ActivityStudy activityStudy = (ActivityStudy) this.f2428d;
        activityStudy.getClass();
        new mc.c(i10, new v1(activityStudy, strSubstring, i11, 13)).d(rc.f.f13757b).a(fc.b.a()).b(new ua.y6(activityStudy, i10));
    }

    public boolean p() {
        ColorStateList colorStateList;
        return ((Shader) this.f2427c) == null && (colorStateList = (ColorStateList) this.f2428d) != null && colorStateList.isStateful();
    }

    public boolean q() {
        return this.f2426b == 0;
    }

    public void s(c4.a aVar) {
        d4.b bVar = (d4.b) aVar;
        Cursor cursorS = bVar.s("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (cursorS.moveToFirst()) {
                if (cursorS.getInt(0) == 0) {
                    z = true;
                }
            }
            qf.c.g(cursorS, null);
            q qVar = (q) this.f2428d;
            qVar.createAllTables(aVar);
            if (!z) {
                r rVarOnValidateSchema = qVar.onValidateSchema(aVar);
                if (!rVarOnValidateSchema.f2423a) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + rVarOnValidateSchema.f2424b);
                }
            }
            G(bVar);
            qVar.onCreate(aVar);
        } finally {
        }
    }

    @Override // ha.wd
    public void t() {
        int i10 = 0;
        switch (this.f2425a) {
            case 4:
                break;
            case 13:
                b0.f5652a.getClass();
                if (!w0.O()) {
                    com.yunpan.appmanage.util.a0.u("需要连adb方可强制停止第三方应用");
                    break;
                } else {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    ExecutorService executorService = com.yunpan.appmanage.util.j.f4033a.f4048g0;
                    x9.b bVar = (x9.b) this.f2427c;
                    executorService.submit(new db(24, bVar));
                    bVar.f18202g = false;
                    ((ActivityAccessibility) this.f2428d).D.e(this.f2426b);
                    break;
                }
            case 17:
                b0.f5652a.g(g.b.l(((PsBean) this.f2427c).packageName, "'", new StringBuilder("am force-stop '")), new ha.o(this.f2426b, 16, this));
                break;
            default:
                new mc.c(i10, new v1(this, (c6.g) this.f2427c, this.f2426b, 15)).d(rc.f.f13757b).a(fc.b.a()).b(new s7(i10, this));
                break;
        }
    }

    public String toString() {
        switch (this.f2425a) {
            case 11:
                StringBuilder sb2 = new StringBuilder();
                if (((Protocol) this.f2427c) == Protocol.HTTP_1_0) {
                    sb2.append("HTTP/1.0");
                } else {
                    sb2.append("HTTP/1.1");
                }
                sb2.append(' ');
                sb2.append(this.f2426b);
                sb2.append(' ');
                sb2.append((String) this.f2428d);
                return sb2.toString();
            case 21:
                return ((wh.k) this.f2427c).toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void v(c4.a aVar) {
        boolean z;
        d4.b bVar = (d4.b) aVar;
        Cursor cursorS = bVar.s("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            if (cursorS.moveToFirst()) {
                z = cursorS.getInt(0) != 0;
            }
            qf.c.g(cursorS, null);
            q qVar = (q) this.f2428d;
            if (z) {
                Cursor cursorX = bVar.x(new g1("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    String string = cursorX.moveToFirst() ? cursorX.getString(0) : null;
                    qf.c.g(cursorX, null);
                    if (!"4135cdf74409428db4bd0ef6688b7463".equals(string) && !"5dfd75703dd2d63fe7c0fd9a51609713".equals(string)) {
                        throw new IllegalStateException(da.b.c("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 4135cdf74409428db4bd0ef6688b7463, found: ", string));
                    }
                } finally {
                }
            } else {
                r rVarOnValidateSchema = qVar.onValidateSchema(aVar);
                if (!rVarOnValidateSchema.f2423a) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + rVarOnValidateSchema.f2424b);
                }
                qVar.onPostMigrate(aVar);
                G(bVar);
            }
            qVar.onOpen(aVar);
            this.f2427c = null;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x003f A[EDGE_INSN: B:61:0x003f->B:18:0x003f BREAK  A[LOOP:0: B:12:0x0029->B:64:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x(d4.b bVar, int i10, int i11) {
        Iterable iterable;
        TreeMap treeMap;
        boolean z;
        c cVar = (c) this.f2427c;
        q qVar = (q) this.f2428d;
        if (cVar != null) {
            o oVar = cVar.f2395b;
            oVar.getClass();
            if (i10 == i11) {
                iterable = je.r.f9870a;
            } else {
                boolean z4 = i11 > i10;
                ArrayList arrayList = new ArrayList();
                int iIntValue = i10;
                do {
                    if (z4) {
                        if (iIntValue >= i11) {
                            iterable = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) oVar.f2422a.get(Integer.valueOf(iIntValue));
                        if (treeMap == null) {
                            break;
                        }
                        for (Integer num : z4 ? treeMap.descendingKeySet() : treeMap.keySet()) {
                            if (z4) {
                                int i12 = iIntValue + 1;
                                ue.d.d(num, "targetVersion");
                                int iIntValue2 = num.intValue();
                                if (i12 <= iIntValue2 && iIntValue2 <= i11) {
                                    Object obj = treeMap.get(num);
                                    ue.d.b(obj);
                                    arrayList.add(obj);
                                    iIntValue = num.intValue();
                                    z = true;
                                    break;
                                }
                            } else {
                                ue.d.d(num, "targetVersion");
                                int iIntValue3 = num.intValue();
                                if (i11 <= iIntValue3 && iIntValue3 < iIntValue) {
                                    Object obj2 = treeMap.get(num);
                                    ue.d.b(obj2);
                                    arrayList.add(obj2);
                                    iIntValue = num.intValue();
                                    z = true;
                                    break;
                                    break;
                                }
                            }
                        }
                        z = false;
                    } else {
                        if (iIntValue <= i11) {
                            iterable = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) oVar.f2422a.get(Integer.valueOf(iIntValue));
                        if (treeMap == null) {
                        }
                    }
                } while (z);
                iterable = null;
            }
            if (iterable != null) {
                qVar.onPreMigrate(bVar);
                Iterator it = iterable.iterator();
                if (it.hasNext()) {
                    throw z.d(it);
                }
                r rVarOnValidateSchema = qVar.onValidateSchema(bVar);
                if (!rVarOnValidateSchema.f2423a) {
                    throw new IllegalStateException("Migration didn't properly handle: " + rVarOnValidateSchema.f2424b);
                }
                qVar.onPostMigrate(bVar);
                G(bVar);
                return;
            }
        }
        c cVar2 = (c) this.f2427c;
        if (cVar2 != null && cVar2.f2398e.contains(Integer.valueOf(i10))) {
            qVar.dropAllTables(bVar);
            qVar.createAllTables(bVar);
            return;
        }
        throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public /* synthetic */ s(da.g gVar, Object obj, int i10, int i11) {
        this.f2425a = i11;
        this.f2428d = gVar;
        this.f2427c = obj;
        this.f2426b = i10;
    }

    public /* synthetic */ s(Object obj, Object obj2, int i10, int i11) {
        this.f2425a = i11;
        this.f2427c = obj;
        this.f2428d = obj2;
        this.f2426b = i10;
    }

    public s(Protocol protocol, int i10, String str) {
        this.f2425a = 11;
        this.f2427c = protocol;
        this.f2426b = i10;
        this.f2428d = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s(c cVar, q qVar) {
        this(qVar.version, 0);
        this.f2425a = 0;
        ue.d.e(cVar, "configuration");
        this.f2427c = cVar;
        this.f2428d = qVar;
    }

    public s(mb.h hVar) {
        this.f2425a = 6;
        this.f2428d = hVar;
        mb.c cVar = new mb.c(hVar);
        BreakIterator lineInstance = BreakIterator.getLineInstance();
        this.f2427c = lineInstance;
        lineInstance.setText(cVar);
        this.f2426b = hVar.f11076c;
    }

    public s(int i10, char c7) throws NoSuchAlgorithmException {
        this.f2425a = i10;
        switch (i10) {
            case 22:
                this.f2426b = -1;
                return;
            case 23:
                this.f2427c = new a0.n();
                this.f2428d = new ArrayList();
                this.f2426b = 75;
                return;
            default:
                this.f2428d = new ByteArrayOutputStream(4096);
                try {
                    Mac mac = Mac.getInstance("HmacSHA1");
                    this.f2427c = mac;
                    this.f2426b = mac.getMacLength();
                    return;
                } catch (NoSuchAlgorithmException e7) {
                    throw new RuntimeException(e7);
                }
        }
    }

    private final void u() {
    }

    private final void y() {
    }

    public s(u0 u0Var) {
        this.f2425a = 2;
        this.f2427c = new SparseArray();
        this.f2428d = u0Var;
        this.f2426b = -1;
    }

    public s(l2.t tVar, int i10) {
        this.f2425a = 7;
        this.f2427c = tVar;
        this.f2426b = i10;
        this.f2428d = new dd.c(2, false);
    }

    public s(int i10, d0 d0Var) {
        this.f2425a = 8;
        this.f2426b = i10;
        this.f2427c = d0Var;
        this.f2428d = new u1.q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [uh.n] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, th.d] */
    public s(sh.d dVar, uh.a aVar) {
        this.f2425a = 21;
        th.e eVar = aVar.f16117e;
        if (eVar != null) {
            ?? r12 = (th.d) dVar.c(wh.n.f17927b);
            sh.o oVar = (sh.o) dVar.c(wh.n.f17926a);
            sh.e eVarQ = null;
            eVar = p000if.a.z(r12, eVar) ? null : eVar;
            p000if.a.z(oVar, null);
            if (eVar != null) {
                th.e eVar2 = eVar != null ? eVar : r12;
                if (eVar != null) {
                    if (dVar.d(wh.a.EPOCH_DAY)) {
                        eVar2.getClass();
                        eVarQ = sh.e.q(dVar);
                    } else if (eVar != th.e.f15102a || r12 != 0) {
                        for (wh.a aVar2 : wh.a.values()) {
                            if (aVar2.b() && dVar.d(aVar2)) {
                                throw new sh.a("Invalid override chronology for temporal: " + eVar + " " + dVar);
                            }
                        }
                    }
                }
                dVar = new uh.n(eVarQ, dVar, eVar2, oVar);
            }
        }
        this.f2427c = dVar;
        this.f2428d = aVar.f16115c;
    }

    public s(int i10, int i11) {
        this.f2425a = i11;
        switch (i11) {
            case 1:
                this.f2426b = 0;
                this.f2427c = new int[i10];
                this.f2428d = new int[i10];
                break;
            case 12:
                this.f2427c = new Object[i10 * 2];
                this.f2426b = 0;
                break;
            default:
                this.f2426b = i10;
                break;
        }
    }

    public s(t7.m mVar) {
        this.f2425a = 10;
        this.f2428d = mVar;
        this.f2427c = t7.c.f14828b;
        this.f2426b = Integer.MAX_VALUE;
    }

    public s(int i10, String str, int i11, ArrayList arrayList, byte[] bArr) {
        List listUnmodifiableList;
        this.f2425a = 9;
        this.f2426b = i11;
        if (arrayList == null) {
            listUnmodifiableList = Collections.emptyList();
        } else {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        this.f2427c = listUnmodifiableList;
        this.f2428d = bArr;
    }

    public s(a6.i iVar) {
        this.f2425a = 3;
        this.f2428d = b6.c.a(150, new a1.i(29, this));
        this.f2427c = iVar;
    }
}
