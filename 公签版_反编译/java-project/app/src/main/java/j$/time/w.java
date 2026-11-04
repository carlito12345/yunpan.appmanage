package j$.time;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
public abstract class w implements Serializable {
    private static final long serialVersionUID = 8352817235686L;

    public abstract j$.time.zone.f C();

    abstract void G(ObjectOutput objectOutput);

    public abstract String i();

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.e("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.e("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.e("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.e("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.e("AST", "America/Anchorage"), j$.com.android.tools.r8.a.e("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.e("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.e("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.e("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.e("CST", "America/Chicago"), j$.com.android.tools.r8.a.e("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.e("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.e("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.e("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.e("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.e("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.e("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.e("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.e("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.e("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.e("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.e("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.e("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.e("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.e("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.e("EST", "-05:00"), j$.com.android.tools.r8.a.e("MST", "-07:00"), j$.com.android.tools.r8.a.e("HST", "-10:00")};
        HashMap map = new HashMap(28);
        for (int i10 = 0; i10 < 28; i10++) {
            Map.Entry entry = entryArr[i10];
            Object objRequireNonNull = Objects.requireNonNull(entry.getKey());
            if (map.put(objRequireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + objRequireNonNull);
            }
        }
        Collections.unmodifiableMap(map);
    }

    public static w E(String str, x xVar) {
        Objects.requireNonNull(str, RequestParameters.PREFIX);
        Objects.requireNonNull(xVar, "offset");
        if (str.isEmpty()) {
            return xVar;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (xVar.I() != 0) {
            str = str.concat(xVar.i());
        }
        return new y(str, j$.time.zone.f.h(xVar));
    }

    static w D(String str) {
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith(Marker.ANY_NON_NULL_MARKER) || str.startsWith("-")) {
            return x.J(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            return F(str, 3);
        }
        if (str.startsWith("UT")) {
            return F(str, 2);
        }
        return y.H(str);
    }

    private static w F(String str, int i10) {
        String strSubstring = str.substring(0, i10);
        if (str.length() == i10) {
            return E(strSubstring, x.f8956e);
        }
        if (str.charAt(i10) != '+' && str.charAt(i10) != '-') {
            return y.H(str);
        }
        try {
            x xVarJ = x.J(str.substring(i10));
            if (xVarJ == x.f8956e) {
                return E(strSubstring, xVarJ);
            }
            return E(strSubstring, xVarJ);
        } catch (DateTimeException e7) {
            throw new DateTimeException("Invalid ID for offset-based ZoneId: ".concat(str), e7);
        }
    }

    w() {
        if (getClass() != x.class && getClass() != y.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            return i().equals(((w) obj).i());
        }
        return false;
    }

    public int hashCode() {
        return i().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public String toString() {
        return i();
    }

    private Object writeReplace() {
        return new r((byte) 7, this);
    }
}
