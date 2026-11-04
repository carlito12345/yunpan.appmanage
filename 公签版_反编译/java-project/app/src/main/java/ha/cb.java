package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class cb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f6865g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j4 f6866h;

    public cb(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_reboot);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i10) {
        int i11 = 1;
        String str = ((x9.k4) this.f6866h.t(i10)).f18262b;
        if (str.startsWith("adb shell ")) {
            fa.b0.f5652a.g(str.substring(10), null);
        } else {
            String strSubstring = str.length() > 11 ? str.substring(11) : "";
            if (!fa.g0.f5682a.f()) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (kVar.f4053j) {
                    u9.d.r(da.b.c("reboot ", strSubstring)).l0();
                } else {
                    kVar.f4048g0.submit(new com.yunpan.appmanage.db.a(da.b.c("reboot:", strSubstring), i11));
                }
            }
        }
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6865g = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6866h = new x9.j4();
        TvRecyclerView tvRecyclerView = this.f6865g;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new x9.k4("重启", "adb reboot"));
        arrayList.add(new x9.k4("关机", "adb reboot -p"));
        arrayList.add(new x9.k4("重启", "adb shell reboot"));
        arrayList.add(new x9.k4("关机", "adb shell reboot -p"));
        arrayList.add(new x9.k4("重启", "adb shell svc power reboot"));
        arrayList.add(new x9.k4("关机", "adb shell svc power shutdown"));
        arrayList.add(new x9.k4("recovery", "adb reboot recovery"));
        arrayList.add(new x9.k4("bootloader", "adb reboot bootloader"));
        this.f6866h.r(arrayList);
        this.f6865g.setAdapter(this.f6866h);
        this.f6865g.requestFocus();
        this.f6865g.setSelection(0);
        androidx.recyclerview.widget.y yVar = new androidx.recyclerview.widget.y(context);
        yVar.e(n0.g.e(context, R.drawable.divider));
        this.f6865g.addItemDecoration(yVar);
        this.f6866h.f2881e = new p7(10, this);
        this.f6865g.setOnInBorderKeyEventListener(new g2.c(23));
        this.f6865g.setOnItemListener(new bb());
    }
}
