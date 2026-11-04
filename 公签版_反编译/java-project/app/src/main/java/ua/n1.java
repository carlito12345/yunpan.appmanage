package ua;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.ui.ActivityDownload;
import java.util.Iterator;
import okhttp3.MediaType;

/* loaded from: classes.dex */
public final /* synthetic */ class n1 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener, c6.f, TvRecyclerView.OnLoadMoreListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityDownload f15844b;

    public /* synthetic */ n1(ActivityDownload activityDownload, int i10) {
        this.f15843a = i10;
        this.f15844b = activityDownload;
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        int i11 = ActivityDownload.P0;
        ActivityDownload activityDownload = this.f15844b;
        activityDownload.getClass();
        com.yunpan.appmanage.util.c0.f4002a.b((activityDownload.X.b() - 1) - i10);
        activityDownload.X.C(i10);
        return false;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        ActivityDownload activityDownload = this.f15844b;
        switch (this.f15843a) {
            case 1:
                int i11 = ActivityDownload.P0;
                activityDownload.getClass();
                if (i10 != 17) {
                    if (i10 != 130) {
                        if (i10 != 33) {
                            if (i10 == 66) {
                                if (activityDownload.V.b() != 0) {
                                    activityDownload.F.requestFocus();
                                    break;
                                } else {
                                    activityDownload.E.setSelection(0);
                                    activityDownload.E.requestFocus();
                                    break;
                                }
                            }
                        } else {
                            activityDownload.C.requestFocus();
                            break;
                        }
                    } else if (activityDownload.V.b() == 0) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
                break;
            case 4:
                int i12 = ActivityDownload.P0;
                activityDownload.getClass();
                if (i10 != 66) {
                    if (i10 != 17) {
                        if (i10 != 130) {
                            if (i10 == 33) {
                                activityDownload.B();
                                activityDownload.H.requestFocus();
                                break;
                            }
                        } else if (activityDownload.M.getVisibility() != 0) {
                            activityDownload.B();
                            if (activityDownload.V.b() > 0) {
                                activityDownload.F.requestFocus();
                                break;
                            }
                        } else if (activityDownload.N.getItemCount() > 0) {
                            activityDownload.N.setSelection(0);
                            activityDownload.N.requestFocus();
                            break;
                        }
                    } else if (activityDownload.S.b() <= 0) {
                        if (activityDownload.R.b() <= 0) {
                            s1.g.W(333, view);
                            break;
                        } else {
                            activityDownload.C.requestFocus();
                            break;
                        }
                    } else {
                        activityDownload.D.requestFocus();
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
                break;
            case 6:
                int i13 = ActivityDownload.P0;
                activityDownload.getClass();
                if (i10 != 66) {
                    if (i10 != 130) {
                        if (i10 != 33) {
                            if (i10 == 17) {
                                if (activityDownload.S.b() <= 0) {
                                    s1.g.W(333, view);
                                    break;
                                } else {
                                    activityDownload.D.requestFocus();
                                    break;
                                }
                            }
                        } else {
                            activityDownload.E.setSelection(0);
                            activityDownload.E.requestFocus();
                            break;
                        }
                    } else {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
                break;
            default:
                if (i10 != 66) {
                    if (i10 != 17) {
                        int i14 = ActivityDownload.P0;
                        activityDownload.getClass();
                        if (i10 == 130) {
                            s1.g.Z(333, view);
                            break;
                        }
                    } else {
                        activityDownload.E.setSelection(0);
                        activityDownload.E.requestFocus();
                        activityDownload.M.setVisibility(8);
                        break;
                    }
                } else {
                    activityDownload.E.setSelection(2);
                    activityDownload.E.requestFocus();
                    activityDownload.M.setVisibility(8);
                    break;
                }
                break;
        }
        return false;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnLoadMoreListener
    public void onLoadMore() {
        ActivityDownload activityDownload = this.f15844b;
        if (activityDownload.S.b() < 1) {
            return;
        }
        ba.q qVar = activityDownload.R;
        ba.r rVar = (ba.r) qVar.t(qVar.b() - 1);
        if (rVar.f2752o) {
            activityDownload.G.setVisibility(0);
            new mc.c(0, new o1(rVar, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.h3(activityDownload, 10, rVar));
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        String str;
        int i11 = 1;
        ActivityDownload activityDownload = this.f15844b;
        switch (this.f15843a) {
            case 0:
                int i12 = ActivityDownload.P0;
                activityDownload.B();
                x9.b6 b6Var = (x9.b6) activityDownload.S.t(i10);
                ba.i iVar = b6Var.f18203a;
                if (iVar != null) {
                    str = (String) iVar.f2698a;
                    if (!((String) iVar.f2703f).isEmpty()) {
                        activityDownload.G(b6Var);
                        break;
                    }
                } else {
                    androidx.emoji2.text.q qVar = b6Var.f18204b;
                    if (qVar != null) {
                        str = (String) qVar.f1132d;
                        if (qVar.f1130b == 0) {
                            x9.n5 n5Var = activityDownload.Y;
                            if (n5Var == null || n5Var.f18300k.isEmpty()) {
                                new mc.c(0, new a2.u0(15)).d(rc.f.f13757b).a(fc.b.a()).b(new t1(activityDownload, str, b6Var, i));
                                break;
                            }
                        } else {
                            activityDownload.G(b6Var);
                            break;
                        }
                    } else {
                        ba.j jVar = b6Var.f18205c;
                        if (jVar == null) {
                            ba.s sVar = b6Var.f18207e;
                            if (sVar == null) {
                                ba.g gVar2 = b6Var.f18212j;
                                if (gVar2 == null) {
                                    ba.l lVar = b6Var.f18208f;
                                    if (lVar == null) {
                                        ba.n nVar = b6Var.f18211i;
                                        if (nVar == null) {
                                            NameValueBean nameValueBean = b6Var.f18209g;
                                            if (nameValueBean != null) {
                                                str = nameValueBean.name;
                                            } else {
                                                ba.k kVar = b6Var.f18210h;
                                                if (kVar == null) {
                                                    str = "";
                                                } else if (kVar.f2714d) {
                                                    activityDownload.G(b6Var);
                                                    break;
                                                } else {
                                                    str = kVar.f2711a;
                                                }
                                            }
                                        } else if (nVar.f2721a) {
                                            activityDownload.G(b6Var);
                                            break;
                                        } else {
                                            str = (String) nVar.f2724d;
                                        }
                                    } else if (lVar.f2716b == -1) {
                                        activityDownload.G(b6Var);
                                        break;
                                    } else {
                                        str = lVar.f2715a;
                                    }
                                } else if (gVar2.f2693d) {
                                    activityDownload.G(b6Var);
                                    break;
                                } else {
                                    x9.n5 n5Var2 = activityDownload.Z;
                                    String str2 = gVar2.f2691b;
                                    if (n5Var2 == null || n5Var2.r.isEmpty()) {
                                        new mc.c(0, new a2.u0(14)).d(rc.f.f13757b).a(fc.b.a()).b(new t1(activityDownload, str2, b6Var, i11));
                                        break;
                                    } else {
                                        str = str2;
                                    }
                                }
                            } else if (sVar.f2758f == 2) {
                                activityDownload.G(b6Var);
                                break;
                            } else {
                                str = (String) sVar.f2761i;
                            }
                        } else if (jVar.f2708e == 1) {
                            str = jVar.f2705b;
                            if (jVar.f2706c > 1.047527424E8d) {
                                Toaster.show((CharSequence) "暂不支持优享版的大文件下载，(因为需要优享版要会员才能下)");
                                break;
                            }
                        } else {
                            activityDownload.G(b6Var);
                            break;
                        }
                    }
                }
                activityDownload.E(str, b6Var);
                break;
            case 1:
            case 4:
            default:
                int i13 = ActivityDownload.P0;
                activityDownload.getClass();
                com.bumptech.glide.c.i(1000, view);
                activityDownload.H.setText((String) activityDownload.X.t(i10));
                EditText editText = activityDownload.H;
                editText.setSelection(editText.getText().length());
                activityDownload.E.setSelection(0);
                activityDownload.E.requestFocus();
                activityDownload.M.setVisibility(8);
                activityDownload.D();
                break;
            case 2:
                if (i10 != activityDownload.R.b() - 1) {
                    activityDownload.A(i10);
                    break;
                }
                break;
            case 3:
                String str3 = ((NameIcoTypeBean) activityDownload.T.t(i10)).name;
                if (!str3.contains("打开")) {
                    if (!str3.contains("推送")) {
                        if (!str3.contains("历史")) {
                            if (!str3.contains("说明")) {
                                if (!str3.contains("扫码")) {
                                    if (str3.contains("返回")) {
                                        activityDownload.C();
                                        break;
                                    }
                                } else {
                                    if (activityDownload.I.getVisibility() == 0) {
                                        activityDownload.I.setVisibility(8);
                                    } else {
                                        activityDownload.F();
                                    }
                                    activityDownload.O.setVisibility(8);
                                    activityDownload.M.setVisibility(8);
                                    break;
                                }
                            } else {
                                TextView textView = activityDownload.O;
                                textView.setVisibility(textView.getVisibility() == 0 ? 8 : 0);
                                activityDownload.M.setVisibility(8);
                                activityDownload.I.setVisibility(8);
                                break;
                            }
                        } else {
                            ConstraintLayout constraintLayout = activityDownload.M;
                            constraintLayout.setVisibility(constraintLayout.getVisibility() == 0 ? 8 : 0);
                            activityDownload.I.setVisibility(8);
                            activityDownload.O.setVisibility(8);
                            break;
                        }
                    } else {
                        activityDownload.B();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (!wVar.f4119g.isEmpty()) {
                            Iterator it = wVar.f4119g.iterator();
                            while (it.hasNext()) {
                                com.yunpan.appmanage.util.d dVar = (com.yunpan.appmanage.util.d) it.next();
                                StringBuilder sb2 = new StringBuilder("http://");
                                sb2.append(dVar.f4004b);
                                sb2.append(":");
                                l9.b bVar = new l9.b(android.support.v4.media.session.a.s(sb2, dVar.f4005c, "/url"));
                                k9.a aVar = bVar.f11017i;
                                aVar.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                                StringBuilder sb3 = new StringBuilder("http://");
                                sb3.append(dVar.f4004b);
                                sb3.append(":");
                                aVar.b("Referer", android.support.v4.media.session.a.s(sb3, dVar.f4005c, "/url.html"));
                                String str4 = "shareUrl=" + activityDownload.H.getText().toString().trim();
                                MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
                                bVar.f11003n = str4;
                                bVar.f11002m = mediaType;
                                bVar.b(new r1(i, dVar));
                            }
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.y("未发现其它设备");
                            break;
                        }
                    }
                } else {
                    activityDownload.D();
                    break;
                }
                break;
            case 5:
                int i14 = ActivityDownload.P0;
                ActivityDownload activityDownload2 = this.f15844b;
                activityDownload2.getClass();
                try {
                    if (((x9.u5) activityDownload2.V.t(i10)).f18346c.startsWith("下载中")) {
                        new ha.z6(activityDownload2, activityDownload2.A, "是否停止下载？？？", "", "确定", "取消", new d3.g(i10, 10, activityDownload2)).show();
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }
}
