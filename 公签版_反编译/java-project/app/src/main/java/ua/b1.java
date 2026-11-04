package ua;

import android.view.MenuItem;
import com.yunpan.appmanage.ui.ActivityCodeEditor;

/* loaded from: classes.dex */
public final /* synthetic */ class b1 implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15577a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15578b;

    public /* synthetic */ b1(int i10, Object obj) {
        this.f15577a = i10;
        this.f15578b = obj;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        Object obj = this.f15578b;
        switch (this.f15577a) {
            case 0:
                int i10 = ActivityCodeEditor.f3967c1;
                ActivityCodeEditor activityCodeEditor = (ActivityCodeEditor) obj;
                activityCodeEditor.getClass();
                menuItem.setChecked(!menuItem.isChecked());
                menuItem.setTitle(menuItem.isChecked() ? "区分大小写 ×" : "区分大小写 √");
                activityCodeEditor.V = new tb.p(activityCodeEditor.V.f14993b, !menuItem.isChecked());
                activityCodeEditor.z();
                break;
            case 1:
                int i11 = ActivityCodeEditor.f3967c1;
                ActivityCodeEditor activityCodeEditor2 = (ActivityCodeEditor) obj;
                activityCodeEditor2.getClass();
                boolean zIsChecked = menuItem.isChecked();
                menuItem.setChecked(!zIsChecked);
                menuItem.setTitle(!zIsChecked ? "正则表达式 √" : "正则表达式 ×");
                activityCodeEditor2.V = new tb.p(!zIsChecked ? 3 : 1, activityCodeEditor2.V.f14992a);
                activityCodeEditor2.z();
                break;
            default:
                ue.d.e(menuItem, "it");
                ((te.a) obj).b();
                break;
        }
        return true;
    }
}
