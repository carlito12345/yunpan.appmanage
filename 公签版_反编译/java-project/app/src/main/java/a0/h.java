package a0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import u1.f0;
import ua.i8;

/* loaded from: classes.dex */
public final class h implements f3.c, w4.e, w1.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27a;

    /* renamed from: b, reason: collision with root package name */
    public int f28b;

    /* renamed from: c, reason: collision with root package name */
    public int f29c;

    /* renamed from: d, reason: collision with root package name */
    public Object f30d;

    public h(int i10) {
        this.f27a = i10;
        switch (i10) {
            case 1:
                this.f28b = 0;
                this.f29c = 100;
                break;
            case 8:
                this.f30d = new i8(6);
                this.f28b = 8000;
                this.f29c = 8000;
                break;
            default:
                int iHighestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
                this.f29c = iHighestOneBit - 1;
                this.f30d = new int[iHighestOneBit];
                break;
        }
    }

    @Override // f3.c
    public int b() {
        return this.f28b;
    }

    @Override // f3.c
    public int c() {
        return this.f29c;
    }

    @Override // w4.e
    public void d(w4.h hVar) {
        if (hVar.f17458a.f17471a == 3) {
            int i10 = ((x4.j) hVar.f17449e).f18126a;
            boolean[] zArr = (boolean[]) this.f30d;
            zArr[0] = zArr[0] && (this.f28b - this.f29c) + i10 == hVar.f17460c.f17466a;
        }
    }

    @Override // f3.c
    public int e() {
        int i10 = this.f28b;
        return i10 == -1 ? ((u1.q) this.f30d).F() : i10;
    }

    public void f(int i10) {
        int[] iArr = (int[]) this.f30d;
        int i11 = this.f28b;
        iArr[i11] = i10;
        int i12 = this.f29c & (i11 + 1);
        this.f28b = i12;
        if (i12 == 0) {
            int length = iArr.length;
            int i13 = length << 1;
            if (i13 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i13];
            je.i.e0(0, 0, iArr, iArr2, length);
            je.i.e0(length, 0, (int[]) this.f30d, iArr2, 0);
            this.f30d = iArr2;
            this.f28b = length;
            this.f29c = i13 - 1;
        }
    }

    public void g() {
        int i10;
        int i11 = this.f28b;
        if (i11 != 2) {
            if (i11 != 3 && i11 != 1) {
                this.f30d = null;
                return;
            }
            m mVar = (m) this.f30d;
            if (mVar == null || mVar.b() != Integer.MAX_VALUE) {
                this.f30d = new m(Integer.MAX_VALUE);
                return;
            }
            return;
        }
        if (this.f29c <= 0) {
            throw new IllegalArgumentException();
        }
        m mVar2 = (m) this.f30d;
        if (mVar2 != null) {
            synchronized (mVar2.f41c) {
                i10 = mVar2.f39a;
            }
            if (i10 == this.f29c) {
                return;
            }
        }
        this.f30d = new m(this.f29c);
    }

    public byte h(int i10, int i11) {
        return ((byte[][]) this.f30d)[i11][i10];
    }

    public int k(int i10) {
        if (i10 >= 0) {
            int i11 = this.f28b;
            int i12 = this.f29c;
            if (i10 < (i11 & i12)) {
                return ((int[]) this.f30d)[i10 & i12];
            }
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public byte[] l() {
        synchronized (((Object[]) this.f30d)) {
            try {
                if (this.f29c > 0) {
                    int i10 = 0;
                    while (true) {
                        Object[] objArr = (Object[]) this.f30d;
                        if (i10 >= objArr.length) {
                            break;
                        }
                        Object obj = objArr[i10];
                        if (obj != null) {
                            byte[] bArr = (byte[]) obj;
                            objArr[i10] = null;
                            this.f29c--;
                            return bArr;
                        }
                        i10++;
                    }
                }
                return new byte[this.f28b];
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int i10 = 0;
        Arrays.fill(bArr, (byte) 0);
        synchronized (((Object[]) this.f30d)) {
            try {
                if (this.f29c < ((Object[]) this.f30d).length) {
                    while (true) {
                        Object[] objArr = (Object[]) this.f30d;
                        if (i10 >= objArr.length) {
                            break;
                        }
                        if (objArr[i10] == null) {
                            objArr[i10] = bArr;
                            this.f29c++;
                            return;
                        }
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void n(int i10, int i11, int i12) {
        ((byte[][]) this.f30d)[i11][i10] = (byte) i12;
    }

    public String toString() {
        switch (this.f27a) {
            case 5:
                int i10 = this.f28b;
                int i11 = this.f29c;
                StringBuilder sb2 = new StringBuilder((i10 * 2 * i11) + 2);
                for (int i12 = 0; i12 < i11; i12++) {
                    byte[] bArr = ((byte[][]) this.f30d)[i12];
                    for (int i13 = 0; i13 < i10; i13++) {
                        byte b10 = bArr[i13];
                        if (b10 == 0) {
                            sb2.append(" 0");
                        } else if (b10 != 1) {
                            sb2.append("  ");
                        } else {
                            sb2.append(" 1");
                        }
                    }
                    sb2.append('\n');
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public h(int i10, int i11) {
        this.f27a = 5;
        this.f30d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11, i10);
        this.f28b = i10;
        this.f29c = i11;
    }

    public h(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f27a = 3;
        this.f30d = new ArrayList();
        this.f29c = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), i0.q.f8399h);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == 0) {
                this.f28b = typedArrayObtainStyledAttributes.getResourceId(index, this.f28b);
            } else if (index == 1) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f29c);
                this.f29c = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new i0.n().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // w4.e
    public void a(w4.q qVar) {
    }

    @Override // w4.e
    public void i(w4.r rVar) {
    }

    @Override // w4.e
    public void j(w4.i iVar) {
    }

    public h(boolean[] zArr, int i10, int i11) {
        this.f27a = 6;
        this.f30d = zArr;
        this.f28b = i10;
        this.f29c = i11;
    }

    public h(wc.a aVar) {
        this.f27a = 7;
        int i10 = aVar.f17843j0;
        this.f29c = 0;
        this.f30d = new Object[i10];
        this.f28b = aVar.f17839h0;
    }

    public h(int i10, int i11, SparseArray sparseArray) {
        this.f27a = 4;
        this.f28b = i10;
        this.f29c = i11;
        this.f30d = sparseArray;
    }

    public h(v1.d dVar, r1.p pVar) {
        this.f27a = 2;
        u1.q qVar = dVar.f16331c;
        this.f30d = qVar;
        qVar.O(12);
        int iF = qVar.F();
        if ("audio/raw".equals(pVar.f13523o)) {
            int iO = f0.o(pVar.I) * pVar.G;
            if (iF % iO != 0) {
                u1.a.p("Audio sample size mismatch. stsd sample size: " + iO + ", stsz sample size: " + iF);
                iF = iO;
            }
        }
        this.f28b = iF == 0 ? -1 : iF;
        this.f29c = qVar.F();
    }
}
