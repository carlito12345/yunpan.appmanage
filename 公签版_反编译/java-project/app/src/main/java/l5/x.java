package l5;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.yunpan.appmanage.R;
import java.io.InputStream;
import java.util.Locale;
import u1.f0;
import v3.m0;

/* loaded from: classes.dex */
public final class x implements r, t5.a, m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10626a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f10627b;

    public /* synthetic */ x(Resources resources, int i10) {
        this.f10626a = i10;
        this.f10627b = resources;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String a(r1.p pVar) {
        String displayName;
        String str = pVar.f13513d;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            displayName = "";
        } else {
            Locale localeForLanguageTag = Locale.forLanguageTag(str);
            String str2 = f0.f15206a;
            Locale locale = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
            displayName = localeForLanguageTag.getDisplayName(locale);
            if (!TextUtils.isEmpty(displayName)) {
                try {
                    int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
                    displayName = displayName.substring(0, iOffsetByCodePoints).toUpperCase(locale) + displayName.substring(iOffsetByCodePoints);
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
        String strE = e(displayName, b(pVar));
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        String str3 = pVar.f13511b;
        return TextUtils.isEmpty(str3) ? "" : str3;
    }

    public String b(r1.p pVar) {
        int i10 = pVar.f13515f & 2;
        Resources resources = this.f10627b;
        String string = i10 != 0 ? resources.getString(R.string.exo_track_role_alternate) : "";
        int i11 = pVar.f13515f;
        if ((i11 & 4) != 0) {
            string = e(string, resources.getString(R.string.exo_track_role_supplementary));
        }
        if ((i11 & 8) != 0) {
            string = e(string, resources.getString(R.string.exo_track_role_commentary));
        }
        return (i11 & 1088) != 0 ? e(string, resources.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    @Override // t5.a
    public h5.z c(h5.z zVar, f5.i iVar) {
        if (zVar == null) {
            return null;
        }
        return new o5.d(this.f10627b, zVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String d(r1.p pVar) {
        String strA;
        String strC;
        int iG = r1.e0.g(pVar.f13523o);
        int i10 = pVar.G;
        int i11 = pVar.f13530w;
        int i12 = pVar.f13529v;
        if (iG == -1) {
            String str = null;
            String str2 = pVar.f13520k;
            if (str2 != null) {
                for (String str3 : TextUtils.isEmpty(str2) ? new String[0] : str2.trim().split("(\\s*,\\s*)", -1)) {
                    strC = r1.e0.c(str3);
                    if (strC != null && r1.e0.k(strC)) {
                        break;
                    }
                }
                strC = null;
                if (strC == null) {
                    if (str2 != null) {
                        String[] strArrSplit = TextUtils.isEmpty(str2) ? new String[0] : str2.trim().split("(\\s*,\\s*)", -1);
                        int length = strArrSplit.length;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= length) {
                                break;
                            }
                            String strC2 = r1.e0.c(strArrSplit[i13]);
                            if (strC2 != null && r1.e0.h(strC2)) {
                                str = strC2;
                                break;
                            }
                            i13++;
                        }
                    }
                    if (str == null) {
                        iG = (i12 == -1 && i11 == -1) ? (i10 == -1 && pVar.H == -1) ? -1 : 1 : 2;
                    }
                }
            } else {
                strC = null;
                if (strC == null) {
                }
            }
        }
        Resources resources = this.f10627b;
        int i14 = pVar.f13519j;
        if (iG == 2) {
            strA = e(b(pVar), (i12 == -1 || i11 == -1) ? "" : resources.getString(R.string.exo_track_resolution, Integer.valueOf(i12), Integer.valueOf(i11)), i14 != -1 ? resources.getString(R.string.exo_track_bitrate, Float.valueOf(i14 / 1000000.0f)) : "");
        } else if (iG == 1) {
            strA = e(a(pVar), (i10 == -1 || i10 < 1) ? "" : i10 != 1 ? i10 != 2 ? (i10 == 6 || i10 == 7) ? resources.getString(R.string.exo_track_surround_5_point_1) : i10 != 8 ? resources.getString(R.string.exo_track_surround) : resources.getString(R.string.exo_track_surround_7_point_1) : resources.getString(R.string.exo_track_stereo) : resources.getString(R.string.exo_track_mono), i14 != -1 ? resources.getString(R.string.exo_track_bitrate, Float.valueOf(i14 / 1000000.0f)) : "");
        } else {
            strA = a(pVar);
        }
        if (!strA.isEmpty()) {
            return strA;
        }
        String str4 = pVar.f13513d;
        return (str4 == null || str4.trim().isEmpty()) ? resources.getString(R.string.exo_track_unknown) : resources.getString(R.string.exo_track_unknown_name, str4);
    }

    public String e(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (!str.isEmpty()) {
                string = TextUtils.isEmpty(string) ? str : this.f10627b.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }

    @Override // l5.r
    public q l(w wVar) {
        switch (this.f10626a) {
            case 0:
                return new b(this.f10627b, wVar.c(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new b(this.f10627b, wVar.c(Uri.class, InputStream.class));
            default:
                return new b(this.f10627b, b0.f10567b);
        }
    }

    public x(Resources resources) {
        this.f10626a = 4;
        resources.getClass();
        this.f10627b = resources;
    }
}
