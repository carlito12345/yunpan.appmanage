package ha;

import android.widget.TextView;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class t1 implements ea, ga {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7779a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7780b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f7781c;

    public /* synthetic */ t1(TextView textView, ArrayList arrayList) {
        this.f7781c = textView;
        this.f7780b = arrayList;
    }

    @Override // ha.ea
    public final void b(int i10) {
        TextView textView = this.f7781c;
        ArrayList arrayList = this.f7780b;
        switch (this.f7779a) {
            case 0:
                textView.setText((CharSequence) arrayList.get(i10));
                break;
            default:
                int i11 = ActivityKeyMapLogcatSet.H;
                wa.u uVar = wa.t.f17728a;
                int i12 = ((KeyCodeBean) arrayList.get(i10)).keyCode;
                uVar.getClass();
                try {
                    uVar.L = i12;
                    uVar.f17731b.l("LogcatKeymap_LogLevel", Integer.valueOf(i12));
                } catch (Exception unused) {
                }
                uVar.i();
                textView.setText(((KeyCodeBean) arrayList.get(i10)).keyName);
                break;
        }
    }

    public /* synthetic */ t1(ArrayList arrayList, TextView textView) {
        this.f7780b = arrayList;
        this.f7781c = textView;
    }
}
