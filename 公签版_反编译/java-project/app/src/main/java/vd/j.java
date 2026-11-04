package vd;

import j$.util.Objects;
import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;
import java.util.Arrays;
import java.util.HashSet;
import javax.crypto.ShortBufferException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class j implements Principal, a, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public static final Logger f16873f = LoggerFactory.getLogger((Class<?>) j.class);

    /* renamed from: a, reason: collision with root package name */
    public int f16874a;

    /* renamed from: b, reason: collision with root package name */
    public String f16875b;

    /* renamed from: c, reason: collision with root package name */
    public String f16876c;

    /* renamed from: d, reason: collision with root package name */
    public String f16877d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f16878e;

    public j() {
        this.f16878e = null;
        this.f16875b = "";
        this.f16876c = "";
        this.f16877d = "";
        this.f16874a = 1;
    }

    public final o a(vc.b bVar, String str, byte[] bArr, boolean z) throws r {
        Logger logger = f16873f;
        if (((wc.a) bVar.e()).f17858s) {
            i iVar = new i(bVar, this, z);
            if (str != null && ((wc.a) bVar.e()).f17860t0) {
                iVar.l = "cifs/".concat(str);
            }
            return iVar;
        }
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    fe.a aVar = new fe.a(bArr);
                    if (logger.isDebugEnabled()) {
                        logger.debug("Have initial token " + aVar);
                    }
                    if (aVar.f5794c != null && !new HashSet(Arrays.asList(aVar.f5794c)).contains(i.f16855u)) {
                        throw new i0("Server does not support NTLM authentication");
                    }
                }
            } catch (r e7) {
                throw e7;
            } catch (IOException e10) {
                logger.debug("Ignoring invalid initial token", (Throwable) e10);
            }
        }
        vc.f fVarE = bVar.e();
        i iVar2 = new i(bVar, this, z);
        if (str != null && ((wc.a) bVar.e()).f17860t0) {
            iVar2.l = "cifs/".concat(str);
        }
        return new j0(fVarE, iVar2);
    }

    public final byte[] b(vc.b bVar, byte[] bArr) throws ShortBufferException {
        int i10 = ((wc.a) bVar.e()).r;
        if (i10 == 0 || i10 == 1) {
            return k.d(bVar, this.f16877d, bArr);
        }
        if (i10 == 2) {
            byte[] bArr2 = new byte[21];
            byte[] bArr3 = new byte[24];
            System.arraycopy(k.c(this.f16877d), 0, bArr2, 0, 16);
            k.a(bArr2, bArr, bArr3);
            return bArr3;
        }
        if (i10 != 3 && i10 != 4 && i10 != 5) {
            return k.d(bVar, this.f16877d, bArr);
        }
        if (this.f16878e == null) {
            this.f16878e = new byte[8];
            ((wc.a) bVar.e()).f17828c.nextBytes(this.f16878e);
        }
        String str = this.f16875b;
        String str2 = this.f16876c;
        String str3 = this.f16877d;
        return k.b(str, str2, k.c(str3), bArr, this.f16878e);
    }

    public final byte[] c(vc.b bVar, byte[] bArr) throws ShortBufferException {
        int i10 = ((wc.a) bVar.e()).r;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            byte[] bArr2 = new byte[21];
            byte[] bArr3 = new byte[24];
            System.arraycopy(k.c(this.f16877d), 0, bArr2, 0, 16);
            k.a(bArr2, bArr, bArr3);
            return bArr3;
        }
        if (i10 == 3 || i10 == 4 || i10 == 5) {
            return new byte[0];
        }
        byte[] bArr4 = new byte[21];
        byte[] bArr5 = new byte[24];
        System.arraycopy(k.c(this.f16877d), 0, bArr4, 0, 16);
        k.a(bArr4, bArr, bArr5);
        return bArr5;
    }

    public final Object clone() {
        j jVar = new j();
        jVar.f16875b = this.f16875b;
        jVar.f16876c = this.f16876c;
        jVar.f16877d = this.f16877d;
        jVar.f16874a = this.f16874a;
        return jVar;
    }

    public final boolean d() {
        return this.f16874a == 1;
    }

    @Override // java.security.Principal
    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        String str = jVar.f16875b;
        String upperCase = str != null ? str.toUpperCase() : null;
        String str2 = this.f16875b;
        return jVar.f16874a == this.f16874a && Objects.equals(upperCase, str2 != null ? str2.toUpperCase() : null) && jVar.f16876c.equalsIgnoreCase(this.f16876c) && Objects.equals(this.f16877d, jVar.f16877d);
    }

    public final boolean f() {
        return this.f16874a == 2;
    }

    @Override // java.security.Principal
    public final String getName() {
        String str = this.f16875b;
        if (str == null || str.length() <= 0) {
            return this.f16876c;
        }
        return this.f16875b + "\\" + this.f16876c;
    }

    @Override // java.security.Principal
    public final int hashCode() {
        return getName().toUpperCase().hashCode();
    }

    @Override // java.security.Principal
    public final String toString() {
        return getName();
    }

    public j(String str, String str2, String str3) {
        this.f16878e = null;
        if (str2 != null) {
            int iIndexOf = str2.indexOf(64);
            if (iIndexOf > 0) {
                str = str2.substring(iIndexOf + 1);
                str2 = str2.substring(0, iIndexOf);
            } else {
                int iIndexOf2 = str2.indexOf(92);
                if (iIndexOf2 > 0) {
                    str = str2.substring(0, iIndexOf2);
                    str2 = str2.substring(iIndexOf2 + 1);
                }
            }
        }
        this.f16875b = str == null ? "" : str;
        this.f16876c = str2 == null ? "" : str2;
        this.f16877d = str3 == null ? "" : str3;
        this.f16874a = 3;
    }
}
