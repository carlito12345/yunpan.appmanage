package s5;

import a2.k1;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import f5.k;
import h5.z;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i implements k {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f14453a;

    /* renamed from: b, reason: collision with root package name */
    public final a f14454b;

    /* renamed from: c, reason: collision with root package name */
    public final k1 f14455c;

    public i(ArrayList arrayList, a aVar, k1 k1Var) {
        this.f14453a = arrayList;
        this.f14454b = aVar;
        this.f14455c = k1Var;
    }

    @Override // f5.k
    public final z a(Object obj, int i10, int i11, f5.i iVar) throws IOException {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i12 = inputStream.read(bArr);
                if (i12 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i12);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f14454b.a(ByteBuffer.wrap(byteArray), i10, i11, iVar);
    }

    @Override // f5.k
    public final boolean b(Object obj, f5.i iVar) {
        return !((Boolean) iVar.c(h.f14452b)).booleanValue() && android.support.v4.media.session.b.n(this.f14453a, (InputStream) obj, this.f14455c) == ImageHeaderParser$ImageType.GIF;
    }
}
