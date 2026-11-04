package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import java.io.PrintStream;

/* loaded from: classes.dex */
public final class kb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7327g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f7328h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7329i;

    public kb(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_rotation_set);
    }

    public final void a() {
        PrintStream printStream = System.out;
        wa.u uVar = wa.t.f17728a;
        int i10 = uVar.U;
        printStream.getClass();
        int i11 = uVar.U;
        if (i11 == 0) {
            this.f7329i.setText("自动");
        } else if (i11 == 1) {
            this.f7329i.setText("横屏");
        } else {
            this.f7329i.setText("竖屏");
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_default);
        this.f7329i = (TextView) findViewById(R.id.v_default_name);
        a();
        constraintLayout.setOnClickListener(new g9(8, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7327g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.j3 j3Var = new x9.j3();
        this.f7328h = j3Var;
        wa.u uVar = wa.t.f17728a;
        j3Var.q(new NameContentSelectBean("应急预案一", "20秒内触发15次以上强制旋转的话，主动暂停旋转任务一分钟", uVar.P));
        this.f7328h.q(new NameContentSelectBean("应急预案二", "会显示一个悬浮球，点击悬浮球可清除旋转任务 并 打开" + getContext().getResources().getString(R.string.app_name) + "！ 待你测试【强制旋转】功能完全兼容你的设备后，设备重新开机、重启后也能完全正常使用的时候，再取消此勾选！", uVar.Q));
        this.f7328h.q(new NameContentSelectBean("应急预案三", "开机后的前两分钟不执行强制旋转， 意思是 开机两分钟后再允许执行强制旋转任务", uVar.R));
        this.f7328h.q(new NameContentSelectBean("全局横屏", "全部应用强制横屏！严重警告：非常不建议勾选此功能，除非您非常了解您的设备，并且怎么测试都能一切正常的话，而且还极为需要的话，才考虑此功能！只有几个应用需要强制旋转的话，那么不建议你用全局！全局有风险，勾选需谨慎！勾选全局时，依旧可以单独设置某一个", uVar.S));
        this.f7328h.q(new NameContentSelectBean("全局竖屏", "全部应用强制竖屏！严重警告：非常不建议勾选此功能，除非您非常了解您的设备，并且怎么测试都能一切正常的话，而且还极为需要的话，才考虑此功能！只有几个应用需要强制旋转的话，那么不建议你用全局！全局有风险，勾选需谨慎", uVar.T));
        this.f7327g.setAdapter(this.f7328h);
        this.f7328h.f2881e = new jb(this);
    }
}
