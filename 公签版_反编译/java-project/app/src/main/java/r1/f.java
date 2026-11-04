package r1;

import android.os.Build;
import android.os.IBinder;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final UUID f13434a;

    /* renamed from: b, reason: collision with root package name */
    public static final UUID f13435b;

    /* renamed from: c, reason: collision with root package name */
    public static final UUID f13436c;

    /* renamed from: d, reason: collision with root package name */
    public static final UUID f13437d;

    /* renamed from: e, reason: collision with root package name */
    public static final UUID f13438e;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            IBinder.getSuggestedMaxIpcSizeBytes();
        }
        f13434a = new UUID(0L, 0L);
        f13435b = new UUID(1186680826959645954L, -5988876978535335093L);
        f13436c = new UUID(-2129748144642739255L, 8654423357094679310L);
        f13437d = new UUID(-1301668207276963122L, -6645017420763422227L);
        f13438e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }
}
