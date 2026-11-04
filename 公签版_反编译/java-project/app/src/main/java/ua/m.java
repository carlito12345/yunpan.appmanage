package ua;

import android.view.View;
import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppHistoryLog;
import ha.fa;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15815a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fa f15816b;

    public /* synthetic */ m(fa faVar, int i10) {
        this.f15815a = i10;
        this.f15816b = faVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        fa faVar = this.f15816b;
        switch (this.f15815a) {
            case 0:
                int i10 = ActivityAppDetailHistoryLog.L;
                faVar.show();
                break;
            default:
                int i11 = ActivityAppHistoryLog.K;
                faVar.show();
                break;
        }
    }
}
