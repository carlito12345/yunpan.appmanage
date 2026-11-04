package ua;

import android.graphics.BitmapFactory;
import android.widget.TextView;
import com.davemorrissey.labs.subscaleview.ImageSource;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.ui.ActivityImage2;
import java.text.DecimalFormat;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class l2 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15798b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityImage2 f15799c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l2(ActivityImage2 activityImage2, int i10) {
        super(28);
        this.f15798b = i10;
        this.f15799c = activityImage2;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15798b) {
            case 0:
                String message = th2.getMessage();
                if (message != null && message.equals("加载失败")) {
                    Toaster.show((CharSequence) "加载失败");
                    this.f15799c.C.setImage(ImageSource.resource(R.drawable.tp_noroot));
                    break;
                }
                break;
            default:
                com.yunpan.appmanage.util.a0.y("旋转失败");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        ActivityImage2 activityImage2 = this.f15799c;
        switch (this.f15798b) {
            case 0:
                activityImage2.z(activityImage2.X);
                TextView textView = activityImage2.F;
                StringBuilder sb2 = new StringBuilder("第 ");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(kVar.f4076y.position + 1);
                sb2.append(" 张，共 ");
                sb2.append(kVar.f4076y.wpFiles.size());
                sb2.append(" 张");
                textView.setText(sb2.toString());
                TextView textView2 = activityImage2.H;
                ImageData imageData = kVar.f4076y;
                textView2.setText(imageData.wpFiles.get(imageData.position).name);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(activityImage2.X, options);
                int i10 = options.outWidth;
                int i11 = options.outHeight;
                TextView textView3 = activityImage2.G;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(i10);
                sb3.append(Marker.ANY_MARKER);
                sb3.append(i11);
                sb3.append("   ");
                ImageData imageData2 = kVar.f4076y;
                sb3.append(imageData2.wpFiles.get(imageData2.position).size_txt);
                textView3.setText(sb3.toString());
                if (com.yunpan.appmanage.util.v.f4106a.G0) {
                    activityImage2.Z.sendEmptyMessageDelayed(0, r1.H0 * 1000);
                    break;
                }
                break;
            default:
                StringBuilder sb4 = new StringBuilder();
                int i12 = ActivityImage2.M0;
                sb4.append(activityImage2.A.getCacheDir());
                sb4.append("/rotation.ming");
                activityImage2.z(sb4.toString());
                break;
        }
    }
}
