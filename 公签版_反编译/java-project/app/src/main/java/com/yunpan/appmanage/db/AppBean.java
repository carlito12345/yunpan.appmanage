package com.yunpan.appmanage.db;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class AppBean {
    public String apkParentPath;
    public String apkPath;
    public String dataDir;
    public boolean isCanStart;
    public boolean isDisable;
    public boolean isHide;
    public boolean isSystem;
    public boolean isUnInstall;
    public String name;
    public String pack;
    public int uid;

    public AppBean() {
        this.apkParentPath = "";
        this.uid = -1;
    }

    public AppBean(String str, String str2) {
        this.apkParentPath = "";
        this.uid = -1;
        this.name = str;
        this.pack = str2;
    }

    public AppBean(ApplicationInfo applicationInfo) throws NoSuchFieldException, Resources.NotFoundException, PackageManager.NameNotFoundException, IOException, SecurityException {
        int i10;
        Drawable drawableLoadIcon;
        AssetManager assetManager;
        this.apkParentPath = "";
        this.uid = -1;
        String str = applicationInfo.sourceDir;
        Resources resources = null;
        if (str != null && !str.isEmpty() && a0.g(applicationInfo.sourceDir)) {
            AppStart appStart = AppStart.f3772h;
            String str2 = applicationInfo.sourceDir;
            try {
                assetManager = (AssetManager) AssetManager.class.newInstance();
                AssetManager.class.getDeclaredMethod("addAssetPath", String.class).invoke(assetManager, str2);
            } catch (Throwable unused) {
                assetManager = null;
            }
            if (assetManager != null) {
                resources = new Resources(assetManager, appStart.getResources().getDisplayMetrics(), appStart.getResources().getConfiguration());
            }
        }
        try {
            File file = new File(v.f4106a.f4107a + applicationInfo.packageName + ".png");
            if (!a0.f(file)) {
                if (resources != null) {
                    int i11 = applicationInfo.icon;
                    if (i11 == 0) {
                        drawableLoadIcon = AppStart.f3772h.getResources().getDrawable(R.drawable.tp_cj);
                    } else {
                        drawableLoadIcon = resources.getDrawable(i11);
                    }
                } else {
                    DecimalFormat decimalFormat = k.f4034u0;
                    drawableLoadIcon = applicationInfo.loadIcon(j.f4033a.f4037b);
                }
                int intrinsicWidth = drawableLoadIcon.getIntrinsicWidth();
                int intrinsicHeight = drawableLoadIcon.getIntrinsicHeight();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawableLoadIcon.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableLoadIcon.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                drawableLoadIcon.draw(canvas);
                DecimalFormat decimalFormat2 = k.f4034u0;
                int i12 = j.f4033a.R;
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, i12, i12, true);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                bitmapCreateScaledBitmap.recycle();
                try {
                    bitmapCreateBitmap.recycle();
                } catch (Exception unused2) {
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        if (resources != null && (i10 = applicationInfo.labelRes) != 0) {
            this.name = resources.getString(i10);
        } else {
            CharSequence charSequence = applicationInfo.nonLocalizedLabel;
            if (charSequence != null) {
                this.name = charSequence.toString();
            } else {
                this.name = applicationInfo.packageName;
            }
        }
        if (resources != null) {
            resources.flushLayoutCache();
            resources.getAssets().close();
        }
        this.pack = applicationInfo.packageName;
        String str3 = applicationInfo.sourceDir;
        this.apkPath = str3;
        if (str3 == null) {
            this.apkPath = "";
        }
        if (!this.apkPath.isEmpty()) {
            this.apkParentPath = new File(this.apkPath).getParent();
            if (this.apkPath.startsWith("/data/app/")) {
                String[] strArrSplit = this.apkPath.split("/");
                if (strArrSplit.length > 4) {
                    this.apkParentPath = "/" + strArrSplit[1] + "/" + strArrSplit[2] + "/" + strArrSplit[3];
                } else {
                    this.apkParentPath = "";
                }
            }
        }
        this.uid = applicationInfo.uid;
        this.dataDir = applicationInfo.dataDir;
        this.isDisable = !applicationInfo.enabled;
        int i13 = applicationInfo.flags;
        if ((i13 & 1) != 0) {
            this.isSystem = true;
        } else {
            this.isSystem = false;
        }
        if ((i13 & 8388608) == 0) {
            this.isUnInstall = true;
        } else {
            this.isUnInstall = false;
        }
        try {
            try {
                Field declaredField = ApplicationInfo.class.getDeclaredField("privateFlags");
                declaredField.setAccessible(true);
                if ((declaredField.getInt(applicationInfo) & 1) != 0) {
                    this.isHide = true;
                    this.isCanStart = false;
                    return;
                }
            } catch (Exception unused3) {
                this.isHide = true;
                this.isCanStart = false;
                return;
            }
        } catch (Exception unused4) {
            DecimalFormat decimalFormat3 = k.f4034u0;
            j.f4033a.f4037b.getPackageInfo(applicationInfo.packageName, 8);
            this.isHide = false;
        }
        DecimalFormat decimalFormat4 = k.f4034u0;
        if (j.f4033a.f4037b.getLaunchIntentForPackage(applicationInfo.packageName) == null) {
            this.isCanStart = false;
        } else {
            this.isCanStart = true;
        }
    }
}
