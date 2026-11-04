package com.yunpan.appmanage.ui;

import android.os.ServiceManager;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hsae.autosdk.settings.AutoSettingsConst;
import com.hsae.autosdk.settings.IAutoSettings;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.a0;
import da.g;
import g.b;
import ha.u9;
import pa.e;
import ua.g1;
import ua.y4;
import x9.k3;

/* loaded from: classes.dex */
public class ActivityNissanTextGN extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public k3 D;
    public IAutoSettings E;

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        try {
            IAutoSettings iAutoSettingsAsInterface = IAutoSettings.Stub.asInterface(ServiceManager.getService(AutoSettingsConst.IBINDER_SETTINGS));
            this.E = iAutoSettingsAsInterface;
            if (iAutoSettingsAsInterface == null) {
                a0.u("此功能不适合您的设备");
                finish();
                return;
            }
            ((TextView) findViewById(R.id.v_title)).setText("日产车机功能测试");
            new u9(this, this.A);
            ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 21));
            TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
            this.C = tvRecyclerView;
            tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
            k3 k3Var = new k3();
            this.D = k3Var;
            b.p(R.drawable.tp_root6, "低音调节", k3Var);
            b.p(R.drawable.tp_root6, "高音调节", this.D);
            b.p(R.drawable.tp_root6, "低音偏移量(测试)", this.D);
            b.p(R.drawable.tp_root6, "高音偏移量(测试)", this.D);
            b.p(R.drawable.tp_root6, "增强音响(开启/关闭)", this.D);
            b.p(R.drawable.tp_root6, "修改系统音量", this.D);
            b.p(R.drawable.tp_root6, "修改导航音量", this.D);
            b.p(R.drawable.tp_root6, "蓝牙电话音量", this.D);
            b.p(R.drawable.tp_root6, "关闭屏幕", this.D);
            b.p(R.drawable.tp_root6, "关闭电源", this.D);
            b.p(R.drawable.tp_root6, "静音(系统)", this.D);
            b.p(R.drawable.tp_root6, "静音(导航)", this.D);
            b.p(R.drawable.tp_root6, "静音(麦克风)", this.D);
            b.p(R.drawable.tp_root6, "车速感应级别", this.D);
            this.C.setAdapter(this.D);
            this.D.f2881e = new y4(this, 0);
            if (e.b(this.A)) {
                return;
            }
            a0.s("不是日产车机，无法使用此功能", false);
        } catch (Exception unused) {
            a0.u("此功能不适合您的设备");
            finish();
        }
    }
}
