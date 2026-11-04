package ua;

import android.view.KeyEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.ui.ActivityKeyMapAccSet;
import com.yunpan.appmanage.ui.ActivityKeyMapNissanSet;

/* loaded from: classes.dex */
public final /* synthetic */ class h3 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15712a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f15713b;

    public /* synthetic */ h3(ConstraintLayout constraintLayout, int i10) {
        this.f15712a = i10;
        this.f15713b = constraintLayout;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        ConstraintLayout constraintLayout = this.f15713b;
        switch (this.f15712a) {
            case 0:
                int i11 = ActivityKeyMapAccSet.E;
                if (keyEvent.getAction() == 0) {
                    if (i10 != 20) {
                        if (i10 == 19) {
                            constraintLayout.requestFocus();
                            break;
                        }
                    }
                }
                break;
            default:
                int i12 = ActivityKeyMapNissanSet.E;
                if (keyEvent.getAction() == 0) {
                    if (i10 != 20) {
                        if (i10 == 19) {
                            constraintLayout.requestFocus();
                            break;
                        }
                    }
                }
                break;
        }
        return false;
    }
}
