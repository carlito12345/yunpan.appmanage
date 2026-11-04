package ja;

import android.os.Message;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.util.k;
import fg.j;
import fg.m;
import java.io.IOException;
import java.text.DecimalFormat;
import ta.q;

/* loaded from: classes.dex */
public final class h extends m {

    /* renamed from: a, reason: collision with root package name */
    public long f9839a;

    /* renamed from: b, reason: collision with root package name */
    public final WpTaskBean f9840b;

    /* renamed from: c, reason: collision with root package name */
    public long f9841c;

    /* renamed from: d, reason: collision with root package name */
    public final long f9842d;

    /* renamed from: e, reason: collision with root package name */
    public final ma.b f9843e;

    public h(j jVar, WpTaskBean wpTaskBean, long j10, ma.b bVar) {
        super(jVar);
        this.f9839a = 0L;
        this.f9841c = 0L;
        this.f9840b = wpTaskBean;
        this.f9842d = j10;
        this.f9843e = bVar;
    }

    @Override // fg.m, fg.x
    public final void write(fg.i iVar, long j10) throws IOException {
        if (this.f9840b.isTask_stop) {
            throw new IOException("用户主动停止任务");
        }
        super.write(iVar, j10);
        this.f9839a += j10;
        System.out.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - this.f9841c;
        long j12 = this.f9842d;
        if (j11 >= 1000 || this.f9839a >= j12) {
            this.f9841c = jCurrentTimeMillis;
            ma.b bVar = this.f9843e;
            if (bVar != null) {
                long j13 = this.f9839a;
                if (j12 < 1) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder("上传中：");
                DecimalFormat decimalFormat = k.f4034u0;
                k kVar = com.yunpan.appmanage.util.j.f4033a;
                DecimalFormat decimalFormat2 = k.f4034u0;
                double d10 = j13;
                Double.isNaN(d10);
                double d11 = j12;
                Double.isNaN(d11);
                String strN = q.n(decimalFormat2, (d10 * 100.0d) / d11, sb2, "%");
                WpTaskBean wpTaskBean = (WpTaskBean) bVar.f11023b;
                wpTaskBean.str1 = strN;
                Message messageObtain = Message.obtain();
                messageObtain.what = 10;
                messageObtain.obj = wpTaskBean;
                ((u) bVar.f11024c).sendMessage(messageObtain);
            }
        }
    }
}
