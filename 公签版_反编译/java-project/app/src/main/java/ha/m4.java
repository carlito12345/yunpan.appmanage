package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class m4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7394g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f7395h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f7396i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7397j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7398k;

    public m4(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_boot_task_set);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() throws NumberFormatException {
        String str = "0";
        try {
            String string = this.f7396i.getText().toString();
            if (string.isEmpty()) {
                string = "0";
            }
            int iIntValue = Integer.valueOf(string).intValue();
            wa.u uVar = wa.t.f17728a;
            if (iIntValue != uVar.f17749o) {
                Integer numValueOf = Integer.valueOf(string);
                int iIntValue2 = numValueOf.intValue();
                uVar.getClass();
                try {
                    uVar.f17749o = iIntValue2;
                    uVar.f17731b.l("BootStartTask_ScreenOffToOnNot_Time", numValueOf);
                } catch (Exception unused) {
                }
                uVar.i();
            }
        } catch (Exception unused2) {
        }
        try {
            String string2 = this.f7397j.getText().toString();
            if (string2.isEmpty()) {
                string2 = "0";
            }
            int iIntValue3 = Integer.valueOf(string2).intValue();
            wa.u uVar2 = wa.t.f17728a;
            if (iIntValue3 != uVar2.f17747m) {
                Integer numValueOf2 = Integer.valueOf(string2);
                int iIntValue4 = numValueOf2.intValue();
                uVar2.getClass();
                try {
                    uVar2.f17747m = iIntValue4;
                    uVar2.f17731b.l("BootStartTask_boot_delay", numValueOf2);
                } catch (Exception unused3) {
                }
                uVar2.i();
            }
        } catch (Exception unused4) {
        }
        try {
            String string3 = this.f7398k.getText().toString();
            if (!string3.isEmpty()) {
                str = string3;
            }
            int iIntValue5 = Integer.valueOf(str).intValue();
            wa.u uVar3 = wa.t.f17728a;
            if (iIntValue5 != uVar3.f17748n) {
                Integer numValueOf3 = Integer.valueOf(str);
                int iIntValue6 = numValueOf3.intValue();
                uVar3.getClass();
                try {
                    uVar3.f17748n = iIntValue6;
                    uVar3.f17731b.l("BootStartTask_load_delay", numValueOf3);
                } catch (Exception unused5) {
                }
                uVar3.i();
            }
        } catch (Exception unused6) {
        }
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        PowerManager powerManager;
        final int i10 = 0;
        super.onCreate(bundle);
        EditText editText = (EditText) findViewById(R.id.v_et_time_load_delay);
        this.f7398k = editText;
        wa.u uVar = wa.t.f17728a;
        editText.setText(String.valueOf(uVar.f17748n));
        EditText editText2 = (EditText) findViewById(R.id.v_et_time_boot);
        this.f7397j = editText2;
        editText2.setText(String.valueOf(uVar.f17747m));
        EditText editText3 = (EditText) findViewById(R.id.v_et_time);
        this.f7396i = editText3;
        editText3.setText(String.valueOf(uVar.f17749o));
        this.f7398k.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.k4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m4 f7305b;

            {
                this.f7305b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                switch (i10) {
                    case 0:
                        m4 m4Var = this.f7305b;
                        m4Var.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var.f7394g.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var.f7397j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        m4 m4Var2 = this.f7305b;
                        m4Var2.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var2.f7398k.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var2.f7396i.requestFocus();
                            break;
                        }
                        break;
                    default:
                        m4 m4Var3 = this.f7305b;
                        m4Var3.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var3.f7397j.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var3.f7396i.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
        EditText editText4 = this.f7397j;
        final char c7 = 1 == true ? 1 : 0;
        editText4.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.k4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m4 f7305b;

            {
                this.f7305b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                switch (c7) {
                    case 0:
                        m4 m4Var = this.f7305b;
                        m4Var.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var.f7394g.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var.f7397j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        m4 m4Var2 = this.f7305b;
                        m4Var2.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var2.f7398k.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var2.f7396i.requestFocus();
                            break;
                        }
                        break;
                    default:
                        m4 m4Var3 = this.f7305b;
                        m4Var3.getClass();
                        if (i11 != 20) {
                            if (i11 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var3.f7397j.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var3.f7396i.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
        final int i11 = 2;
        this.f7396i.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.k4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m4 f7305b;

            {
                this.f7305b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i11) {
                    case 0:
                        m4 m4Var = this.f7305b;
                        m4Var.getClass();
                        if (i112 != 20) {
                            if (i112 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var.f7394g.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var.f7397j.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        m4 m4Var2 = this.f7305b;
                        m4Var2.getClass();
                        if (i112 != 20) {
                            if (i112 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var2.f7398k.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var2.f7396i.requestFocus();
                            break;
                        }
                        break;
                    default:
                        m4 m4Var3 = this.f7305b;
                        m4Var3.getClass();
                        if (i112 != 20) {
                            if (i112 == 19) {
                                if (keyEvent.getAction() == 1) {
                                    m4Var3.f7397j.requestFocus();
                                    break;
                                }
                            }
                        } else if (keyEvent.getAction() == 0) {
                            m4Var3.f7396i.requestFocus();
                            break;
                        }
                        break;
                }
                return true;
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7394g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.j3 j3Var = new x9.j3();
        this.f7395h = j3Var;
        j3Var.q(new NameContentSelectBean("开机广播-触发开机任务", "所有设备都建议勾选此项，大部分系统都支持此标准！个别系统禁了开机广播，所以导致无法触发", uVar.f17746k));
        this.f7395h.q(new NameContentSelectBean("用户解锁-触发开机任务", "除了手机外，车机、电视 都可以勾选此项目", uVar.f17745j));
        this.f7395h.q(new NameContentSelectBean("屏幕点亮-触发开机任务", "某些车机熄火后不会关机(进入深度睡眠状态)，导致无法开机自启！可尝试勾选此项，来触发开机任务！！！仅个别睡眠车机支持监听屏幕广播！", uVar.f17744i));
        this.f7395h.q(new NameContentSelectBean("等系统加载完成后再开始执行", "开机后，等待系统进入桌面后，也就是系统启动完成后再开始执行开机任务！避免系统未启动完成就执行比如像(打开应用)这类的任务", uVar.f17740f0));
        this.f7395h.q(new NameContentSelectBean("防止重复触发-根据开机时间", "开机时间超过90秒的，检测到触发开机任务也不再执行！避免重复执行开机任务！  如果您不是睡眠车机的话，可以勾选！如果是睡眠车机，则不要勾选！", uVar.f17734c0));
        this.f7395h.q(new NameContentSelectBean("防止重复触发-阻止重复拉起", "此项目根据自己需要而选择，如果开机任务经常重复执行，那么勾选此项目！", uVar.f17736d0));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        this.f7395h.q(new NameContentSelectBean("TCL雷鸟-触发开机任务", "某款TCL雷鸟电视(MT5879)，授权自启动权限", kVar.a(context.getPackageName(), Process.myUid(), "APP_AUTO_START").equals("已允许") && kVar.a(context.getPackageName(), Process.myUid(), "APP_ASSOC_START").equals("已允许")));
        this.f7395h.q(new NameContentSelectBean("开机检测桌面是否正常", "开机后检测系统能否正常打开桌面，如果无法进入桌面，则打开" + context.getString(R.string.str_gj) + "！  预防某些人乱禁用桌面，导致无法开机！强烈推荐勾选此功能！(注：仅适合部分系统)", uVar.f17738e0));
        this.f7395h.q(new NameContentSelectBean("开机后手动点击启动(不要勾选)", "某些车机熄火后不会彻底关机(只是进入深度睡眠状态)，导致每次开机后无法触发" + context.getString(R.string.str_gj) + "自启动！对于这种设备，只能自己手动打开" + context.getString(R.string.str_gj) + "执行开机任务  (多数新能源车都是深度睡眠不关机的，但睡眠时会关闭所有第三方应用)\n\n如何知道自己车机是否也是这样呢，开机后可以在" + context.getString(R.string.str_gj) + "的【设备信息】中查看开机时间，看对不对的上，对得上就没问题！\n\n现在大部分休眠车机，" + context.getString(R.string.str_gj) + "也能够自启动，无需勾选此项", uVar.f17743h));
        if (Build.VERSION.SDK_INT >= 23 && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
            this.f7395h.q(new NameContentSelectBean("保活措施：忽略电池优化（强烈建议勾选）", "授予我(忽略电池优化)的权限，可某些系统上避免系统偷偷关闭开机任务", powerManager.isIgnoringBatteryOptimizations(context.getPackageName())));
        }
        this.f7394g.setAdapter(this.f7395h);
        this.f7395h.f2881e = new a1.d(17, this);
    }
}
