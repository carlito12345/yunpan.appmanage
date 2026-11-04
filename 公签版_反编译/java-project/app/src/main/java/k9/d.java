package k9;

import android.os.SystemClock;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public float f10214a;

    /* renamed from: c, reason: collision with root package name */
    public long f10216c;

    /* renamed from: d, reason: collision with root package name */
    public transient long f10217d;

    /* renamed from: e, reason: collision with root package name */
    public transient long f10218e;

    /* renamed from: g, reason: collision with root package name */
    public final transient ArrayList f10220g;

    /* renamed from: f, reason: collision with root package name */
    public transient long f10219f = SystemClock.elapsedRealtime();

    /* renamed from: b, reason: collision with root package name */
    public long f10215b = -1;

    public d() {
        System.currentTimeMillis();
        this.f10220g = new ArrayList();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Progress{fraction=");
        sb2.append(this.f10214a);
        sb2.append(", totalSize=");
        sb2.append(this.f10215b);
        sb2.append(", currentSize=");
        sb2.append(this.f10216c);
        sb2.append(", speed=");
        return android.support.v4.media.session.a.t(sb2, this.f10217d, ", status=0, priority=0, folder=null, filePath=null, fileName=null, tag=null, url=null}");
    }
}
