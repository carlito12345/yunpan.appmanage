package ua;

import com.yunpan.appmanage.ui.ActivityCodeEditor;
import ha.wd;

/* loaded from: classes.dex */
public final class f1 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15668a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityCodeEditor f15669b;

    public /* synthetic */ f1(ActivityCodeEditor activityCodeEditor, int i10) {
        this.f15668a = i10;
        this.f15669b = activityCodeEditor;
    }

    @Override // ha.wd
    public final void D() {
        ActivityCodeEditor activityCodeEditor = this.f15669b;
        switch (this.f15668a) {
            case 0:
                int i10 = ActivityCodeEditor.f3967c1;
                activityCodeEditor.B(true);
                break;
            default:
                int i11 = ActivityCodeEditor.f3967c1;
                activityCodeEditor.x(null);
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f15668a) {
            case 0:
                this.f15669b.finish();
                break;
        }
    }

    private final void a() {
    }
}
