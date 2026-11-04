package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class tb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7828g;

    /* renamed from: h, reason: collision with root package name */
    public x9.a1 f7829h;

    /* renamed from: i, reason: collision with root package name */
    public final String f7830i;

    /* renamed from: j, reason: collision with root package name */
    public final androidx.leanback.widget.i f7831j;

    /* renamed from: k, reason: collision with root package name */
    public final Set f7832k;

    public tb(Activity activity, Context context, Set set, androidx.leanback.widget.i iVar) {
        super(activity, context, R.layout.dialog_select_apps, false);
        this.f7830i = "请选中要排除的应用";
        this.f7832k = set;
        if (set == null) {
            this.f7832k = new HashSet();
        }
        this.f7831j = iVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.v_title)).setText(this.f7830i);
        TextView textView = (TextView) findViewById(R.id.v_btn_yes);
        textView.requestFocus();
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ha.sb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ tb f7762b;

            {
                this.f7762b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        tb tbVar = this.f7762b;
                        androidx.leanback.widget.i iVar = tbVar.f7831j;
                        if (iVar != null) {
                            Set set = tbVar.f7832k;
                            if (iVar.f1647b == 406) {
                                wa.u uVar = wa.t.f17728a;
                                uVar.f17757x = set;
                                try {
                                    StringBuilder sb2 = new StringBuilder();
                                    for (String str : uVar.f17757x) {
                                        if (!str.isEmpty()) {
                                            sb2.append(str);
                                            sb2.append(",");
                                        }
                                    }
                                    if (sb2.length() > 0) {
                                        sb2.deleteCharAt(sb2.length() - 1);
                                    }
                                    uVar.f17731b.m("GN_AUDIO_NOTICE_EXCLUDED_APPS", sb2.toString());
                                } catch (Exception unused) {
                                }
                                uVar.i();
                                ta.m.e(uVar.f17735d);
                            } else {
                                wa.u uVar2 = wa.t.f17728a;
                                uVar2.f17758y = set;
                                try {
                                    StringBuilder sb3 = new StringBuilder();
                                    for (String str2 : uVar2.f17758y) {
                                        if (!str2.isEmpty()) {
                                            sb3.append(str2);
                                            sb3.append(",");
                                        }
                                    }
                                    if (sb3.length() > 0) {
                                        sb3.deleteCharAt(sb3.length() - 1);
                                    }
                                    uVar2.f17731b.m("GN_AUDIO_SIGNA_EXCLUDED_APPS", sb3.toString());
                                } catch (Exception unused2) {
                                }
                                uVar2.i();
                                ta.m.e(uVar2.f17735d);
                            }
                            com.yunpan.appmanage.util.a0.w("设置成功");
                        }
                        tbVar.dismiss();
                        break;
                    default:
                        tb tbVar2 = this.f7762b;
                        tbVar2.f7832k.clear();
                        for (int i11 = 0; i11 < tbVar2.f7829h.b(); i11++) {
                            NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) tbVar2.f7829h.t(i11);
                            if (namePackBoolSelectBean.isSelected) {
                                namePackBoolSelectBean.isSelected = false;
                                tbVar2.f7829h.e(i11);
                            }
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_clean).setOnClickListener(new View.OnClickListener(this) { // from class: ha.sb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ tb f7762b;

            {
                this.f7762b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        tb tbVar = this.f7762b;
                        androidx.leanback.widget.i iVar = tbVar.f7831j;
                        if (iVar != null) {
                            Set set = tbVar.f7832k;
                            if (iVar.f1647b == 406) {
                                wa.u uVar = wa.t.f17728a;
                                uVar.f17757x = set;
                                try {
                                    StringBuilder sb2 = new StringBuilder();
                                    for (String str : uVar.f17757x) {
                                        if (!str.isEmpty()) {
                                            sb2.append(str);
                                            sb2.append(",");
                                        }
                                    }
                                    if (sb2.length() > 0) {
                                        sb2.deleteCharAt(sb2.length() - 1);
                                    }
                                    uVar.f17731b.m("GN_AUDIO_NOTICE_EXCLUDED_APPS", sb2.toString());
                                } catch (Exception unused) {
                                }
                                uVar.i();
                                ta.m.e(uVar.f17735d);
                            } else {
                                wa.u uVar2 = wa.t.f17728a;
                                uVar2.f17758y = set;
                                try {
                                    StringBuilder sb3 = new StringBuilder();
                                    for (String str2 : uVar2.f17758y) {
                                        if (!str2.isEmpty()) {
                                            sb3.append(str2);
                                            sb3.append(",");
                                        }
                                    }
                                    if (sb3.length() > 0) {
                                        sb3.deleteCharAt(sb3.length() - 1);
                                    }
                                    uVar2.f17731b.m("GN_AUDIO_SIGNA_EXCLUDED_APPS", sb3.toString());
                                } catch (Exception unused2) {
                                }
                                uVar2.i();
                                ta.m.e(uVar2.f17735d);
                            }
                            com.yunpan.appmanage.util.a0.w("设置成功");
                        }
                        tbVar.dismiss();
                        break;
                    default:
                        tb tbVar2 = this.f7762b;
                        tbVar2.f7832k.clear();
                        for (int i112 = 0; i112 < tbVar2.f7829h.b(); i112++) {
                            NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) tbVar2.f7829h.t(i112);
                            if (namePackBoolSelectBean.isSelected) {
                                namePackBoolSelectBean.isSelected = false;
                                tbVar2.f7829h.e(i112);
                            }
                        }
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7828g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 6));
        x9.a1 a1Var = new x9.a1(context);
        this.f7829h = a1Var;
        this.f7828g.setAdapter(a1Var);
        this.f7829h.f2881e = new p7(12, this);
        nh.b.i0(0).b(new p0(19, this));
    }
}
