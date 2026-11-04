package ah;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.function.Supplier;
import ph.q;
import ph.r;
import ph.x;
import rh.e;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f715a;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f715a) {
            case 0:
                return null;
            case 1:
                byte[] bArr = sg.b.f14563a;
                return new byte[8192];
            case 2:
                return new SoftReference(new ArrayDeque());
            case 3:
                return new StringBuilder(1024);
            case 4:
                return new char[2];
            case 5:
                return new String[512];
            case 6:
                return new char[2048];
            case 7:
                return new e();
            case 8:
                return new IdentityHashMap();
            case 9:
                return new r(new x(""), q.class);
            case 10:
                byte[] bArr2 = sg.b.f14565c;
                Arrays.fill(bArr2, (byte) 0);
                return bArr2;
            case 11:
                return new byte[8192];
            case 12:
                return new char[8192];
            default:
                return "";
        }
    }
}
