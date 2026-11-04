package v2;

import j$.nio.charset.StandardCharsets;
import j3.f;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import r1.d0;
import u1.q;

/* loaded from: classes.dex */
public final class b extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16410b;

    @Override // nh.b
    public final d0 r(u2.a aVar, ByteBuffer byteBuffer) {
        switch (this.f16410b) {
            case 0:
                if (byteBuffer.get() == 116) {
                    f fVar = new f(byteBuffer.array(), byteBuffer.limit());
                    int i10 = 12;
                    fVar.o(12);
                    int iD = (fVar.d() + fVar.g(12)) - 4;
                    fVar.o(44);
                    fVar.p(fVar.g(12));
                    fVar.o(16);
                    ArrayList arrayList = new ArrayList();
                    while (fVar.d() < iD) {
                        fVar.o(48);
                        int iG = fVar.g(8);
                        fVar.o(4);
                        int iD2 = fVar.d() + fVar.g(i10);
                        String str = null;
                        String str2 = null;
                        while (fVar.d() < iD2) {
                            int iG2 = fVar.g(8);
                            int iG3 = fVar.g(8);
                            int iD3 = fVar.d() + iG3;
                            if (iG2 == 2) {
                                int iG4 = fVar.g(16);
                                fVar.o(8);
                                if (iG4 == 3) {
                                    while (fVar.d() < iD3) {
                                        int iG5 = fVar.g(8);
                                        Charset charset = StandardCharsets.US_ASCII;
                                        byte[] bArr = new byte[iG5];
                                        fVar.j(bArr, iG5);
                                        String str3 = new String(bArr, charset);
                                        int iG6 = fVar.g(8);
                                        for (int i11 = 0; i11 < iG6; i11++) {
                                            fVar.p(fVar.g(8));
                                        }
                                        str = str3;
                                    }
                                }
                            } else if (iG2 == 21) {
                                Charset charset2 = StandardCharsets.US_ASCII;
                                byte[] bArr2 = new byte[iG3];
                                fVar.j(bArr2, iG3);
                                str2 = new String(bArr2, charset2);
                            }
                            fVar.m(iD3 * 8);
                        }
                        fVar.m(iD2 * 8);
                        if (str != null && str2 != null) {
                            arrayList.add(new a(iG, str.concat(str2)));
                        }
                        i10 = 12;
                    }
                    if (!arrayList.isEmpty()) {
                        return new d0(arrayList);
                    }
                }
                return null;
            default:
                q qVar = new q(byteBuffer.array(), byteBuffer.limit());
                String strW = qVar.w();
                strW.getClass();
                String strW2 = qVar.w();
                strW2.getClass();
                return new d0(new w2.a(strW, strW2, qVar.v(), qVar.v(), Arrays.copyOfRange(qVar.f15266a, qVar.f15267b, qVar.f15268c)));
        }
    }
}
