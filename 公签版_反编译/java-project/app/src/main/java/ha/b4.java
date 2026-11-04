package ha;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
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
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final /* synthetic */ class b4 implements c6.e, c6.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c4 f6783a;

    public /* synthetic */ b4(c4 c4Var) {
        this.f6783a = c4Var;
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        c4 c4Var = this.f6783a;
        if (((String) c4Var.f6846h.t(i10)).equals("打开") && !c4Var.l.isEmpty()) {
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (!wVar.h(c4Var.l).isEmpty()) {
                wVar.a(c4Var.l);
                Toaster.show((CharSequence) ("已取消[" + c4Var.l + "]类型文件的默认打开程序"));
                c4Var.f6847i.setVisibility(8);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0287 A[Catch: Exception -> 0x02eb, TryCatch #1 {Exception -> 0x02eb, blocks: (B:80:0x0201, B:82:0x0214, B:84:0x021c, B:86:0x0228, B:93:0x027b, B:94:0x0280, B:95:0x0287, B:96:0x028e, B:98:0x02bf, B:100:0x02d4, B:102:0x02e4, B:101:0x02dc, B:97:0x02bb, B:90:0x0248), top: B:142:0x0201, inners: #2, #3 }] */
    @Override // c6.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x(c6.g gVar, View view, int i10) {
        Uri uriFromFile;
        Uri uriFromFile2;
        int i11;
        int i12 = 2;
        int i13 = 4;
        c4 c4Var = this.f6783a;
        ua.u8 u8Var = c4Var.f6848j;
        String str = (String) c4Var.f6846h.t(i10);
        ua.i9 i9Var = u8Var.f15990a;
        i9Var.getClass();
        boolean zEquals = str.equals("上传");
        int i14 = u8Var.f15992c;
        if (!zEquals) {
            boolean zEquals2 = str.equals("安装");
            x9.w3 w3Var = u8Var.f15991b;
            if (zEquals2) {
                i9Var.s(w3Var.f18365b);
            } else if (str.equals("打开")) {
                x9.w3 w3Var2 = (x9.w3) i9Var.z.t(i14);
                if (w3Var2.f18366c) {
                    i9Var.f15756x.q(w3Var2);
                    i9Var.f15755w.requestFocus();
                    g.b.x(i9Var.f15756x, 1, i9Var.f15755w);
                    i9Var.n(w3Var2, false);
                } else {
                    try {
                        if (!new File(w3Var2.f18365b).exists()) {
                            Toaster.show((CharSequence) "第三方应该无权限打开此文件");
                        }
                    } catch (Exception unused) {
                    }
                    int iLastIndexOf = w3Var2.f18364a.lastIndexOf(".");
                    String lowerCase = iLastIndexOf > 0 ? (p000if.a.f0(w3Var2.f18364a) || w3Var2.f18364a.endsWith(".pcm")) ? "音乐" : p000if.a.j0(w3Var2.f18364a) ? "视频" : p000if.a.c0(w3Var2.f18364a) ? "图片" : p000if.a.i0(w3Var2.f18364a) ? "文本" : w3Var2.f18365b.substring(iLastIndexOf).toLowerCase(Locale.getDefault()) : "";
                    String strH = com.yunpan.appmanage.util.v.f4106a.h(lowerCase);
                    if (lowerCase.isEmpty() || !strH.contains("----")) {
                        File file = new File(w3Var2.f18365b);
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.addFlags(268435456);
                        if (Build.VERSION.SDK_INT >= 24) {
                            uriFromFile = FileProvider.c(i9Var.f4529e, i9Var.f4529e.getPackageName() + ".fileprovider", file);
                            intent.addFlags(1);
                            intent.addFlags(2);
                            intent.addFlags(64);
                            intent.addFlags(128);
                        } else {
                            uriFromFile = Uri.fromFile(file);
                        }
                        intent.setDataAndType(uriFromFile, com.yunpan.appmanage.util.a0.i(file));
                        List<ResolveInfo> listQueryIntentActivities = i9Var.f4529e.getPackageManager().queryIntentActivities(intent, 0);
                        ArrayList arrayList = new ArrayList();
                        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                            if (resolveInfo.activityInfo.exported) {
                                Drawable drawableLoadIcon = resolveInfo.loadIcon(i9Var.f4529e.getPackageManager());
                                String string = resolveInfo.activityInfo.loadLabel(i9Var.f4529e.getPackageManager()).toString();
                                ActivityInfo activityInfo = resolveInfo.activityInfo;
                                arrayList.add(new x9.t3(drawableLoadIcon, string, activityInfo.packageName, activityInfo.name));
                            }
                        }
                        if (arrayList.isEmpty()) {
                            Toaster.showLong((CharSequence) "没找到合适的第三方应用打开此类型文件");
                        } else {
                            new oa(i9Var.f4530f, i9Var.f4529e, w3Var2.f18365b, lowerCase, arrayList).show();
                        }
                    } else {
                        String[] strArrSplit = strH.split("----");
                        String str2 = strArrSplit[0];
                        String str3 = strArrSplit[1];
                        try {
                            File file2 = new File(w3Var2.f18365b);
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.addFlags(268435456);
                            if (Build.VERSION.SDK_INT >= 24) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                if (!kVar.f4055k) {
                                    uriFromFile2 = FileProvider.c(i9Var.f4529e, i9Var.f4529e.getPackageName() + ".fileprovider", file2);
                                    intent2.addFlags(1);
                                    intent2.addFlags(2);
                                    intent2.addFlags(64);
                                    intent2.addFlags(128);
                                } else if (!file2.getPath().startsWith("/data/data/")) {
                                    if (file2.getPath().startsWith("/data/" + kVar.f4041d + "/")) {
                                        com.yunpan.appmanage.util.a0.t("公签UID版的文件，第三方应用无权打开");
                                    } else {
                                        try {
                                            try {
                                                intent2.addFlags(67108864);
                                                intent2.putExtra("file_path", file2.getPath());
                                                intent2.putExtra("file_type", com.yunpan.appmanage.util.a0.i(file2));
                                                intent2.putExtra("pkg", str2);
                                                intent2.putExtra("cls", str3);
                                                intent2.setComponent(new ComponentName("com.gj.openfile", "com.gj.openfile.MainActivity"));
                                                i9Var.f4529e.startActivity(intent2);
                                            } catch (Exception e7) {
                                                e7.printStackTrace();
                                            }
                                        } catch (ActivityNotFoundException unused2) {
                                            com.yunpan.appmanage.util.a0.t("公签UID版需安装[管家打开插件]，否则无法让第三方应用打开文件");
                                        }
                                    }
                                }
                            } else {
                                uriFromFile2 = Uri.fromFile(file2);
                            }
                            intent2.setDataAndType(uriFromFile2, com.yunpan.appmanage.util.a0.i(file2));
                            if (str3.equals(i9Var.f4529e.getString(R.string.EditorActivity))) {
                                intent2.setClass(i9Var.f4529e, ActivityCodeEditor.class);
                            } else {
                                intent2.setComponent(new ComponentName(str2, str3));
                            }
                            i9Var.f4529e.startActivity(intent2);
                        } catch (Exception unused3) {
                            com.yunpan.appmanage.util.a0.z("默认打开失败，请重新选择打开程序", false);
                            com.yunpan.appmanage.util.v.f4106a.a(lowerCase);
                        }
                    }
                }
            } else if (str.equals("删除")) {
                x9.w3 w3Var3 = (x9.w3) i9Var.z.t(i14);
                i9Var.f15744h.c("删除中");
                a2.w0 w0Var = fa.b0.f5652a;
                String str4 = w3Var3.f18365b;
                w0Var.f347c = new ua.u8(i9Var, w3Var3, i14);
                u9.d.f15554a.execute(new fa.u(w0Var, str4, 4));
            } else if (str.equals("改名")) {
                new hb(i9Var.f4530f, i9Var.f4529e, w3Var, 2, new ua.t8(i9Var, i14, i13)).show();
            } else if (str.equals("复制")) {
                i9Var.o(i14, false);
            } else if (str.equals("移动")) {
                i9Var.o(i14, true);
            } else if (str.equals("解压")) {
                i9Var.p(i14, null);
            } else if (str.equals("压缩")) {
                x9.w3 w3Var4 = (x9.w3) i9Var.z.t(i14);
                new ke(i9Var.f4530f, i9Var.f4529e, w3Var4.f18365b, new ua.g6(i9Var, 7, w3Var4)).show();
            }
        } else if (i9Var.f15749n.b() == 1 && ((WpPathBean) i9Var.f15749n.t(0)).path.isEmpty() && ((x9.n5) i9Var.f15746j.t(i9Var.T)).f18290a != 21) {
            Toaster.show((CharSequence) "不能上传到当前位置，请在左侧选择要上传到的目录");
        } else if (i9Var.f15749n.b() == 0) {
            com.yunpan.appmanage.util.a0.u("请先在左侧打开你的网盘，并打开要上传到的目录");
        } else {
            WpTaskBean wpTaskBean = new WpTaskBean();
            wpTaskBean.type = 2;
            wpTaskBean.userInfo = (x9.n5) i9Var.f15746j.t(i9Var.T);
            x9.a6 a6Var = i9Var.f15749n;
            wpTaskBean.wpRootPath = (WpPathBean) a6Var.t(a6Var.b() - 1);
            wpTaskBean.bdRootPath = (x9.w3) i9Var.z.t(i14);
            if (!new File(wpTaskBean.bdRootPath.f18365b).canRead()) {
                com.yunpan.appmanage.util.a0.y("无权限读取此".concat(wpTaskBean.bdRootPath.f18366c ? "目录" : "文件"));
            } else if (wpTaskBean.userInfo.f18290a == 1) {
                x9.w3 w3Var5 = wpTaskBean.bdRootPath;
                if (w3Var5.f18366c) {
                    com.yunpan.appmanage.util.a0.u("蓝奏云不支持文件夹上传");
                } else if (w3Var5.f18367d >= 104857600) {
                    com.yunpan.appmanage.util.a0.u("蓝奏云不支持上传大于100M的文件");
                } else {
                    int iLastIndexOf2 = w3Var5.f18364a.lastIndexOf(".");
                    if (iLastIndexOf2 > 0) {
                        String strSubstring = wpTaskBean.bdRootPath.f18364a.substring(iLastIndexOf2);
                        if (strSubstring.isEmpty() || !".apk.zip.rar.txt.7z.z.e.ct.doc.docx.exe.ke.db.tar.pdf.epub.mobi.azw.azw3.w3x.osk.osz.jar.xpk.cpk.lua.dmg.ppt.pptx.xls.xlsx.mp3.gz.psd.ipa.iso.ttf.txf.ttc.dwg.bat.dll.deb.rp.rpm.rplib.mobileconfig.appimage.img.imazingapp.lolgezi.bin.xapk.flac.conf.crx.gho.patch.cad.hwt.accdb.ce.xmind.enc.bds.bdi.ssf.it.pkg.cfg".contains(strSubstring)) {
                            com.yunpan.appmanage.util.a0.u("蓝奏云不支持此类型文件上传");
                        } else if (wpTaskBean.bdRootPath.f18366c && ((i11 = wpTaskBean.userInfo.f18290a) == 20 || i11 == 21)) {
                            com.yunpan.appmanage.util.a0.u("暂不支持文件夹上传");
                        } else {
                            i9Var.f15744h.c("分配中");
                            new mc.c(0, new ph.j(i13, wpTaskBean)).d(rc.f.f13757b).a(fc.b.a()).b(new ua.a9(i9Var, i12));
                        }
                    }
                }
            }
        }
        c4Var.dismiss();
    }
}
