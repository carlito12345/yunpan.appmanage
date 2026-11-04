package jg;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final h f9913a = new h();

    public static InputStream a(String str, InputStream inputStream, long j10, g gVar, byte[] bArr, int i10) throws IOException {
        u uVar;
        byte[] bArr2 = gVar.f9903a;
        u[] uVarArr = (u[]) u.class.getEnumConstants();
        int length = uVarArr.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                uVar = null;
                break;
            }
            uVar = uVarArr[i11];
            if (Arrays.equals(uVar.f9979a, bArr2)) {
                break;
            }
            i11++;
        }
        d dVar = (d) f9913a.get(uVar);
        if (dVar != null) {
            return dVar.a(str, inputStream, j10, gVar, bArr, i10);
        }
        throw new IOException("Unsupported compression method " + Arrays.toString(bArr2) + " used in " + str);
    }
}
