package androidx.fragment.app;

import com.yunpan.appmanage.ui.ActivityDownload;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1400a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f1401b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.activity.v f1402c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1403d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1404e;

    public u0(boolean z) {
        this.f1400a = z;
        this.f1401b = new CopyOnWriteArrayList();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u0(ActivityDownload activityDownload) {
        this(true);
        this.f1403d = 1;
        this.f1404e = activityDownload;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u0(d1 d1Var) {
        this(false);
        this.f1403d = 0;
        this.f1404e = d1Var;
    }
}
