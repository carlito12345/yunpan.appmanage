package a9;

import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class u extends r {

    /* renamed from: h, reason: collision with root package name */
    public byte[] f533h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f534i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f535j;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(m7.e eVar, int i10) {
        this(eVar, null, null);
        this.f535j = i10;
    }

    public static u s(m7.e eVar, a aVar) throws n {
        byte[][] bArrF = aVar.f(4, "invalid key format");
        u uVar = new u(eVar, bArrF[1], Arrays.copyOf(bArrF[2], 32), 0);
        uVar.f518b = h0.c(bArrF[3]);
        uVar.f517a = 0;
        return uVar;
    }

    public static u t(m7.e eVar, a aVar) throws n {
        byte[][] bArrF = aVar.f(4, "invalid key format");
        u uVar = new u(eVar, bArrF[1], Arrays.copyOf(bArrF[2], 57), 1);
        uVar.f518b = h0.c(bArrF[3]);
        uVar.f517a = 0;
        return uVar;
    }

    @Override // a9.r
    public final void d() {
        byte[] bArr = h0.f503a;
        h0.d(this.f534i);
    }

    @Override // a9.r
    public final byte[] e() throws n {
        if (this.f520d) {
            throw new n("key is encrypted.");
        }
        a aVar = new a(0, (char) 0);
        String strU = u();
        byte[] bArr = h0.f503a;
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = strU.getBytes(charset);
        aVar.p(bytes.length, bytes);
        byte[] bArr2 = this.f533h;
        aVar.p(bArr2.length, bArr2);
        byte[] bArr3 = this.f534i;
        int length = bArr3.length + this.f533h.length;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        byte[] bArr5 = this.f533h;
        System.arraycopy(bArr5, 0, bArr4, this.f534i.length, bArr5.length);
        aVar.p(length, bArr4);
        byte[] bArrK = h0.k(this.f518b, charset);
        aVar.p(bArrK.length, bArrK);
        int iH = aVar.h();
        byte[] bArr6 = new byte[iH];
        aVar.e(iH, bArr6);
        return bArr6;
    }

    @Override // a9.r
    public final int g() {
        switch (this.f535j) {
            case 0:
                return 32;
            default:
                return 57;
        }
    }

    @Override // a9.r
    public final byte[] h() {
        byte[] bArr = this.f522f;
        if (bArr != null) {
            return bArr;
        }
        if (this.f533h == null) {
            return null;
        }
        String strU = u();
        byte[] bArr2 = h0.f503a;
        return (byte[]) a.b(new byte[][]{strU.getBytes(StandardCharsets.UTF_8), this.f533h}).f474e;
    }

    @Override // a9.r
    public final boolean m(byte[] bArr) throws n {
        int i10 = this.f517a;
        m7.e eVar = this.f519c;
        if (i10 == 2 || i10 == 5) {
            a aVar = new a(bArr);
            aVar.r(bArr.length);
            try {
                this.f534i = aVar.f(1, "")[0];
                return true;
            } catch (n unused) {
                eVar.getClass();
                l.f508f.getClass();
                return false;
            }
        }
        if (i10 != 4) {
            if (i10 != 3) {
                eVar.getClass();
                l.f508f.getClass();
                return false;
            }
            try {
                if (Class.forName(l.b("keypairgen_fromprivate.eddsa")).asSubclass(v.class).getDeclaredConstructor(null).newInstance(null) == null) {
                    throw null;
                }
                throw new ClassCastException();
            } catch (Exception | NoClassDefFoundError unused2) {
                eVar.getClass();
                l.f508f.getClass();
                return false;
            }
        }
        try {
            a aVar2 = new a(bArr);
            if (aVar2.g() != aVar2.g()) {
                throw new n("check failed");
            }
            h0.c(aVar2.l());
            this.f533h = aVar2.l();
            this.f534i = Arrays.copyOf(aVar2.l(), g());
            byte[] bArrL = aVar2.l();
            this.f518b = new String(bArrL, 0, bArrL.length, StandardCharsets.UTF_8);
            return true;
        } catch (Exception unused3) {
            eVar.getClass();
            l.f508f.getClass();
            return false;
        }
    }

    public final String u() {
        switch (this.f535j) {
            case 0:
                return "ssh-ed25519";
            default:
                return "ssh-ed448";
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(m7.e eVar, byte[] bArr, byte[] bArr2, int i10) {
        this(eVar, bArr, bArr2);
        this.f535j = i10;
    }

    public u(m7.e eVar, byte[] bArr, byte[] bArr2) {
        super(eVar);
        this.f533h = bArr;
        this.f534i = bArr2;
    }
}
