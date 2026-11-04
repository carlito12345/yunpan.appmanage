package ua;

import android.provider.Settings;
import android.view.View;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;

/* loaded from: classes.dex */
public final /* synthetic */ class j5 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityOuShangWhitelist f15769a;

    public /* synthetic */ j5(ActivityOuShangWhitelist activityOuShangWhitelist) {
        this.f15769a = activityOuShangWhitelist;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        ActivityOuShangWhitelist activityOuShangWhitelist = this.f15769a;
        String strL = "";
        for (NameContentSelectBean nameContentSelectBean : activityOuShangWhitelist.E.v()) {
            if (nameContentSelectBean.isSelect) {
                strL = g.b.l(nameContentSelectBean.content, ",", g.b.m(strL));
            }
        }
        if (!strL.isEmpty()) {
            strL = android.support.v4.media.session.a.l(1, 0, strL);
        }
        Boolean boolValueOf = Boolean.FALSE;
        try {
            boolValueOf = Boolean.valueOf(Settings.Global.putString(activityOuShangWhitelist.F, "OUSHANG_WHILTE_APP_LIST", strL));
        } catch (Exception unused) {
        }
        if (!boolValueOf.booleanValue()) {
            String str = "settings put global OUSHANG_WHILTE_APP_LIST '" + strL + "'";
            fa.b0.f5652a.getClass();
            if (a2.w0.h(str).f5648a != 0) {
                android.support.v4.media.session.a.B("修改失败", bVar);
                return;
            }
        }
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityOuShangWhitelist activityOuShangWhitelist = this.f15769a;
        if (((NameContentSelectBean) activityOuShangWhitelist.E.t(i10)).isSelect) {
            com.yunpan.appmanage.util.a0.u("已安装的应用，请勿删除");
        } else {
            new ha.z6(activityOuShangWhitelist, activityOuShangWhitelist, "是否要删除此白名单", "", "确定", "取消", new d3.g(i10, 17, activityOuShangWhitelist)).show();
        }
    }
}
