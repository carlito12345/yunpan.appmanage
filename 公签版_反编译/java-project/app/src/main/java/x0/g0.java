package x0;

import android.text.TextUtils;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class g0 extends h1.c {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17988e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(int i10) {
        super(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28);
        this.f17988e = i10;
        switch (i10) {
            case 1:
                super(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
                break;
            case 2:
                super(R.id.tag_accessibility_heading, Boolean.class, 0, 28);
                break;
            default:
                break;
        }
    }

    @Override // h1.c
    public final Object c(View view) {
        switch (this.f17988e) {
            case 0:
                return Boolean.valueOf(u0.d(view));
            case 1:
                return u0.b(view);
            default:
                return Boolean.valueOf(u0.c(view));
        }
    }

    @Override // h1.c
    public final void d(View view, Object obj) {
        switch (this.f17988e) {
            case 0:
                u0.j(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                u0.h(view, (CharSequence) obj);
                break;
            default:
                u0.g(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // h1.c
    public final boolean g(Object obj, Object obj2) {
        switch (this.f17988e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
    }
}
