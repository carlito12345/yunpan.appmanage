package hi;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.manager.s;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class e extends df.d {

    /* renamed from: h, reason: collision with root package name */
    public static final Handler f8223h = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public final ComponentName f8225f;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f8224e = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public boolean f8226g = false;

    public e(s sVar) {
        this.f8225f = (ComponentName) sVar.f3412c;
    }
}
