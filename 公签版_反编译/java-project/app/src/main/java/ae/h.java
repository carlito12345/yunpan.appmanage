package ae;

import java.io.IOException;

/* loaded from: classes.dex */
public final class h extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final int f638a;

    /* renamed from: b, reason: collision with root package name */
    public final int f639b;

    public h(int i10) {
        super(a(2, i10));
        this.f638a = 2;
        this.f639b = i10;
    }

    public static String a(int i10, int i11) {
        if (i10 == 0) {
            return "SUCCESS";
        }
        if (i10 == 1) {
            return (i11 != 1 ? "ERR_NAM_SRVC/" : "ERR_NAM_SRVC/FMT_ERR: Format Error") + "Unknown error code: " + i11;
        }
        if (i10 != 2) {
            return da.b.a(i10, "unknown error class: ");
        }
        if (i11 == -1) {
            return "ERR_SSN_SRVC/Connection refused";
        }
        if (i11 == 143) {
            return "ERR_SSN_SRVC/Unspecified error";
        }
        switch (i11) {
            case 128:
                return "ERR_SSN_SRVC/Not listening on called name";
            case 129:
                return "ERR_SSN_SRVC/Not listening for calling name";
            case 130:
                return "ERR_SSN_SRVC/Called name not present";
            case 131:
                return "ERR_SSN_SRVC/Called name present, but insufficient resources";
            default:
                return da.b.a(i11, "ERR_SSN_SRVC/Unknown error code: ");
        }
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("errorClass=");
        int i10 = this.f638a;
        sb2.append(i10);
        sb2.append(",errorCode=");
        int i11 = this.f639b;
        sb2.append(i11);
        sb2.append(",errorString=");
        sb2.append(a(i10, i11));
        return new String(sb2.toString());
    }
}
