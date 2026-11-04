package l1;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class h extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final Fragment f10387a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Fragment fragment, String str) {
        super(str);
        ue.d.e(fragment, "fragment");
        this.f10387a = fragment;
    }
}
