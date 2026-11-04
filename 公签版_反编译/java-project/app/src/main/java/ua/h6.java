package ua;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.text.Editable;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupMenu;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.File;
import java.util.Iterator;
import okhttp3.MediaType;

/* loaded from: classes.dex */
public final /* synthetic */ class h6 implements ec.d, fa.z, c6.e, TvRecyclerView.OnInBorderKeyEventListener, fa.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15717a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityShell f15718b;

    public /* synthetic */ h6(ActivityShell activityShell, int i10) {
        this.f15717a = i10;
        this.f15718b = activityShell;
    }

    @Override // fa.g
    public void a(fa.i iVar) {
        this.f15718b.D.setText(iVar.f5693c.toString());
    }

    @Override // fa.z
    public void e(fa.a0 a0Var) {
        ActivityShell activityShell = this.f15718b;
        switch (this.f15717a) {
            case 1:
                int i10 = ActivityShell.M;
                activityShell.getClass();
                String strA = a0Var.a();
                if (a0Var.f5648a != 0 || strA.contains("Err:")) {
                    com.yunpan.appmanage.util.a0.w("激活失败");
                    if (strA.contains("No such file or directory")) {
                        strA = strA.concat("\n没有找到start.sh文件，是否是未打开过此应用？");
                    } else if (strA.contains("Not allowed to set the device owner because ")) {
                        strA = strA.concat("\n您的设备上已授权有其它设备管理员，请先去掉，只允许一个设备管理员");
                    } else if (strA.contains("Trying to set the device owner, but device owner is already set")) {
                        strA = strA.concat("\n\n试图设置设备所有者，但已经设置了设备所有者");
                    }
                } else {
                    com.yunpan.appmanage.util.a0.w("激活成功");
                }
                activityShell.D.setText(strA);
                break;
            default:
                int i11 = ActivityShell.M;
                activityShell.getClass();
                String strA2 = a0Var.a();
                if (a0Var.f5648a == 0) {
                    com.yunpan.appmanage.util.a0.w("激活成功");
                } else {
                    com.yunpan.appmanage.util.a0.w("激活失败");
                    if (strA2.contains("No such file or directory")) {
                        strA2 = strA2.concat("\n没有找到start.sh文件，是否是未打开过此应用？");
                    } else if (strA2.contains("Not allowed to set the device owner because ")) {
                        strA2 = strA2.concat("\n您的设备上已授权有其它设备管理员，请先去掉，只允许一个设备管理员");
                    } else if (strA2.contains("Trying to set the device owner, but device owner is already set")) {
                        strA2 = strA2.concat("\n\n试图设置设备所有者，但已经设置了设备所有者");
                    }
                }
                activityShell.D.setText(strA2);
                break;
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        int i10 = ActivityShell.M;
        ActivityShell activityShell = this.f15718b;
        activityShell.getClass();
        File file = new File(g.b.g(fa.g0.f5682a, new StringBuilder(), "/Download/执行命令结果.txt"));
        try {
            file.delete();
            file.getParentFile().mkdir();
        } catch (Exception unused) {
        }
        if (q4.a.M(file, activityShell.D.getText().toString())) {
            com.yunpan.appmanage.util.a0.v("已导出在Download目录", false);
            MyDb.get().addIfFile(file);
        } else {
            com.yunpan.appmanage.util.a0.s("导出失败", true);
        }
        bVar.b();
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        int i11 = ActivityShell.M;
        ActivityShell activityShell = this.f15718b;
        activityShell.getClass();
        if (i10 == 17 || i10 == 66) {
            s1.g.W(444, view);
            return true;
        }
        if (i10 == 33) {
            activityShell.C.requestFocus();
            return true;
        }
        if (i10 != 130) {
            return false;
        }
        activityShell.D.requestFocus();
        return true;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ClipData primaryClip;
        CharSequence text;
        int i11 = 0;
        int i12 = ActivityShell.M;
        ActivityShell activityShell = this.f15718b;
        activityShell.getClass();
        com.bumptech.glide.c.j(view);
        s1.g.Y(view);
        String str = ((x9.j1) activityShell.G.t(i10)).f18248a;
        String strF = g.b.f(activityShell.C);
        if (strF.startsWith("adb shell ")) {
            strF = strF.substring(10);
        }
        if (str.contains("扫码")) {
            ImageView imageView = activityShell.E;
            imageView.setVisibility(imageView.getVisibility() != 0 ? 0 : 8);
        } else {
            activityShell.E.setVisibility(8);
        }
        if (str.contains("本机执行")) {
            if (strF.isEmpty()) {
                Toaster.show((CharSequence) "请输入命令");
                return;
            } else {
                activityShell.A(i10, strF);
                return;
            }
        }
        if (str.contains("adb执行")) {
            if (strF.isEmpty()) {
                Toaster.show((CharSequence) "请输入命令");
                return;
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.J()) {
                activityShell.y(i10, strF);
                return;
            } else if (fa.a.f5646a.f()) {
                activityShell.z(i10, strF);
                return;
            } else {
                activityShell.y(i10, strF);
                return;
            }
        }
        if (str.contains("雫执行")) {
            if (com.yunpan.appmanage.util.v.f4106a.f4136p) {
                com.yunpan.appmanage.util.a0.u("你在[" + activityShell.getString(R.string.str_gj) + "设置]里已勾选【不使用shizuku】");
                return;
            }
            if (strF.isEmpty()) {
                Toaster.show((CharSequence) "请输入命令");
                return;
            } else {
                activityShell.B(i10, strF);
                return;
            }
        }
        if (str.contains("激活")) {
            PopupMenu popupMenu = new PopupMenu(activityShell.A, view);
            popupMenu.getMenuInflater().inflate(R.menu.menu_jh, popupMenu.getMenu());
            popupMenu.setOnMenuItemClickListener(new ha.y2(activityShell, 2));
            popupMenu.show();
            return;
        }
        if (str.contains("快捷指令")) {
            activityShell.H.show();
            return;
        }
        if (str.contains("返回")) {
            activityShell.finish();
            return;
        }
        if (str.contains("导出")) {
            new mc.c(i11, new h6(activityShell, i11)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.l2(28));
            return;
        }
        String string = "";
        if (str.contains("清空")) {
            activityShell.C.setText("");
            activityShell.D.setText("");
            return;
        }
        if (str.contains("粘贴")) {
            try {
                ClipboardManager clipboardManager = (ClipboardManager) activityShell.getSystemService("clipboard");
                if (clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0 && (text = primaryClip.getItemAt(0).getText()) != null) {
                    string = text.toString();
                }
            } catch (Exception unused) {
            }
            if (string.isEmpty()) {
                return;
            }
            try {
                int selectionStart = activityShell.C.getSelectionStart();
                Editable editableText = activityShell.C.getEditableText();
                if (selectionStart < 0 || selectionStart >= editableText.length()) {
                    editableText.append((CharSequence) string);
                } else {
                    editableText.insert(selectionStart, string);
                }
                return;
            } catch (Exception e7) {
                e7.getMessage();
                return;
            }
        }
        if (!str.contains("推送")) {
            if (str.contains("停止监听")) {
                throw null;
            }
            return;
        }
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (wVar.f4119g.isEmpty()) {
            activityShell.G.C(i10);
            return;
        }
        Iterator it = wVar.f4119g.iterator();
        while (it.hasNext()) {
            com.yunpan.appmanage.util.d dVar = (com.yunpan.appmanage.util.d) it.next();
            String str2 = dVar.f4004b;
            l9.b bVar = new l9.b(g.b.l(dVar.f4004b, ":9898/cmd", new StringBuilder("http://")));
            k9.a aVar = bVar.f11017i;
            aVar.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            aVar.b("Referer", g.b.l(dVar.f4004b, ":9898/cmd.html", new StringBuilder("http://")));
            MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=UTF-8");
            bVar.f11003n = "shareUrl=3" + strF;
            bVar.f11002m = mediaType;
            bVar.b(new r1(1, dVar));
        }
    }
}
