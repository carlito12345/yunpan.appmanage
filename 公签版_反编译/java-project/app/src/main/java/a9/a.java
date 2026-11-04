package a9;

import android.content.res.TypedArray;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class a implements vc.j, wb.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f470a;

    /* renamed from: b, reason: collision with root package name */
    public int f471b;

    /* renamed from: c, reason: collision with root package name */
    public int f472c;

    /* renamed from: d, reason: collision with root package name */
    public Object f473d;

    /* renamed from: e, reason: collision with root package name */
    public Object f474e;

    public a(int i10, int i11) {
        this.f470a = i11;
        switch (i11) {
            case 1:
                this.f473d = new f3.t[i10];
                this.f472c = 0;
                break;
            case 7:
                this.f472c = -1;
                this.f471b = i10;
                break;
            default:
                this.f473d = new byte[4];
                this.f474e = new byte[i10];
                this.f471b = 0;
                this.f472c = 0;
                break;
        }
    }

    public static a b(byte[][] bArr) {
        int length = bArr.length * 4;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        a aVar = new a(length, 0);
        for (byte[] bArr3 : bArr) {
            aVar.p(bArr3.length, bArr3);
        }
        return aVar;
    }

    @Override // vc.j
    public int c(int i10, byte[] bArr) {
        rd.a.f(this.f471b, bArr, i10);
        System.arraycopy((byte[]) this.f473d, 0, bArr, i10 + 4, 16);
        rd.a.e(this.f472c, bArr, i10 + 20);
        int[] iArr = (int[]) this.f474e;
        rd.a.e(iArr.length, bArr, i10 + 22);
        int i11 = i10 + 24;
        for (int i12 : iArr) {
            rd.a.e(i12, bArr, i11);
            i11 += 2;
        }
        return i11 - i10;
    }

    public int d() {
        byte[] bArr = (byte[]) this.f474e;
        int i10 = this.f472c;
        this.f472c = i10 + 1;
        return bArr[i10] & 255;
    }

    public void e(int i10, byte[] bArr) {
        System.arraycopy((byte[]) this.f474e, this.f472c, bArr, 0, i10);
        this.f472c += i10;
    }

    public byte[][] f(int i10, String str) throws n {
        byte[][] bArr = new byte[i10][];
        for (int i11 = 0; i11 < i10; i11++) {
            int iG = g();
            if (h() < iG) {
                throw new n(str);
            }
            byte[] bArr2 = new byte[iG];
            bArr[i11] = bArr2;
            e(iG, bArr2);
        }
        return bArr;
    }

    public int g() {
        return ((k() << 16) & (-65536)) | (k() & 65535);
    }

    public int h() {
        return this.f471b - this.f472c;
    }

    @Override // wb.j
    public boolean hasNext() {
        int i10 = this.f472c;
        return i10 >= 0 && i10 < ((wb.n) this.f474e).f17821g.size();
    }

    public byte[] i() {
        int iG = g();
        if (iG < 0 || iG > 8192) {
            iG = 8192;
        }
        byte[] bArr = new byte[iG];
        e(iG, bArr);
        return bArr;
    }

    public byte[] j() {
        int iG = (g() + 7) / 8;
        byte[] bArr = new byte[iG];
        e(iG, bArr);
        if ((bArr[0] & 128) == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[iG + 1];
        bArr2[0] = 0;
        System.arraycopy(bArr, 0, bArr2, 1, iG);
        return bArr2;
    }

    public int k() {
        return ((d() << 8) & 65280) | (d() & 255);
    }

    public byte[] l() {
        int iG = g();
        if (iG < 0 || iG > 262144) {
            iG = 262144;
        }
        byte[] bArr = new byte[iG];
        e(iG, bArr);
        return bArr;
    }

    public long m() {
        return (((((d() << 8) & 65280) | (d() & 255)) << 16) & (-65536)) | (((65280 & (d() << 8)) | (d() & 255)) & 65535);
    }

    public void n(byte b10) {
        byte[] bArr = (byte[]) this.f474e;
        int i10 = this.f471b;
        this.f471b = i10 + 1;
        bArr[i10] = b10;
    }

    @Override // wb.j
    public wb.h next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        wb.n nVar = (wb.n) this.f474e;
        wb.k kVar = (wb.k) nVar.f17821g.get(this.f472c);
        int i10 = kVar.f17807d;
        wb.h hVar = (wb.h) this.f473d;
        hVar.f17794a = i10;
        hVar.f17797d = kVar.f17804a;
        hVar.f17798e = kVar.f17805b;
        List listEmptyList = kVar.f17806c;
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        hVar.f17799f = listEmptyList;
        int i11 = this.f472c;
        hVar.f17795b = i11 <= 0 || ((wb.k) nVar.f17821g.get(i11 - 1)).f17807d != kVar.f17807d;
        hVar.f17796c = this.f472c + 1 >= nVar.f17821g.size() || ((wb.k) nVar.f17821g.get(this.f472c + 1)).f17807d != kVar.f17807d;
        hVar.f17800g = kVar.a(nVar.f17818d);
        this.f472c++;
        return hVar;
    }

    public void o(int i10) {
        byte[] bArr = (byte[]) this.f473d;
        bArr[0] = (byte) (i10 >>> 24);
        bArr[1] = (byte) (i10 >>> 16);
        bArr[2] = (byte) (i10 >>> 8);
        bArr[3] = (byte) i10;
        System.arraycopy(bArr, 0, (byte[]) this.f474e, this.f471b, 4);
        this.f471b += 4;
    }

    public void p(int i10, byte[] bArr) {
        o(i10);
        System.arraycopy(bArr, 0, (byte[]) this.f474e, this.f471b, i10);
        this.f471b += i10;
    }

    public void q() {
        this.f472c = 0;
    }

    public void r(int i10) {
        this.f471b += i10;
    }

    @Override // wb.j
    public void reset() {
        switch (this.f470a) {
            case 0:
                this.f471b = 0;
                this.f472c = 0;
                break;
            default:
                this.f472c = this.f471b;
                break;
        }
    }

    public String s(mf.h hVar, Locale locale) {
        ab.a aVar = (ab.a) this.f474e;
        return aVar != null ? aVar.f(hVar, locale) : "null";
    }

    @Override // vc.j
    public int size() {
        return (((int[]) this.f474e).length * 2) + 24;
    }

    public String toString() {
        switch (this.f470a) {
            case 6:
                return "ResourceEntry{size=" + this.f471b + ", flags=" + this.f472c + ", key='" + ((String) this.f473d) + "', value=" + ((ab.a) this.f474e) + '}';
            default:
                return super.toString();
        }
    }

    public a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i10, int i11) {
        this.f470a = 2;
        this.f473d = byteBuffer;
        this.f474e = byteBuffer2;
        this.f471b = i10;
        this.f472c = i11;
    }

    public a(byte[] bArr) {
        this.f470a = 0;
        this.f473d = new byte[4];
        this.f474e = bArr;
        this.f471b = 0;
        this.f472c = 0;
    }

    public a(int i10, byte[] bArr, int i11, int[] iArr) {
        this.f470a = 5;
        this.f471b = i10;
        this.f473d = bArr;
        this.f472c = i11;
        this.f474e = iArr;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(int i10, char c7) {
        this(20480, 0);
        this.f470a = i10;
        switch (i10) {
            case 6:
                break;
            default:
                break;
        }
    }

    public a(int i10, float[] fArr, float[] fArr2, int i11) {
        this.f470a = 3;
        this.f471b = i10;
        o.k(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
        this.f473d = fArr;
        this.f474e = fArr2;
        this.f472c = i11;
    }

    public a(a aVar) {
        this.f470a = 4;
        float[] fArr = (float[]) aVar.f473d;
        this.f471b = fArr.length / 3;
        this.f473d = u1.a.d(fArr);
        this.f474e = u1.a.d((float[]) aVar.f474e);
        int i10 = aVar.f472c;
        if (i10 == 1) {
            this.f472c = 5;
        } else if (i10 != 2) {
            this.f472c = 4;
        } else {
            this.f472c = 6;
        }
    }

    public a(wb.n nVar, int i10) {
        this.f470a = 9;
        this.f474e = nVar;
        this.f472c = i10;
        this.f471b = i10;
        this.f473d = new wb.h();
    }

    public a(q7.p pVar, s4.a aVar) {
        this.f470a = 8;
        this.f473d = new SparseArray();
        this.f474e = pVar;
        TypedArray typedArray = (TypedArray) aVar.f14294c;
        this.f471b = typedArray.getResourceId(28, 0);
        this.f472c = typedArray.getResourceId(52, 0);
    }
}
