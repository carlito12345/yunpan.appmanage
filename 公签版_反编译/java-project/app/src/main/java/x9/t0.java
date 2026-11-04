package x9;

import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CodeEditorTopBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import java.util.List;

/* loaded from: classes.dex */
public final class t0 extends c6.b {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f18335i;

    public t0(int i10) {
        this.f18335i = i10;
        switch (i10) {
            case 1:
                this.f2874h.put(1, new d1(this));
                this.f2874h.put(2, new c1(this));
                break;
            case 2:
                this.f2874h.put(1, new p1(this));
                this.f2874h.put(2, new o1(this));
                break;
            case 3:
                this.f2874h.put(1, new x2(this));
                this.f2874h.put(2, new w2(this));
                this.f2874h.put(3, new v2(this));
                break;
            case 4:
                this.f2874h.put(1, new d3(this));
                this.f2874h.put(2, new c3(this));
                break;
            case 5:
                this.f2874h.put(1, new e5(this));
                this.f2874h.put(2, new d5(this));
                this.f2874h.put(3, new c5(this));
                break;
            default:
                this.f2874h.put(1, new p0(this));
                this.f2874h.put(2, new o0(this));
                this.f2874h.put(3, new n0(this));
                break;
        }
    }

    public static void G(t0 t0Var, h6.a aVar, z0 z0Var) {
        t0Var.getClass();
        aVar.c(R.id.v_name, z0Var.f18408c);
        aVar.c(R.id.v_str1, z0Var.f18409d);
        aVar.b(R.id.v_ico, z0Var.f18407b ? R.drawable.check2 : R.drawable.check1);
        if (z0Var.f18406a == 2) {
            aVar.c(R.id.v_str2, z0Var.f18410e);
        }
    }

    public static void H(h6.a aVar, KeyMapSelectBean keyMapSelectBean) {
        aVar.c(R.id.v_name, keyMapSelectBean.gn_name);
        if (keyMapSelectBean.gn_type == -2) {
            aVar.b(R.id.v_ico, keyMapSelectBean.ico);
        }
    }

    public static void I(h6.a aVar, LogcatBean logcatBean) {
        if (logcatBean == null) {
            return;
        }
        aVar.c(R.id.v_level, logcatBean.level);
        aVar.c(R.id.v_time, logcatBean.time + " " + logcatBean.pid + " " + logcatBean.tid);
        aVar.c(R.id.v_pack, logcatBean.packName);
        aVar.c(R.id.v_tag, logcatBean.tag);
        aVar.c(R.id.v_msg, logcatBean.msg);
    }

    public static void J(h6.a aVar, NameIcoTypeBean nameIcoTypeBean) {
        aVar.c(R.id.v_name, nameIcoTypeBean.name);
        if (nameIcoTypeBean.type != 3) {
            aVar.b(R.id.v_ico, nameIcoTypeBean.resId);
        }
    }

    public static void K(h6.a aVar, l3 l3Var) {
        aVar.c(R.id.v_name, l3Var.f18272b);
        int i10 = l3Var.f18271a;
        if (i10 != -1) {
            aVar.b(R.id.v_ico, i10);
        }
    }

    @Override // c6.g
    public final int u(int i10, List list) {
        switch (this.f18335i) {
            case 0:
                if (((NameIcoTypeBean) list.get(i10)).type == 1) {
                    return 1;
                }
                return ((NameIcoTypeBean) list.get(i10)).type == 2 ? 2 : 3;
            case 1:
                return ((CodeEditorTopBean) list.get(i10)).ico != -1 ? 1 : 2;
            case 2:
                return ((z0) list.get(i10)).f18406a;
            case 3:
                if (((KeyMapSelectBean) list.get(i10)).gn_type == -1) {
                    return 1;
                }
                return ((KeyMapSelectBean) list.get(i10)).gn_type == -2 ? 3 : 2;
            case 4:
                return i10 % 2 == 0 ? 1 : 2;
            default:
                if (((l3) list.get(i10)).f18271a == -1) {
                    return 1;
                }
                return (((l3) list.get(i10)).f18271a == R.drawable.tp_check1 || ((l3) list.get(i10)).f18271a == R.drawable.tp_check2) ? 3 : 2;
        }
    }
}
