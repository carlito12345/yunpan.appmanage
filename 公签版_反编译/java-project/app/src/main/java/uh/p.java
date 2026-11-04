package uh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final p f16154a = new p();

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        ((p) obj).getClass();
        return true;
    }

    public final int hashCode() {
        return CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
