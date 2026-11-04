package j$.time.format;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final t f8879a = new t();

    public final int hashCode() {
        return CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST;
    }

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    private t() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        ((t) obj).getClass();
        return true;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
