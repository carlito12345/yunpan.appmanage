package ba;

import android.os.Message;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import java.text.DecimalFormat;
import okhttp3.Response;

/* loaded from: classes.dex */
public final class p extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2736b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WpTaskBean f2737c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ u f2738d;

    public /* synthetic */ p(WpTaskBean wpTaskBean, u uVar, int i10) {
        this.f2736b = i10;
        this.f2737c = wpTaskBean;
        this.f2738d = uVar;
    }

    @Override // nh.b
    public final void f0() {
        switch (this.f2736b) {
            case 0:
                this.f2737c.upload_state = 1;
                break;
            default:
                this.f2737c.upload_state = 1;
                break;
        }
    }

    @Override // nh.b
    public final void g0(v3.f fVar) {
        switch (this.f2736b) {
            case 0:
                this.f2737c.upload_state = 0;
                break;
            default:
                WpTaskBean wpTaskBean = this.f2737c;
                wpTaskBean.upload_state = 0;
                wpTaskBean.str_ETag = ((Response) fVar.f16476d).headers().get(HttpHeaders.ETAG);
                System.out.getClass();
                break;
        }
    }

    @Override // nh.b
    public final void r0(k9.d dVar) {
        u uVar = this.f2738d;
        WpTaskBean wpTaskBean = this.f2737c;
        switch (this.f2736b) {
            case 0:
                StringBuilder sb2 = new StringBuilder("上传中：");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                wpTaskBean.str1 = ta.q.n(com.yunpan.appmanage.util.k.f4034u0, dVar.f10214a * 100.0f, sb2, "%");
                Message messageObtain = Message.obtain();
                messageObtain.what = 10;
                messageObtain.obj = wpTaskBean;
                uVar.sendMessage(messageObtain);
                break;
            default:
                StringBuilder sb3 = new StringBuilder("上传中：");
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                wpTaskBean.str1 = ta.q.n(com.yunpan.appmanage.util.k.f4034u0, dVar.f10214a * 100.0f, sb3, "%");
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 10;
                messageObtain2.obj = wpTaskBean;
                uVar.sendMessage(messageObtain2);
                break;
        }
    }

    @Override // f9.a
    public final /* bridge */ /* synthetic */ Object t(Response response) {
        switch (this.f2736b) {
        }
        return "";
    }
}
