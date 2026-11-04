package u0;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ta.q;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final qa.e f15161a = new qa.e(6);

    public static d3.g a(Context context, kf.b bVar) throws Throwable {
        Cursor cursorA;
        int i10 = 1;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = (String) bVar.f10278b;
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(da.b.c("No package found for authority: ", str));
        }
        String str2 = providerInfoResolveContentProvider.packageName;
        String str3 = (String) bVar.f10279c;
        if (!str2.equals(str3)) {
            throw new PackageManager.NameNotFoundException(q.k("Found content provider ", str, ", but package was not ", str3));
        }
        Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        qa.e eVar = f15161a;
        Collections.sort(arrayList, eVar);
        List listK = (List) bVar.f10281e;
        if (listK == null) {
            listK = o0.b.k(resources, 0);
        }
        int i11 = 0;
        loop1: while (true) {
            if (i11 >= listK.size()) {
                providerInfoResolveContentProvider = null;
                break;
            }
            ArrayList arrayList2 = new ArrayList((Collection) listK.get(i11));
            Collections.sort(arrayList2, eVar);
            if (arrayList.size() == arrayList2.size()) {
                for (int i12 = 0; i12 < arrayList.size(); i12++) {
                    if (Arrays.equals((byte[]) arrayList.get(i12), (byte[]) arrayList2.get(i12))) {
                        i10 = 1;
                    } else {
                        i10 = 1;
                    }
                }
                break loop1;
            }
            i11 += i10;
        }
        if (providerInfoResolveContentProvider == null) {
            return new d3.g(i10, 6, (Object[]) null);
        }
        String str4 = providerInfoResolveContentProvider.authority;
        ArrayList arrayList3 = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str4).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str4).appendPath("file").build();
        try {
            cursorA = a.a(context.getContentResolver(), uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{(String) bVar.f10280d}, null, null);
            if (cursorA != null) {
                try {
                    if (cursorA.getCount() > 0) {
                        int columnIndex = cursorA.getColumnIndex("result_code");
                        arrayList3 = new ArrayList();
                        int columnIndex2 = cursorA.getColumnIndex("_id");
                        int columnIndex3 = cursorA.getColumnIndex("file_id");
                        int columnIndex4 = cursorA.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorA.getColumnIndex("font_weight");
                        int columnIndex6 = cursorA.getColumnIndex("font_italic");
                        while (cursorA.moveToNext()) {
                            arrayList3.add(new g(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3)), columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorA.getInt(columnIndex6) == 1, columnIndex != -1 ? cursorA.getInt(columnIndex) : 0));
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return new d3.g(0, 6, arrayList3.toArray(new g[0]));
        } catch (Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }
}
