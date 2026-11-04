package ua;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.ui.ActivityImage2;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class k2 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15778a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityImage2 f15779b;

    public /* synthetic */ k2(ActivityImage2 activityImage2, int i10) {
        this.f15778a = i10;
        this.f15779b = activityImage2;
    }

    @Override // ec.d
    public final void g(mc.b bVar) throws Exception {
        ActivityImage2 activityImage2 = this.f15779b;
        switch (this.f15778a) {
            case 0:
                int i10 = ActivityImage2.M0;
                activityImage2.getClass();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                ImageData imageData = kVar.f4076y;
                WpPathBean wpPathBean = imageData.wpFiles.get(imageData.position);
                String strP0 = p000if.a.p0(kVar.A.b() + wpPathBean.name);
                if (!strP0.isEmpty()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(kVar.Y);
                    String strU = android.support.v4.media.session.a.u(sb2, kVar.A.f18296g, "/", strP0);
                    activityImage2.X = strU;
                    boolean zG = com.yunpan.appmanage.util.a0.g(strU);
                    if (!zG) {
                        x9.n5 n5Var = kVar.A;
                        int i11 = n5Var.f18290a;
                        if (i11 == 3) {
                            zG = qa.f.a(wpPathBean, strU, n5Var);
                        } else if (i11 == 4) {
                            zG = com.bumptech.glide.c.a(wpPathBean, strU, n5Var);
                        } else if (i11 == 5) {
                            zG = com.bumptech.glide.d.d(wpPathBean, strU, n5Var);
                        } else if (i11 == 6) {
                            p000if.a.f(n5Var);
                            zG = false;
                        } else if (i11 == 7) {
                            zG = qa.g.a(wpPathBean, strU, n5Var);
                        }
                    }
                    if (!strU.equals(activityImage2.X)) {
                        android.support.v4.media.session.a.B("跳过", bVar);
                        break;
                    } else if (zG) {
                        bVar.b();
                        break;
                    }
                }
                android.support.v4.media.session.a.B("加载失败", bVar);
                break;
            default:
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(activityImage2.X);
                Matrix matrix = new Matrix();
                matrix.postRotate(activityImage2.Y);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                ImageData imageData2 = com.yunpan.appmanage.util.j.f4033a.f4076y;
                String lowerCase = imageData2.wpFiles.get(imageData2.position).name.toLowerCase();
                if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                } else {
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                bVar.b();
                break;
        }
    }
}
