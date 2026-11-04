package ff;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f5823a;

    /* renamed from: b, reason: collision with root package name */
    public final Date f5824b;

    /* renamed from: c, reason: collision with root package name */
    public final Date f5825c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5826d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5827e;

    public e(String str, Date date, Date date2, String str2, String str3) {
        this.f5823a = str;
        this.f5824b = date;
        this.f5825c = date2;
        this.f5826d = str2;
        this.f5827e = str3;
    }

    public final String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return "CertificateMeta{signAlgorithm=" + this.f5823a + ", certBase64Md5=" + this.f5826d + ", startDate=" + simpleDateFormat.format(this.f5824b) + ", endDate=" + simpleDateFormat.format(this.f5825c) + "}";
    }
}
