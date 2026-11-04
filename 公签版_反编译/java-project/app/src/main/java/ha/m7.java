package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyCodeBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final p8 f7413g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7414h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f7415i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7416j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f7417k;
    public EditText l;

    /* renamed from: m, reason: collision with root package name */
    public EditText f7418m;

    /* renamed from: n, reason: collision with root package name */
    public EditText f7419n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f7420p;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f7421q;
    public ConstraintLayout r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f7422s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f7423t;

    /* renamed from: v, reason: collision with root package name */
    public KeyCodeBean f7424v;

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList f7425w;

    public m7(Activity activity, Context context, p8 p8Var) {
        super(activity, context, R.layout.dialog_input_swipe);
        this.f7425w = new ArrayList();
        this.f7413g = p8Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7414h = (EditText) findViewById(R.id.v_edit_x1);
        this.f7415i = (EditText) findViewById(R.id.v_edit_y1);
        this.f7416j = (EditText) findViewById(R.id.v_edit_x2);
        this.f7417k = (EditText) findViewById(R.id.v_edit_y2);
        this.l = (EditText) findViewById(R.id.v_edit_x3);
        this.f7418m = (EditText) findViewById(R.id.v_edit_y3);
        this.f7419n = (EditText) findViewById(R.id.v_edit_time);
        this.f7420p = (LinearLayout) findViewById(R.id.v_lay2);
        this.f7421q = (LinearLayout) findViewById(R.id.v_lay3);
        this.r = (ConstraintLayout) findViewById(R.id.v_type);
        this.f7422s = (TextView) findViewById(R.id.v_type_name);
        this.f7423t = (TextView) findViewById(R.id.v_btn);
        this.f7420p.setVisibility(8);
        this.f7421q.setVisibility(8);
        KeyCodeBean keyCodeBean = new KeyCodeBean(0, "单指");
        this.f7424v = keyCodeBean;
        ArrayList arrayList = this.f7425w;
        arrayList.add(keyCodeBean);
        arrayList.add(new KeyCodeBean(1, "双指"));
        arrayList.add(new KeyCodeBean(2, "三指"));
        final int i10 = 0;
        this.r.setOnClickListener(new View.OnClickListener(this) { // from class: ha.l7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m7 f7361b;

            {
                this.f7361b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        m7 m7Var = this.f7361b;
                        ArrayList arrayList2 = m7Var.f7425w;
                        a1.d dVar = new a1.d(29, m7Var);
                        new ha(m7Var.f6724a, m7Var.f6725b, null, arrayList2, dVar).show();
                        break;
                    default:
                        m7 m7Var2 = this.f7361b;
                        m7Var2.getClass();
                        z7.s sVar = new z7.s();
                        z7.o oVar = new z7.o();
                        String[] strArrSplit = m7Var2.f7414h.getText().toString().trim().replace("，", ",").split(",");
                        if (strArrSplit.length == 2) {
                            z7.s sVar2 = new z7.s();
                            sVar2.l("start_x", Integer.valueOf(strArrSplit[0].trim()));
                            sVar2.l("start_y", Integer.valueOf(strArrSplit[1].trim()));
                            String[] strArrSplit2 = m7Var2.f7415i.getText().toString().trim().replace("，", ",").split(",");
                            if (strArrSplit2.length == 2) {
                                sVar2.l("end_x", Integer.valueOf(strArrSplit2[0].trim()));
                                sVar2.l("end_y", Integer.valueOf(strArrSplit2[1].trim()));
                                oVar.k(sVar2);
                                if (m7Var2.f7424v.keyCode > 0) {
                                    String[] strArrSplit3 = m7Var2.f7416j.getText().toString().trim().replace("，", ",").split(",");
                                    if (strArrSplit3.length != 2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                        break;
                                    } else {
                                        z7.s sVar3 = new z7.s();
                                        sVar3.l("start_x", Integer.valueOf(strArrSplit3[0].trim()));
                                        sVar3.l("start_y", Integer.valueOf(strArrSplit3[1].trim()));
                                        String[] strArrSplit4 = m7Var2.f7417k.getText().toString().trim().replace("，", ",").split(",");
                                        if (strArrSplit4.length != 2) {
                                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                            break;
                                        } else {
                                            sVar3.l("end_x", Integer.valueOf(strArrSplit4[0].trim()));
                                            sVar3.l("end_y", Integer.valueOf(strArrSplit4[1].trim()));
                                            oVar.k(sVar3);
                                        }
                                    }
                                }
                                if (m7Var2.f7424v.keyCode > 1) {
                                    String[] strArrSplit5 = m7Var2.l.getText().toString().trim().replace("，", ",").split(",");
                                    if (strArrSplit5.length != 2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                        break;
                                    } else {
                                        z7.s sVar4 = new z7.s();
                                        sVar4.l("start_x", Integer.valueOf(strArrSplit5[0].trim()));
                                        sVar4.l("start_y", Integer.valueOf(strArrSplit5[1].trim()));
                                        String[] strArrSplit6 = m7Var2.f7418m.getText().toString().trim().replace("，", ",").split(",");
                                        if (strArrSplit6.length != 2) {
                                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                            break;
                                        } else {
                                            sVar4.l("end_x", Integer.valueOf(strArrSplit6[0].trim()));
                                            sVar4.l("end_y", Integer.valueOf(strArrSplit6[1].trim()));
                                            oVar.k(sVar4);
                                        }
                                    }
                                }
                                if (!m7Var2.f7419n.getText().toString().trim().isEmpty()) {
                                    sVar.l("time", Integer.valueOf(m7Var2.f7419n.getText().toString().trim()));
                                    sVar.j("points", oVar);
                                    m7Var2.f7413g.k(sVar);
                                    m7Var2.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入滑动时长");
                                    break;
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                            break;
                        }
                }
            }
        });
        final int i11 = 1;
        this.f7423t.setOnClickListener(new View.OnClickListener(this) { // from class: ha.l7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ m7 f7361b;

            {
                this.f7361b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        m7 m7Var = this.f7361b;
                        ArrayList arrayList2 = m7Var.f7425w;
                        a1.d dVar = new a1.d(29, m7Var);
                        new ha(m7Var.f6724a, m7Var.f6725b, null, arrayList2, dVar).show();
                        break;
                    default:
                        m7 m7Var2 = this.f7361b;
                        m7Var2.getClass();
                        z7.s sVar = new z7.s();
                        z7.o oVar = new z7.o();
                        String[] strArrSplit = m7Var2.f7414h.getText().toString().trim().replace("，", ",").split(",");
                        if (strArrSplit.length == 2) {
                            z7.s sVar2 = new z7.s();
                            sVar2.l("start_x", Integer.valueOf(strArrSplit[0].trim()));
                            sVar2.l("start_y", Integer.valueOf(strArrSplit[1].trim()));
                            String[] strArrSplit2 = m7Var2.f7415i.getText().toString().trim().replace("，", ",").split(",");
                            if (strArrSplit2.length == 2) {
                                sVar2.l("end_x", Integer.valueOf(strArrSplit2[0].trim()));
                                sVar2.l("end_y", Integer.valueOf(strArrSplit2[1].trim()));
                                oVar.k(sVar2);
                                if (m7Var2.f7424v.keyCode > 0) {
                                    String[] strArrSplit3 = m7Var2.f7416j.getText().toString().trim().replace("，", ",").split(",");
                                    if (strArrSplit3.length != 2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                        break;
                                    } else {
                                        z7.s sVar3 = new z7.s();
                                        sVar3.l("start_x", Integer.valueOf(strArrSplit3[0].trim()));
                                        sVar3.l("start_y", Integer.valueOf(strArrSplit3[1].trim()));
                                        String[] strArrSplit4 = m7Var2.f7417k.getText().toString().trim().replace("，", ",").split(",");
                                        if (strArrSplit4.length != 2) {
                                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                            break;
                                        } else {
                                            sVar3.l("end_x", Integer.valueOf(strArrSplit4[0].trim()));
                                            sVar3.l("end_y", Integer.valueOf(strArrSplit4[1].trim()));
                                            oVar.k(sVar3);
                                        }
                                    }
                                }
                                if (m7Var2.f7424v.keyCode > 1) {
                                    String[] strArrSplit5 = m7Var2.l.getText().toString().trim().replace("，", ",").split(",");
                                    if (strArrSplit5.length != 2) {
                                        com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                        break;
                                    } else {
                                        z7.s sVar4 = new z7.s();
                                        sVar4.l("start_x", Integer.valueOf(strArrSplit5[0].trim()));
                                        sVar4.l("start_y", Integer.valueOf(strArrSplit5[1].trim()));
                                        String[] strArrSplit6 = m7Var2.f7418m.getText().toString().trim().replace("，", ",").split(",");
                                        if (strArrSplit6.length != 2) {
                                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                            break;
                                        } else {
                                            sVar4.l("end_x", Integer.valueOf(strArrSplit6[0].trim()));
                                            sVar4.l("end_y", Integer.valueOf(strArrSplit6[1].trim()));
                                            oVar.k(sVar4);
                                        }
                                    }
                                }
                                if (!m7Var2.f7419n.getText().toString().trim().isEmpty()) {
                                    sVar.l("time", Integer.valueOf(m7Var2.f7419n.getText().toString().trim()));
                                    sVar.j("points", oVar);
                                    m7Var2.f7413g.k(sVar);
                                    m7Var2.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("请输入滑动时长");
                                    break;
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入正确的坐标");
                            break;
                        }
                }
            }
        });
    }
}
