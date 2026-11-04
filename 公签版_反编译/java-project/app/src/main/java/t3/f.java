package t3;

import com.hsae.autosdk.p001os.SocConst;
import l2.l;
import r1.f0;
import u1.q;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f14749a = {0, 0, 0, 0, 16, 0, Byte.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f14750b = {0, 0, SocConst.Upgrade.CPU_CMD, 7, -45, SocConst.Upgrade.FLASH_CMD, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean a(l lVar) {
        q qVar = new q(8);
        int i10 = ai.a.a(lVar, qVar).f717a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        lVar.c(qVar.f15266a, 0, 4, false);
        qVar.O(0);
        int iO = qVar.o();
        if (iO == 1463899717) {
            return true;
        }
        u1.a.f("Unsupported form type: " + iO);
        return false;
    }

    public static ai.a b(int i10, l lVar, q qVar) throws f0 {
        ai.a aVarA = ai.a.a(lVar, qVar);
        while (true) {
            int i11 = aVarA.f717a;
            if (i11 == i10) {
                return aVarA;
            }
            org.bouncycastle.jcajce.provider.digest.a.o(i11, "Ignoring unknown WAV chunk: ");
            long j10 = aVarA.f718b;
            long j11 = 8 + j10;
            if (j10 % 2 != 0) {
                j11 = 9 + j10;
            }
            if (j11 > 2147483647L) {
                throw f0.b("Chunk is too large (~2GB+) to skip; id: " + i11);
            }
            lVar.o((int) j11, false);
            aVarA = ai.a.a(lVar, qVar);
        }
    }
}
