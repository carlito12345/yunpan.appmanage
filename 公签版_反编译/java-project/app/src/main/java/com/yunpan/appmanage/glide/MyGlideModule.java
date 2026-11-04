package com.yunpan.appmanage.glide;

import android.content.Context;
import android.os.Environment;
import androidx.recyclerview.widget.h;
import bd.c;
import com.bumptech.glide.e;
import com.yunpan.appmanage.util.a0;
import java.io.File;
import q4.a;

/* loaded from: classes.dex */
public class MyGlideModule extends a {
    @Override // q4.a
    public final void b(Context context, e eVar) {
        File file;
        try {
            if (Environment.getExternalStorageState().contains("mounted")) {
                String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                if (!a0.g(absolutePath)) {
                    absolutePath = "/sdcard";
                }
                file = new File(absolutePath, "/." + context.getPackageName() + "/thumbnail/");
            } else {
                file = new File(context.getCacheDir().getParent() + "/image/thumbnail/");
            }
            file.getAbsolutePath();
            if (!file.exists()) {
                file.mkdirs();
            }
            eVar.f3310i = new h(new c(file.getAbsolutePath(), 2), 104857600L);
        } catch (Exception unused) {
        }
    }
}
