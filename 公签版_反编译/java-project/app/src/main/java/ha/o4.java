package ha;

import android.view.KeyEvent;
import android.view.View;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import com.yunpan.appmanage.ui.ActivityImmersive;

/* loaded from: classes.dex */
public final /* synthetic */ class o4 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7518a;

    public /* synthetic */ o4(int i10) {
        this.f7518a = i10;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        switch (this.f7518a) {
            case 0:
                int i11 = q4.f7607k;
                return true;
            case 1:
                int i12 = u9.f7867k;
                return true;
            case 2:
                int i13 = ActivityCodeEditor.f3967c1;
                return i10 == 21;
            case 3:
                int i14 = ActivityCodeEditor.f3967c1;
                return i10 == 22;
            default:
                int i15 = ActivityImmersive.N;
                if (i10 == 19 && keyEvent.getAction() == 1) {
                    s1.g.Z(333, view);
                } else if (i10 == 22 && keyEvent.getAction() == 1) {
                    s1.g.W(333, view);
                }
                return false;
        }
    }
}
