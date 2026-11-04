package bd;

import androidx.room.s;
import j$.nio.charset.StandardCharsets;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import t7.l;
import t7.m;
import u1.q;
import vc.j;

/* loaded from: classes.dex */
public class c implements j, j5.d, m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2778a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2779b;

    public /* synthetic */ c(String str, int i10) {
        this.f2778a = i10;
        this.f2779b = str;
    }

    public static c e(q qVar) {
        String str;
        qVar.P(2);
        int iB = qVar.B();
        int i10 = iB >> 1;
        int iB2 = ((qVar.B() >> 3) & 31) | ((iB & 1) << 5);
        if (i10 == 4 || i10 == 5 || i10 == 7 || i10 == 8) {
            str = "dvhe";
        } else if (i10 == 9) {
            str = "dvav";
        } else {
            if (i10 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sbM = g.b.m(str);
        sbM.append(i10 < 10 ? ".0" : ".");
        sbM.append(i10);
        sbM.append(iB2 < 10 ? ".0" : ".");
        sbM.append(iB2);
        return new c(sbM.toString(), 5);
    }

    public static CharSequence f(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    @Override // j5.d
    public File b() {
        return new File(this.f2779b);
    }

    @Override // vc.j
    public int c(int i10, byte[] bArr) {
        rd.a.e(3, bArr, i10);
        int i11 = i10 + 2;
        byte[] bytes = this.f2779b.getBytes(StandardCharsets.UTF_16LE);
        System.arraycopy(bytes, 0, bArr, i11, bytes.length);
        int length = i11 + bytes.length;
        rd.a.e(0L, bArr, length);
        return (length + 2) - i10;
    }

    public void d(StringBuilder sb2, Iterator it) {
        try {
            if (it.hasNext()) {
                sb2.append(f(it.next()));
                while (it.hasNext()) {
                    sb2.append((CharSequence) this.f2779b);
                    sb2.append(f(it.next()));
                }
            }
        } catch (IOException e7) {
            throw new AssertionError(e7);
        }
    }

    @Override // t7.m
    public Iterator k(s sVar, CharSequence charSequence) {
        return new l(this, sVar, charSequence, 1);
    }

    @Override // vc.j
    public int size() {
        return (this.f2779b.length() * 2) + 4;
    }

    public String toString() {
        switch (this.f2778a) {
            case 1:
                return this.f2779b;
            default:
                return super.toString();
        }
    }

    public c(String str) {
        this.f2778a = 3;
        str.getClass();
        this.f2779b = str;
    }
}
