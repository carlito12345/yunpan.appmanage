package ha;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import androidx.core.content.FileProvider;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileAttributeBean;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* loaded from: classes.dex */
public final /* synthetic */ class t5 implements c6.f, c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7795a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v5 f7796b;

    public /* synthetic */ t5(v5 v5Var, int i10) {
        this.f7795a = i10;
        this.f7796b = v5Var;
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        v5 v5Var = this.f7796b;
        String str = ((x9.l3) v5Var.f7913m.t(i10)).f18272b;
        if (str.contains("打开")) {
            if (!v5Var.f7916q.isEmpty()) {
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                if (!wVar.h(v5Var.f7916q).isEmpty()) {
                    wVar.a(v5Var.f7916q);
                    Toaster.show((CharSequence) ("已取消[" + v5Var.f7916q + "]类型文件的默认打开程序"));
                    v5Var.f7914n.setVisibility(8);
                    return true;
                }
            }
        } else if (str.contains("复制")) {
            ((ClipboardManager) v5Var.f6724a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, v5Var.f7915p.f18365b.trim()));
            Toaster.show((CharSequence) "已复制文件路径");
            return true;
        }
        return false;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        FileAttributeBean fileAttributeBeanC0;
        switch (this.f7795a) {
            case 2:
                ApkFileBean apkFileBean = MyDb.get().getApkFileDao().getApkFileBean(this.f7796b.f7915p.f18365b);
                if (apkFileBean != null) {
                    bVar.f(apkFileBean);
                }
                bVar.b();
                break;
            default:
                v5 v5Var = this.f7796b;
                v5Var.getClass();
                try {
                    a2.w0 w0Var = fa.b0.f5652a;
                    x9.w3 w3Var = v5Var.f7915p;
                    w0Var.getClass();
                    fileAttributeBeanC0 = a2.w0.c0(w3Var);
                } catch (Exception unused) {
                    fileAttributeBeanC0 = null;
                }
                if (fileAttributeBeanC0 != null) {
                    bVar.f(fileAttributeBeanC0);
                    bVar.b();
                    break;
                } else {
                    android.support.v4.media.session.a.B("查询属性失败", bVar);
                    break;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        Uri uriFromFile;
        Uri uriFromFile2;
        v5 v5Var = this.f7796b;
        v5Var.getClass();
        com.bumptech.glide.c.j(view);
        x9.t1 t1Var = v5Var.f7913m;
        String str = ((x9.l3) t1Var.t(i10)).f18272b;
        if (str.contains("返回")) {
            v5Var.dismiss();
            return;
        }
        boolean zContains = str.contains("打开");
        Context context = v5Var.f6725b;
        if (zContains) {
            x9.w3 w3Var = v5Var.f7915p;
            if (w3Var.f18366c) {
                v5Var.dismiss();
                v5Var.f7917s.b(str);
                return;
            }
            try {
                if (!com.yunpan.appmanage.util.a0.g(w3Var.f18365b)) {
                    Toaster.show((CharSequence) "第三方应该无权限打开此文件");
                }
            } catch (Exception unused) {
            }
            v5Var.dismiss();
            String strH = com.yunpan.appmanage.util.v.f4106a.h(v5Var.f7916q);
            if (!v5Var.f7916q.isEmpty() && strH.contains("----")) {
                String[] strArrSplit = strH.split("----");
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                try {
                    File file = new File(v5Var.f7915p.f18365b);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(268435456);
                    if (Build.VERSION.SDK_INT >= 24) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        if (kVar.f4055k) {
                            if (!file.getPath().startsWith("/data/data/")) {
                                if (!file.getPath().startsWith("/data/" + kVar.f4041d + "/")) {
                                    try {
                                        try {
                                            intent.addFlags(67108864);
                                            intent.putExtra("file_path", file.getPath());
                                            intent.putExtra("file_type", com.yunpan.appmanage.util.a0.i(file));
                                            intent.putExtra("pkg", str2);
                                            intent.putExtra("cls", str3);
                                            intent.setComponent(new ComponentName("com.gj.openfile", "com.gj.openfile.MainActivity"));
                                            context.startActivity(intent);
                                            return;
                                        } catch (ActivityNotFoundException unused2) {
                                            com.yunpan.appmanage.util.a0.t("公签UID版需安装管家打开插件，否则无法让第三方应用打开文件");
                                            return;
                                        }
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                        return;
                                    }
                                }
                            }
                            com.yunpan.appmanage.util.a0.t("公签UID版的文件，第三方应用无权打开");
                            return;
                        }
                        uriFromFile2 = FileProvider.c(context, context.getPackageName() + ".fileprovider", file);
                        intent.addFlags(1);
                        intent.addFlags(2);
                        intent.addFlags(64);
                        intent.addFlags(128);
                    } else {
                        uriFromFile2 = Uri.fromFile(file);
                    }
                    intent.setDataAndType(uriFromFile2, com.yunpan.appmanage.util.a0.i(file));
                    if (str3.equals(context.getString(R.string.EditorActivity))) {
                        intent.setClass(context, ActivityCodeEditor.class);
                    } else {
                        intent.setComponent(new ComponentName(str2, str3));
                    }
                    context.startActivity(intent);
                    return;
                } catch (Exception unused3) {
                    com.yunpan.appmanage.util.a0.z("默认打开失败，请重新选择程序", false);
                    com.yunpan.appmanage.util.v.f4106a.a(v5Var.f7916q);
                }
            }
            File file2 = new File(v5Var.f7915p.f18365b);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                uriFromFile = FileProvider.c(context, context.getPackageName() + ".fileprovider", file2);
                intent2.addFlags(1);
                intent2.addFlags(2);
                intent2.addFlags(64);
                intent2.addFlags(128);
            } else {
                uriFromFile = Uri.fromFile(file2);
            }
            intent2.setDataAndType(uriFromFile, com.yunpan.appmanage.util.a0.i(file2));
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent2, 0);
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                if (resolveInfo.activityInfo.exported) {
                    Drawable drawableLoadIcon = resolveInfo.loadIcon(context.getPackageManager());
                    String string = resolveInfo.activityInfo.loadLabel(context.getPackageManager()).toString();
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    arrayList.add(new x9.t3(drawableLoadIcon, string, activityInfo.packageName, activityInfo.name));
                }
            }
            if (arrayList.isEmpty()) {
                Toaster.showLong((CharSequence) "没找到合适的第三方应用打开此类型文件");
                return;
            } else {
                new oa(v5Var.f6724a, v5Var.f6725b, v5Var.f7915p.f18365b, v5Var.f7916q, arrayList).show();
                return;
            }
        }
        if (str.contains("浏览")) {
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("删除")) {
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("目录")) {
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.startsWith("复制")) {
            v5Var.dismiss();
            if (((x9.l3) t1Var.t(i10)).f18271a == R.drawable.tp_xy6) {
                v5Var.f7917s.b("复制到");
                return;
            } else {
                v5Var.f7917s.b(str);
                return;
            }
        }
        if (str.startsWith("剪切")) {
            v5Var.dismiss();
            if (((x9.l3) t1Var.t(i10)).f18271a == R.drawable.tp_xy6) {
                v5Var.f7917s.b("剪切到");
                return;
            } else {
                v5Var.f7917s.b(str);
                return;
            }
        }
        if (str.contains("改名")) {
            if (!com.yunpan.appmanage.util.a0.d(v5Var.f7915p.f18365b)) {
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.z("无权限更改此".concat(v5Var.f7915p.f18366c ? "目录" : "文件"), true);
                    return;
                }
            }
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("属性")) {
            int i11 = 0;
            new mc.c(i11, new t5(v5Var, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new u5(v5Var, i11));
            return;
        }
        if (str.contains("启动")) {
            if (v5Var.r.isDisable) {
                com.yunpan.appmanage.util.a0.z("此应用已被禁用无法打开,请先解禁", false);
                return;
            } else {
                v5Var.dismiss();
                p000if.a.E0(v5Var.f6724a, context, v5Var.r);
                return;
            }
        }
        if (str.contains("安装") || str.contains("重装")) {
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("解压")) {
            File file3 = new File(v5Var.f7915p.f18365b);
            x9.w3 w3Var2 = v5Var.f7915p;
            if (w3Var2.f18376n == null || !w3Var2.f18365b.endsWith(".zip")) {
                if (!file3.canRead() || !file3.getParentFile().canWrite()) {
                    com.yunpan.appmanage.util.a0.z("此目录无法写入文件，不能在此解压！", false);
                    return;
                }
            } else if (!((v3.f) v5Var.f7915p.f18376n.f16474b).s()) {
                com.yunpan.appmanage.util.a0.z("此目录无法写入文件，不能在此解压！", false);
                return;
            }
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("压缩")) {
            v3.f fVar = v5Var.f7915p.f18376n;
            if (fVar == null) {
                File file4 = new File(v5Var.f7915p.f18365b);
                if (!file4.canRead() || !file4.getParentFile().canWrite()) {
                    com.yunpan.appmanage.util.a0.z("此目录无法写入文件，不能在此压缩文件！", false);
                    return;
                }
            } else if (!((v3.f) fVar.f16474b).s()) {
                com.yunpan.appmanage.util.a0.z("此目录无法写入文件，不能在此压缩文件！", false);
                return;
            }
            v5Var.dismiss();
            v5Var.f7917s.b(str);
            return;
        }
        if (str.contains("传送")) {
            if (v5Var.f7915p.f18366c) {
                Toaster.showShort((CharSequence) "暂不支持文件夹传送");
                return;
            } else {
                v5Var.dismiss();
                v5Var.f7917s.b(str);
                return;
            }
        }
        if (str.equals("分享")) {
            v5Var.dismiss();
            try {
                Uri uriC = FileProvider.c(context, context.getPackageName() + ".fileprovider", new File(v5Var.f7915p.f18365b));
                Intent intent3 = new Intent("android.intent.action.SEND");
                intent3.setType(context.getContentResolver().getType(uriC));
                intent3.putExtra("android.intent.extra.STREAM", uriC);
                intent3.addFlags(1);
                intent3.addFlags(2);
                if (Build.VERSION.SDK_INT >= 19) {
                    intent3.addFlags(64);
                    intent3.addFlags(128);
                }
                context.startActivity(Intent.createChooser(intent3, "分享文件"));
            } catch (Exception e10) {
                g.b.s(e10, new StringBuilder("失败："));
            }
        }
    }
}
