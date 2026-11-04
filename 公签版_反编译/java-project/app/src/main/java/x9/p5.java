package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameValueBean;

/* loaded from: classes.dex */
public final class p5 extends c6.g {
    public static String F(long j10) {
        if (j10 < 1024) {
            return j10 + " KB";
        }
        if (j10 < 1048576) {
            double d10 = j10;
            Double.isNaN(d10);
            return String.format("%.2f", Double.valueOf(d10 / 1024.0d)).concat(" MB");
        }
        if (j10 < 1073741824) {
            double d11 = j10;
            Double.isNaN(d11);
            return String.format("%.2f", Double.valueOf(d11 / 1048576.0d)).concat(" GB");
        }
        if (j10 < 0) {
            double d12 = j10;
            Double.isNaN(d12);
            return String.format("%.2f", Double.valueOf(d12 / 1.073741824E9d)).concat(" TB");
        }
        double d13 = j10;
        Double.isNaN(d13);
        return String.format("%.2f", Double.valueOf(d13 / 1.099511627776E12d)).concat(" PB");
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_wp_file, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        b6 b6Var = (b6) obj;
        androidx.emoji2.text.q qVar = b6Var.f18204b;
        int i11 = R.drawable.return1;
        String strReplace = "";
        if (qVar != null) {
            String str = (String) qVar.f1132d;
            boolean zK0 = p000if.a.k0(str);
            androidx.emoji2.text.q qVar2 = b6Var.f18204b;
            if (zK0) {
                str = str.substring(0, str.lastIndexOf(".")) + ".apk";
                qVar2.f1132d = str;
            }
            aVar.c(R.id.v_name, str);
            String str2 = (String) qVar2.f1133e;
            if (str2 != null) {
                strReplace = str2.replace("T", " ");
                if (strReplace.length() > 19) {
                    strReplace = strReplace.substring(0, 19);
                }
            }
            aVar.d(R.id.v_time, true);
            int i12 = qVar2.f1130b;
            if (i12 != 0) {
                aVar.c(R.id.v_time, strReplace);
                if (i12 == 3) {
                    aVar.b(R.id.v_ico, R.drawable.tp_sx1);
                } else {
                    if (i12 == 1) {
                        i11 = R.drawable.folder1;
                    }
                    aVar.b(R.id.v_ico, i11);
                }
                aVar.d(R.id.v_down, false);
                return;
            }
            aVar.c(R.id.v_time, "大小：" + p000if.a.D0(qVar2.f1131c) + "    " + strReplace);
            strReplace = str;
        } else {
            ba.i iVar = b6Var.f18203a;
            if (iVar != null) {
                strReplace = (String) iVar.f2698a;
                if (!((String) iVar.f2703f).isEmpty()) {
                    aVar.c(R.id.v_name, strReplace);
                    if (!strReplace.contains("  返回上级目录")) {
                        i11 = R.drawable.folder1;
                    }
                    aVar.b(R.id.v_ico, i11);
                    aVar.d(R.id.v_time, false);
                    aVar.d(R.id.v_down, false);
                    return;
                }
                if (strReplace.trim().equals("加载更多")) {
                    aVar.c(R.id.v_name, strReplace);
                    aVar.b(R.id.v_ico, R.drawable.tp_cq);
                    aVar.d(R.id.v_time, false);
                    aVar.d(R.id.v_down, false);
                    return;
                }
                aVar.d(R.id.v_time, true);
                aVar.c(R.id.v_time, "大小：" + ((String) iVar.f2699b) + "    " + ((String) iVar.f2700c));
            } else {
                ba.j jVar = b6Var.f18205c;
                if (jVar == null) {
                    ba.s sVar = b6Var.f18207e;
                    if (sVar != null) {
                        int i13 = sVar.f2758f;
                        String str3 = sVar.f2753a;
                        if (i13 != 1) {
                            String str4 = (String) sVar.f2760h;
                            if (str4.contains("    返回上级目录")) {
                                aVar.b(R.id.v_ico, R.drawable.return1);
                            } else if (str4.contains("   加载更多")) {
                                aVar.b(R.id.v_ico, R.drawable.tp_cq);
                            } else {
                                aVar.b(R.id.v_ico, R.drawable.folder1);
                            }
                            aVar.c(R.id.v_name, str4);
                            aVar.d(R.id.v_time, true);
                            aVar.c(R.id.v_time, str3);
                            aVar.d(R.id.v_down, false);
                            return;
                        }
                        aVar.d(R.id.v_time, true);
                        aVar.c(R.id.v_time, str3 + "     " + F(sVar.f2755c));
                        strReplace = (String) sVar.f2761i;
                    } else {
                        ba.g gVar = b6Var.f18212j;
                        if (gVar != null) {
                            boolean z = gVar.f2693d;
                            String str5 = gVar.f2692c;
                            strReplace = gVar.f2691b;
                            if (z) {
                                if (strReplace.contains("    返回上级目录")) {
                                    aVar.b(R.id.v_ico, R.drawable.return1);
                                } else if (strReplace.contains("   加载更多")) {
                                    aVar.b(R.id.v_ico, R.drawable.tp_cq);
                                } else {
                                    aVar.b(R.id.v_ico, R.drawable.folder1);
                                }
                                aVar.c(R.id.v_name, strReplace);
                                aVar.d(R.id.v_time, true);
                                aVar.c(R.id.v_time, str5);
                                aVar.d(R.id.v_down, false);
                                return;
                            }
                            aVar.d(R.id.v_time, true);
                            aVar.c(R.id.v_time, str5 + "     " + p000if.a.D0(gVar.f2694e));
                        } else {
                            ba.l lVar = b6Var.f18208f;
                            if (lVar != null) {
                                long j10 = lVar.f2716b;
                                strReplace = lVar.f2715a;
                                if (j10 == -1) {
                                    if (strReplace.contains("    返回上级目录")) {
                                        aVar.b(R.id.v_ico, R.drawable.return1);
                                    } else if (strReplace.contains("   加载更多")) {
                                        aVar.b(R.id.v_ico, R.drawable.tp_cq);
                                    } else {
                                        aVar.b(R.id.v_ico, R.drawable.folder1);
                                    }
                                    aVar.c(R.id.v_name, strReplace);
                                    aVar.d(R.id.v_time, false);
                                    aVar.d(R.id.v_down, false);
                                    return;
                                }
                                aVar.d(R.id.v_time, true);
                                aVar.c(R.id.v_time, p000if.a.D0(lVar.f2716b));
                            } else {
                                ba.n nVar = b6Var.f18211i;
                                if (nVar == null) {
                                    NameValueBean nameValueBean = b6Var.f18209g;
                                    if (nameValueBean != null) {
                                        strReplace = nameValueBean.name;
                                        String str6 = nameValueBean.value2;
                                        if (str6 == null || str6.isEmpty()) {
                                            aVar.d(R.id.v_time, false);
                                        } else {
                                            aVar.d(R.id.v_time, true);
                                            aVar.c(R.id.v_time, nameValueBean.value2);
                                        }
                                    } else {
                                        ba.k kVar = b6Var.f18210h;
                                        if (kVar != null) {
                                            strReplace = kVar.f2711a;
                                            if (kVar.f2714d) {
                                                if (strReplace.contains("    返回上级目录")) {
                                                    aVar.b(R.id.v_ico, R.drawable.return1);
                                                } else if (strReplace.contains("   加载更多")) {
                                                    aVar.b(R.id.v_ico, R.drawable.tp_cq);
                                                } else {
                                                    aVar.b(R.id.v_ico, R.drawable.folder1);
                                                }
                                                aVar.c(R.id.v_name, strReplace);
                                                aVar.d(R.id.v_time, true);
                                                aVar.c(R.id.v_time, kVar.f2712b);
                                                aVar.d(R.id.v_down, false);
                                                return;
                                            }
                                            aVar.d(R.id.v_time, true);
                                            aVar.c(R.id.v_time, "大小：" + p000if.a.D0(kVar.f2713c) + "  " + kVar.f2712b);
                                        }
                                    }
                                } else {
                                    if (nVar.f2721a) {
                                        String str7 = (String) nVar.f2724d;
                                        if (str7.contains("    返回上级目录")) {
                                            aVar.b(R.id.v_ico, R.drawable.return1);
                                        } else if (str7.contains("   加载更多")) {
                                            aVar.b(R.id.v_ico, R.drawable.tp_cq);
                                        } else {
                                            aVar.b(R.id.v_ico, R.drawable.folder1);
                                        }
                                        aVar.c(R.id.v_name, str7);
                                        aVar.d(R.id.v_time, true);
                                        aVar.c(R.id.v_time, (String) nVar.f2725e);
                                        aVar.d(R.id.v_down, false);
                                        return;
                                    }
                                    strReplace = (String) nVar.f2724d;
                                    aVar.d(R.id.v_time, true);
                                    aVar.c(R.id.v_time, (String) nVar.f2725e);
                                }
                            }
                        }
                    }
                } else {
                    if (jVar.f2704a <= 0) {
                        String str8 = jVar.f2710g;
                        if (str8.contains("    返回上级目录")) {
                            aVar.b(R.id.v_ico, R.drawable.return1);
                        } else if (str8.contains("   加载更多")) {
                            aVar.b(R.id.v_ico, R.drawable.tp_cq);
                        } else {
                            aVar.b(R.id.v_ico, R.drawable.folder1);
                        }
                        aVar.c(R.id.v_name, str8);
                        aVar.d(R.id.v_time, true);
                        aVar.c(R.id.v_time, jVar.f2707d);
                        aVar.d(R.id.v_down, false);
                        return;
                    }
                    strReplace = jVar.f2705b;
                    aVar.d(R.id.v_time, true);
                    aVar.c(R.id.v_time, jVar.f2707d + "     " + F(jVar.f2706c));
                }
            }
        }
        aVar.c(R.id.v_name, strReplace);
        aVar.d(R.id.v_down, true);
        if (p000if.a.X(strReplace)) {
            aVar.b(R.id.v_ico, R.drawable.tp_apk1);
            return;
        }
        if (p000if.a.c0(strReplace)) {
            aVar.b(R.id.v_ico, R.drawable.tp);
            return;
        }
        if (p000if.a.f0(strReplace)) {
            aVar.b(R.id.v_ico, R.drawable.tp_music1);
            return;
        }
        if (p000if.a.j0(strReplace)) {
            aVar.b(R.id.v_ico, R.drawable.tp_video1);
        } else if (za.g.g(strReplace)) {
            aVar.b(R.id.v_ico, R.drawable.tp_rar);
        } else {
            aVar.b(R.id.v_ico, R.drawable.tp_file1);
        }
    }
}
