package android.support.v4.media.session;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import d0.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import ue.d;
import z7.o;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void A(Object obj) {
        if (obj != null) {
            obj.toString();
        }
    }

    public static void B(String str, mc.b bVar) {
        bVar.d(new Exception(str));
    }

    public static void C(StringBuilder sb2, String str, String str2, String str3, String str4) {
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        sb2.append(str4);
    }

    public static boolean D(StringBuilder sb2, String str, String str2, String str3) {
        sb2.append(str);
        sb2.append(str2);
        return str3.contains(sb2.toString());
    }

    public static void E(int i10, int i11, String str, StringBuilder sb2) {
        sb2.append(ge.a.l(i10, i11));
        sb2.append(str);
    }

    public static /* synthetic */ String F(int i10) {
        switch (i10) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static void a(c6.a aVar, RecyclerView.ViewHolder viewHolder, int i10, Object obj, List list) {
        d.e(viewHolder, "holder");
        d.e(list, "payloads");
        aVar.h(viewHolder, i10, obj);
    }

    public static void b(RecyclerView.ViewHolder viewHolder) {
        d.e(viewHolder, "holder");
    }

    public static int c(int i10) throws wf.a {
        for (int i11 : f.d(3)) {
            if (d(i11) == i10) {
                return i11;
            }
        }
        throw new wf.a("Unknown compression method", 0);
    }

    public static /* synthetic */ int d(int i10) {
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 8;
        }
        if (i10 == 3) {
            return 99;
        }
        throw null;
    }

    public static /* synthetic */ int e(int i10) {
        if (i10 == 1) {
            return 16;
        }
        if (i10 == 2) {
            return 24;
        }
        if (i10 == 3) {
            return 32;
        }
        throw null;
    }

    public static /* synthetic */ int f(int i10) {
        if (i10 == 1) {
            return 16;
        }
        if (i10 == 2) {
            return 24;
        }
        if (i10 == 3) {
            return 32;
        }
        throw null;
    }

    public static /* synthetic */ int g(int i10) {
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                if (i10 == 3) {
                    return 3;
                }
                throw null;
            }
        }
        return i11;
    }

    public static /* synthetic */ int h(int i10) {
        if (i10 == 1) {
            return 8;
        }
        if (i10 == 2) {
            return 12;
        }
        if (i10 == 3) {
            return 16;
        }
        throw null;
    }

    public static /* synthetic */ int i(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 2;
        }
        throw null;
    }

    public static int j(o oVar, int i10, String str) {
        return oVar.l(i10).g().o(str).e();
    }

    public static AppBean k(String str) {
        return MyDb.get().getAppDao().get_appBean(str);
    }

    public static String l(int i10, int i11, String str) {
        return str.substring(i11, str.length() - i10);
    }

    public static String m(RecyclerView recyclerView, StringBuilder sb2) {
        sb2.append(recyclerView.exceptionLabel());
        return sb2.toString();
    }

    public static String n(IOException iOException, StringBuilder sb2) {
        sb2.append(iOException.getMessage());
        return sb2.toString();
    }

    public static String o(String str, int i10, int i11, String str2) {
        return str + i10 + str2 + i11;
    }

    public static String p(String str, int i10, StringBuilder sb2) {
        sb2.append(str.substring(i10));
        return sb2.toString();
    }

    public static String q(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String r(String str, Class cls, String str2) {
        return str + cls + str2;
    }

    public static String s(StringBuilder sb2, int i10, String str) {
        sb2.append(i10);
        sb2.append(str);
        return sb2.toString();
    }

    public static String t(StringBuilder sb2, long j10, String str) {
        sb2.append(j10);
        sb2.append(str);
        return sb2.toString();
    }

    public static String u(StringBuilder sb2, String str, String str2, String str3) {
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        return sb2.toString();
    }

    public static String v(o oVar, int i10, String str) {
        return oVar.l(i10).g().o(str).i();
    }

    public static StringBuilder w(long j10, String str, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(j10);
        sb2.append(str2);
        return sb2;
    }

    public static LinkedHashMap x(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(str, str2);
        return linkedHashMap;
    }

    public static void y(int i10, int i11, String str, StringBuilder sb2) {
        sb2.append(de.c.c(i10, i11));
        sb2.append(str);
    }

    public static void z(BufferedInputStream bufferedInputStream, BufferedOutputStream bufferedOutputStream, FileOutputStream fileOutputStream, InputStream inputStream) {
        q4.a.e(bufferedInputStream);
        q4.a.e(bufferedOutputStream);
        q4.a.e(fileOutputStream);
        q4.a.e(inputStream);
    }
}
