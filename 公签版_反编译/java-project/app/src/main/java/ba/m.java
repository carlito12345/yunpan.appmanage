package ba;

import android.os.Message;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import java.text.DecimalFormat;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class m extends e9.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WpTaskBean f2719b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f2720c;

    public m(WpTaskBean wpTaskBean, u uVar) {
        this.f2719b = wpTaskBean;
        this.f2720c = uVar;
    }

    @Override // nh.b
    public final void f0() {
        WpTaskBean wpTaskBean = this.f2719b;
        wpTaskBean.str1 = "上传失败";
        wpTaskBean.upload_state = 1;
    }

    @Override // nh.b
    public final void g0(v3.f fVar) {
        String str = (String) fVar.f16474b;
        boolean zContains = str.contains("info");
        WpTaskBean wpTaskBean = this.f2719b;
        if (!zContains) {
            wpTaskBean.str1 = "失败：请重新登录";
            wpTaskBean.upload_state = 1;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt("zt") == 1) {
                wpTaskBean.str1 = "上传完成";
                wpTaskBean.upload_state = 0;
            } else {
                wpTaskBean.str1 = "失败：" + jSONObject.getString("info");
                wpTaskBean.upload_state = 1;
            }
        } catch (Exception unused) {
            wpTaskBean.str1 = "上传失败";
            wpTaskBean.upload_state = 1;
        }
    }

    @Override // nh.b
    public final void r0(k9.d dVar) {
        StringBuilder sb2 = new StringBuilder("上传中：");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String strN = ta.q.n(com.yunpan.appmanage.util.k.f4034u0, dVar.f10214a * 100.0f, sb2, "%");
        WpTaskBean wpTaskBean = this.f2719b;
        wpTaskBean.str1 = strN;
        Message messageObtain = Message.obtain();
        messageObtain.what = 10;
        messageObtain.obj = wpTaskBean;
        this.f2720c.sendMessage(messageObtain);
    }
}
