package p7;

import android.text.TextUtils;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public String f12587a;

    /* renamed from: b, reason: collision with root package name */
    public int f12588b = -1;

    /* renamed from: c, reason: collision with root package name */
    public View f12589c;

    /* renamed from: d, reason: collision with root package name */
    public TabLayout f12590d;

    /* renamed from: e, reason: collision with root package name */
    public k f12591e;

    public final void a(String str) {
        if (TextUtils.isEmpty(null) && !TextUtils.isEmpty(str)) {
            this.f12591e.setContentDescription(str);
        }
        this.f12587a = str;
        k kVar = this.f12591e;
        if (kVar != null) {
            kVar.d();
        }
    }
}
