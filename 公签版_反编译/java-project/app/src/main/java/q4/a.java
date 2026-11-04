package q4;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.hardware.input.IInputManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.GetChars;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.transition.TransitionValues;
import android.util.Property;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.transition.FadeAndShortSlide;
import androidx.room.s;
import ba.n;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.source.SourceConst;
import com.yunpan.appmanage.R;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okhttp3.Response;
import okhttp3.ResponseBody;
import ph.q;
import ph.r;
import ta.m;
import w.o3;
import w.q3;
import wa.t;
import x0.h1;
import x9.b6;
import z7.o;

/* loaded from: classes.dex */
public abstract class a {
    public static String A(File file) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
            String str = "";
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    if (nextEntry.getName().startsWith("lib/")) {
                        if (nextEntry.getName().startsWith("lib/armeabi-v7a") && !str.contains("v7a,")) {
                            str = str + "armeabi-v7a,";
                        } else if (nextEntry.getName().startsWith("lib/armeabi") && !str.contains("armeabi,")) {
                            str = str + "armeabi,";
                        } else if (nextEntry.getName().startsWith("lib/arm64-v8a") && !str.contains("v8a,")) {
                            str = str + "arm64-v8a,";
                        } else if (nextEntry.getName().startsWith("lib/x86") && !str.contains("x86,")) {
                            str = str + "x86,";
                        } else if (nextEntry.getName().startsWith("lib/x86_64") && !str.contains("x86_64,")) {
                            str = str + "x86_64,";
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        zipInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
            if (str.isEmpty()) {
                str = "all";
            }
            zipInputStream.close();
            fileInputStream.close();
            return str;
        } catch (Throwable th4) {
            try {
                fileInputStream.close();
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                } catch (Exception unused2) {
                }
            }
            throw th4;
        }
    }

    public static File[] B(String str) {
        int iLastIndexOf;
        int iLastIndexOf2;
        int iLastIndexOf3;
        int iIndexOf;
        Integer num;
        ArrayList arrayList = new ArrayList();
        if (str.startsWith("dexPath=")) {
            int iIndexOf2 = str.indexOf(44);
            str = iIndexOf2 == -1 ? str.substring(8) : str.substring(8, iIndexOf2);
        }
        for (String str2 : str.split(":")) {
            if (str2.startsWith("/data/app/") && (iLastIndexOf = str2.lastIndexOf(".apk")) == str2.length() - 4 && (iLastIndexOf2 = str2.lastIndexOf("/", iLastIndexOf)) != 9 && (iLastIndexOf3 = str2.lastIndexOf("/", iLastIndexOf2 - 1)) != -1 && (iIndexOf = str2.indexOf("-", iLastIndexOf3)) != -1) {
                String strSubstring = str2.substring(iLastIndexOf3 + 1, iIndexOf);
                File file = new File(da.b.c("/data/data/", strSubstring));
                File file2 = null;
                if (!file.isDirectory() || !file.canWrite()) {
                    file = null;
                }
                if (file == null) {
                    try {
                        num = (Integer) Class.forName("android.os.Process").getMethod("myUid", null).invoke(null, null);
                    } catch (Exception unused) {
                        num = null;
                    }
                    if (num != null) {
                        File file3 = new File(String.format("/data/user/%d/%s", Integer.valueOf(num.intValue() / 100000), strSubstring));
                        if (file3.isDirectory() && file3.canWrite()) {
                            file2 = file3;
                        }
                    }
                    file = file2;
                }
                if (file != null) {
                    File file4 = new File(file, "cache");
                    if ((file4.exists() || file4.mkdir()) && file4.isDirectory() && file4.canWrite()) {
                        arrayList.add(file4);
                    }
                }
            }
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    public static boolean C() {
        try {
            return Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", null).invoke(null, null) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    public static boolean D() {
        s sVarL0 = u9.d.r("getprop persist.logd.enable").l0();
        return (sVarL0.q() && !sVarL0.k().isEmpty() && ((String) sVarL0.k().get(0)).equals("false")) ? false : true;
    }

    public static boolean E(Context context) {
        try {
            return new File(context.getFilesDir().getAbsolutePath(), "开机任务.json").exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void G(IInputManager iInputManager, z7.s sVar) throws InterruptedException {
        Point pointR = p000if.a.R(wa.s.c().f17709e);
        int iE = sVar.o("mouseType").e();
        if (iE == 100 || iE == 101) {
            int i10 = iE == 100 ? 1 : 2;
            int iE2 = sVar.o("action").e();
            int iE3 = sVar.o("x").e();
            int iE4 = sVar.o("y").e();
            if (iE2 == 0) {
                wa.c.e(iInputManager, iE3, iE4, i10, true);
                return;
            }
            while (iE2 > 0) {
                wa.c.e(iInputManager, iE3, iE4, i10, false);
                Thread.sleep(80L);
                iE2--;
            }
            return;
        }
        if (iE == 200) {
            wa.c.f(iInputManager, pointR.x / 2, pointR.y / 2, 0.0f, 8.0f);
            return;
        }
        if (iE == 201) {
            wa.c.f(iInputManager, pointR.x / 2, pointR.y / 2, 0.0f, -8.0f);
            return;
        }
        if (iE == 300) {
            int i11 = pointR.x / 2;
            int i12 = pointR.y;
            int i13 = (i12 * 2) / 3;
            wa.c.a(iInputManager, i11, i12 / 3, i11, i13, i11, i13 + 100);
            return;
        }
        if (iE == 301) {
            int i14 = pointR.x / 2;
            int i15 = pointR.y;
            int i16 = i15 / 3;
            wa.c.a(iInputManager, i14, (i15 * 2) / 3, i14, i16, i14, i16 - 100);
        }
    }

    public static void H(i3.d dVar, int i10, u1.f fVar) {
        long jE = dVar.e(i10);
        List listH = dVar.h(jE);
        if (listH.isEmpty()) {
            return;
        }
        if (i10 == dVar.j() - 1) {
            throw new IllegalStateException();
        }
        long jE2 = dVar.e(i10 + 1) - dVar.e(i10);
        if (jE2 > 0) {
            fVar.accept(new i3.a(jE, jE2, listH));
        }
    }

    public static z7.s I(File file) {
        try {
            return d.b.b0(J(file)).g();
        } catch (Exception unused) {
            z7.s sVar = new z7.s();
            sVar.j("tags", new o());
            sVar.j("keys", new o());
            if (file.getPath().endsWith("KeyMapNissan.json")) {
                sVar.l("intervalTime", Integer.valueOf(NoConst.RECORDING_TIME_INTERVAL));
            }
            return sVar;
        }
    }

    public static String J(File file) throws Exception {
        if (!file.exists()) {
            throw new Exception("无文件");
        }
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb2.toString();
            }
            sb2.append(line);
            sb2.append(SignParameters.NEW_LINE);
        }
    }

    public static o K(ContextWrapper contextWrapper) throws IOException {
        File file = new File(contextWrapper.getFilesDir().getAbsolutePath(), "开机任务.json");
        if (!file.exists()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return d.b.b0(sb2.toString()).f();
                }
                sb2.append(line);
                sb2.append(SignParameters.NEW_LINE);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean M(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                try {
                    bufferedWriter.write(str);
                    bufferedWriter.close();
                    fileWriter.close();
                    return true;
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    fileWriter.close();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
                throw th4;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public static boolean N(File file, z7.s sVar) {
        return M(file, sVar.toString());
    }

    public static void O(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "FloatButton.json"), sVar);
        m.c(context, "UP_FLOAT_BUTTON");
    }

    public static void P(da.g gVar, o oVar) throws IOException {
        try {
            File file = new File(gVar.getFilesDir().getAbsolutePath(), "开机任务.json");
            if (oVar != null && !oVar.f19478a.isEmpty()) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                bufferedWriter.write(oVar.toString());
                bufferedWriter.close();
                return;
            }
            file.delete();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public static void Q(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "KeyMapAcc.json"), sVar);
    }

    public static void R(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "KeyMapAiOnY.json"), sVar);
    }

    public static void S(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "KeyMapEvent.json"), sVar);
    }

    public static void T(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "MapFleOS18.json"), sVar);
        m.c(context, "UP_INIT_FLY18");
    }

    public static void U(da.g gVar, z7.s sVar) {
        N(new File(gVar.getFilesDir().getAbsolutePath(), "KeyMapJieT.json"), sVar);
    }

    public static void V(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "KeyMapLogcatSuper.json"), sVar);
    }

    public static void W(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "KeyMapNissan.json"), sVar);
    }

    public static void X(Context context, z7.s sVar) {
        N(new File(context.getFilesDir().getAbsolutePath(), "Sidebar.json"), sVar);
        m.c(context, "UP_INIT_SIDEBAR");
    }

    public static void Y(int i10, int i11, byte[] bArr) {
        bArr[i10] = (byte) (i11 >>> 24);
        bArr[i10 + 1] = (byte) (i11 >>> 16);
        bArr[i10 + 2] = (byte) (i11 >>> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    public static void Z(int i10, int i11, byte[] bArr) {
        bArr[i10] = (byte) i11;
        bArr[i10 + 1] = (byte) (i11 >>> 8);
        bArr[i10 + 2] = (byte) (i11 >>> 16);
        bArr[i10 + 3] = (byte) (i11 >>> 24);
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, Object obj, int i10, int i11) {
        for (Object obj2 : spannableStringBuilder.getSpans(i10, i11, obj.getClass())) {
            if (spannableStringBuilder.getSpanStart(obj2) == i10 && spannableStringBuilder.getSpanEnd(obj2) == i11 && spannableStringBuilder.getSpanFlags(obj2) == 33) {
                spannableStringBuilder.removeSpan(obj2);
            }
        }
        spannableStringBuilder.setSpan(obj, i10, i11, 33);
    }

    public static void a0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            o3.a(view, charSequence);
            return;
        }
        q3 q3Var = q3.f17215k;
        if (q3Var != null && q3Var.f17216a == view) {
            q3.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new q3(view, charSequence);
            return;
        }
        q3 q3Var2 = q3.l;
        if (q3Var2 != null && q3Var2.f17216a == view) {
            q3Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static Stream b0(q qVar, Class cls) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new r(qVar, cls), SourceConst.IOCTL_AM_VOLUME), false);
    }

    public static void c() {
        int iU = u();
        int i10 = t.f17728a.L;
        if (iU > i10) {
            u9.d.r(da.b.a(i10, "setprop persist.log.tag ")).l0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c0(i3.d dVar, i3.i iVar, u1.f fVar) {
        int iD;
        boolean z;
        long j10 = iVar.f8497a;
        if (j10 == -9223372036854775807L) {
            iD = 0;
        } else {
            iD = dVar.d(j10);
            if (iD == -1) {
                iD = dVar.j();
            }
            if (iD > 0 && dVar.e(iD - 1) == j10) {
                iD--;
            }
        }
        if (j10 == -9223372036854775807L || iD >= dVar.j()) {
            z = false;
        } else {
            List listH = dVar.h(j10);
            long jE = dVar.e(iD);
            if (!listH.isEmpty()) {
                long j11 = iVar.f8497a;
                if (j11 < jE) {
                    fVar.accept(new i3.a(j11, jE - j11, listH));
                    z = true;
                }
            }
        }
        for (int i10 = iD; i10 < dVar.j(); i10++) {
            H(dVar, i10, fVar);
        }
        if (iVar.f8498b) {
            if (z) {
                iD--;
            }
            for (int i11 = 0; i11 < iD; i11++) {
                H(dVar, i11, fVar);
            }
            if (z) {
                fVar.accept(new i3.a(dVar.e(iD), j10 - dVar.e(iD), dVar.h(j10)));
            }
        }
    }

    public static final void d(View view) {
        ue.d.e(view, "<this>");
        h1 h1Var = new h1(view, null);
        af.a aVar = new af.a();
        aVar.f643d = h1Var.b(aVar, aVar);
        while (aVar.hasNext()) {
            View view2 = (View) aVar.next();
            d1.a aVar2 = (d1.a) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (aVar2 == null) {
                aVar2 = new d1.a();
                view2.setTag(R.id.pooling_container_listener_holder_tag, aVar2);
            }
            ArrayList arrayList = aVar2.f4244a;
            int iK0 = je.k.k0(arrayList);
            if (-1 < iK0) {
                g.b.t(arrayList.get(iK0));
                throw null;
            }
        }
    }

    public static void e(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static final void f(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }

    public static ObjectAnimator g(View view, TransitionValues transitionValues, int i10, int i11, float f10, float f11, float f12, float f13, DecelerateInterpolator decelerateInterpolator, FadeAndShortSlide fadeAndShortSlide) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(R.id.transitionPosition)) != null) {
            f10 = (r2[0] - i10) + translationX;
            f11 = (r2[1] - i11) + translationY;
        }
        int iRound = Math.round(f10 - translationX) + i10;
        int iRound2 = Math.round(f11 - translationY) + i11;
        view.setTranslationX(f10);
        view.setTranslationY(f11);
        if (f10 == f12 && f11 == f13) {
            return null;
        }
        Path path = new Path();
        path.moveTo(f10, f11);
        path.lineTo(f12, f13);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, (Property<View, Float>) View.TRANSLATION_Y, path);
        androidx.leanback.transition.g gVar = new androidx.leanback.transition.g(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        fadeAndShortSlide.addListener(gVar);
        objectAnimatorOfFloat.addListener(gVar);
        objectAnimatorOfFloat.addPauseListener(gVar);
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        return objectAnimatorOfFloat;
    }

    public static ResponseBody h(ba.r rVar, n nVar) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rVar.f2741c);
        sb2.append("&path=");
        sb2.append(URLEncoder.encode(rVar.f2750m + "/" + ((String) nVar.f2724d), "utf-8"));
        String strReplace = sb2.toString().replace("cmd=list", "cmd=play");
        PrintStream printStream = System.out;
        printStream.getClass();
        l9.a aVar = new l9.a(strReplace);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", rVar.f2741c);
        aVar.f11017i.b(rVar.f2747i.isEmpty() ? "gj" : "Cookie", rVar.f2747i);
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        if (!responseBodyBody.contentType().type().equals("text")) {
            return responseBodyBody;
        }
        responseBodyBody.string();
        printStream.getClass();
        throw new Exception("请求失败");
    }

    public static void i(Canvas canvas, GetChars getChars, int i10, int i11, int i12, int i13, float f10, float f11, boolean z, Paint paint) {
        char[] cArrE = sb.h.e(i13);
        getChars.getChars(i12, i12 + i13, cArrE, 0);
        canvas.drawTextRun(cArrE, i10 - i12, i11, 0, i13, f10, f11, z, paint);
        sb.h.h(cArrE);
    }

    public static boolean j(int i10, int[] iArr) {
        return ((1 << (i10 & 31)) & iArr[i10 >> 5]) != 0;
    }

    public static char k(int i10, byte[] bArr) {
        int i11 = i10 << 1;
        return (char) ((bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8));
    }

    public static int l(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                return iArr2[0] & 3;
            case 1:
                return iArr2[1];
            case 2:
                return iArr2[2] & 1;
            case 3:
                return (iArr2[2] >> 1) & 1;
            case 4:
                return (iArr2[2] >> 2) & 1;
            case 5:
                return (iArr2[2] >> 3) & 1;
            case 6:
                return (iArr2[2] >> 4) & 1;
            case 7:
                return (iArr2[2] >> 5) & 1;
            default:
                if (i10 == 9) {
                    return (iArr2[2] >> 6) & 1;
                }
                if (i10 == 10) {
                    return (iArr2[2] >> 7) & 1;
                }
                switch (i10) {
                    case 12:
                        return iArr2[3] & 1;
                    case 13:
                        return (iArr2[3] >> 1) & 1;
                    case 14:
                        return (iArr2[3] >> 2) & 1;
                    case 15:
                        return (iArr2[3] >> 3) & 1;
                    default:
                        switch (i10) {
                            case 26:
                                return (iArr2[3] >> 5) & 1;
                            case 27:
                                return iArr2[7] & 15;
                            case 28:
                                return (iArr2[7] >> 4) & 7;
                            case 29:
                                return (iArr2[7] >> 7) & 1;
                            case 30:
                                return iArr2[8] & 1;
                            case 31:
                                return (iArr2[8] >> 4) & 1;
                            case 32:
                                return (iArr2[8] >> 5) & 1;
                            case 33:
                                return (iArr2[8] >> 6) & 1;
                            case 34:
                                return (iArr2[8] >> 7) & 1;
                            case 35:
                                return iArr2[9] & 1;
                            case 36:
                                return (iArr2[9] >> 1) & 1;
                            case 37:
                                return (iArr2[9] >> 2) & 1;
                            case 38:
                                return iArr2[10] & 1;
                            case 39:
                                return (iArr2[10] >> 1) & 1;
                            case 40:
                                return (iArr2[10] >> 2) & 1;
                            case 41:
                                return (iArr2[10] >> 3) & 1;
                            case 42:
                                return (iArr2[10] >> 4) & 1;
                            case 43:
                                return (iArr2[10] >> 5) & 1;
                            case 44:
                                return (iArr2[10] >> 6) & 1;
                            case 45:
                                return (iArr2[10] >> 7) & 1;
                            case 46:
                                return iArr2[11] & 1;
                            case 47:
                                return iArr2[12] & 7;
                            case 48:
                                return (iArr2[12] >> 3) & 7;
                            case 49:
                                return (iArr2[12] >> 6) & 1;
                            case 50:
                                return (iArr2[13] >> 4) & 3;
                            case 51:
                                return (iArr2[13] >> 6) & 3;
                            case 52:
                                return iArr2[14] & 3;
                            case 53:
                                return (iArr2[14] >> 2) & 3;
                            case 54:
                                return (iArr2[14] >> 4) & 1;
                            case 55:
                                return (iArr2[14] >> 5) & 1;
                            case 56:
                                return (iArr2[14] >> 6) & 1;
                            case 57:
                                return (iArr2[14] >> 7) & 1;
                            case 58:
                                return iArr2[15] & 1;
                            case 59:
                                return (iArr2[15] >> 1) & 1;
                            case 60:
                                return (iArr2[15] >> 2) & 1;
                            case 61:
                                return (iArr2[15] >> 3) & 1;
                            case 62:
                                return (iArr2[15] >> 4) & 1;
                            case 63:
                                return (iArr2[15] >> 5) & 1;
                            case 64:
                                return (iArr2[15] >> 6) & 1;
                            case 65:
                                return (iArr2[15] >> 7) & 1;
                            case 66:
                                return iArr2[16] & 3;
                            case 67:
                                return (iArr2[16] >> 2) & 1;
                            case 68:
                                return (iArr2[16] >> 3) & 1;
                            case 69:
                                return (iArr2[16] >> 4) & 1;
                            case 70:
                                return (iArr2[16] >> 5) & 1;
                            case 71:
                                return (iArr2[16] >> 6) & 1;
                            case 72:
                                return (iArr2[16] >> 7) & 1;
                            case 73:
                                return iArr2[17] & 3;
                            case 74:
                                return (iArr2[17] >> 2) & 1;
                            case 75:
                                return (iArr2[17] >> 3) & 1;
                            case 76:
                                return (iArr2[17] >> 4) & 1;
                            case 77:
                                return (iArr2[17] >> 5) & 1;
                            case 78:
                                return (iArr2[17] >> 6) & 1;
                            case 79:
                                return (iArr2[17] >> 7) & 1;
                            case 80:
                                return iArr2[18] & 1;
                            case 81:
                                return (iArr2[18] >> 1) & 1;
                            case 82:
                                return (iArr2[18] >> 2) & 1;
                            case 83:
                                return (iArr2[18] >> 3) & 1;
                            case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                return (iArr2[18] >> 4) & 1;
                            case 85:
                                return (iArr2[18] >> 5) & 1;
                            case 86:
                                return (iArr2[18] >> 6) & 1;
                            case 87:
                                return (iArr2[18] >> 7) & 1;
                            case 88:
                                return iArr2[21] & 1;
                            case 89:
                                return (iArr2[21] >> 1) & 1;
                            case 90:
                                return (iArr2[21] >> 2) & 1;
                            case 91:
                                return (iArr2[21] >> 3) & 1;
                            case 92:
                                return (iArr2[21] >> 4) & 1;
                            case 93:
                                return (iArr2[21] >> 5) & 1;
                            case 94:
                                return (iArr2[21] >> 6) & 1;
                            case 95:
                                return (iArr2[21] >> 7) & 1;
                            case 96:
                                return iArr2[23] & 1;
                            case 97:
                                return (iArr2[23] >> 1) & 1;
                            case 98:
                                return (iArr2[23] >> 2) & 1;
                            case 99:
                                return (iArr2[23] >> 3) & 1;
                            case 100:
                                return (iArr2[23] >> 4) & 1;
                            case 101:
                                return (iArr2[23] >> 5) & 1;
                            default:
                                switch (i10) {
                                    case 103:
                                        return (iArr2[23] >> 7) & 1;
                                    case 104:
                                        return iArr2[24] & 1;
                                    case 105:
                                        return (iArr2[24] >> 1) & 1;
                                    case 106:
                                        return (iArr2[24] >> 2) & 1;
                                    case 107:
                                        return (iArr2[24] >> 3) & 1;
                                    case 108:
                                        return (iArr2[24] >> 4) & 1;
                                    case 109:
                                        return (iArr2[24] >> 5) & 1;
                                    case 110:
                                        return (iArr2[24] >> 6) & 3;
                                    case 111:
                                        return iArr2[25] & 1;
                                    case 112:
                                        return (iArr2[25] >> 1) & 1;
                                    case 113:
                                        return (iArr2[25] >> 2) & 1;
                                    case 114:
                                        return (iArr2[25] >> 3) & 1;
                                    case 115:
                                        return (iArr2[25] >> 4) & 1;
                                    case 116:
                                        return (iArr2[25] >> 5) & 1;
                                    case 117:
                                        return (iArr2[25] >> 6) & 1;
                                    case 118:
                                        return (iArr2[25] >> 7) & 1;
                                    case 119:
                                        return iArr2[26] & 1;
                                    case 120:
                                        return (iArr2[26] >> 1) & 1;
                                    case 121:
                                        return (iArr2[26] >> 2) & 1;
                                    case 122:
                                        return (iArr2[26] >> 3) & 1;
                                    case 123:
                                        return (iArr2[26] >> 4) & 1;
                                    case 124:
                                        return (iArr2[26] >> 5) & 1;
                                    case 125:
                                        return (iArr2[26] >> 6) & 1;
                                    case 126:
                                        return (iArr2[26] >> 7) & 1;
                                    case 127:
                                        return iArr2[30] & 1;
                                    case 128:
                                        return (iArr2[30] >> 1) & 1;
                                    case 129:
                                        return (iArr2[30] >> 2) & 1;
                                    case 130:
                                        return (iArr2[30] >> 3) & 3;
                                    case 131:
                                        return (iArr2[30] >> 5) & 3;
                                    case 132:
                                        return (iArr2[30] >> 7) & 1;
                                    case 133:
                                        return iArr2[31] & 1;
                                    case 134:
                                        return (iArr2[31] >> 1) & 3;
                                    case 135:
                                        return (iArr2[31] >> 3) & 1;
                                    case 136:
                                        return (iArr2[31] >> 4) & 1;
                                    case 137:
                                        return (iArr2[31] >> 5) & 1;
                                    case 138:
                                        return (iArr2[31] >> 6) & 3;
                                    case 139:
                                        return iArr2[32] & 3;
                                    case 140:
                                        return (iArr2[32] >> 2) & 3;
                                    case 141:
                                        return (iArr2[32] >> 4) & 3;
                                    case 142:
                                        return (iArr2[32] >> 6) & 1;
                                    case 143:
                                        return (iArr2[32] >> 7) & 1;
                                    case 144:
                                        return iArr2[33] & 3;
                                    case 145:
                                        return (iArr2[33] >> 2) & 3;
                                    case 146:
                                        return (iArr2[33] >> 4) & 3;
                                    default:
                                        switch (i10) {
                                            case 148:
                                                return (iArr2[33] >> 7) & 1;
                                            case 149:
                                                return iArr2[34] & 1;
                                            case 150:
                                                return (iArr2[3] >> 6) & 1;
                                            default:
                                                switch (i10) {
                                                    case 200:
                                                        return iArr[0] & 15;
                                                    case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                        return iArr[1] & 1;
                                                    case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                        return (iArr[1] >> 1) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                        return (iArr[1] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                        return iArr[2] & 3;
                                                    case 205:
                                                        return (iArr[2] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                        return (iArr[2] >> 3) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                        return (iArr[2] >> 4) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                        return (iArr[2] >> 5) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                        return (iArr[2] >> 6) & 3;
                                                    case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                        return iArr[4] & 1;
                                                    case 211:
                                                        return (iArr[4] >> 1) & 7;
                                                    case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                        return (iArr[4] >> 4) & 15;
                                                    case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                        return iArr[5] & 7;
                                                    case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                        return (iArr[5] >> 3) & 7;
                                                    default:
                                                        switch (i10) {
                                                            case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                return (iArr[6] >> 2) & 3;
                                                            case 217:
                                                                return (iArr[6] >> 4) & 3;
                                                            case 218:
                                                                return (iArr[6] >> 6) & 3;
                                                            case 219:
                                                                return iArr[7] & 15;
                                                            case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                return (iArr[7] >> 4) & 3;
                                                            case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                return (iArr[7] >> 6) & 3;
                                                            case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                return iArr[3] & 1;
                                                            case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                return iArr2[27] & 7;
                                                            case 224:
                                                                return (iArr2[27] >> 3) & 31;
                                                            case 225:
                                                                return iArr2[19] & 1;
                                                            case 226:
                                                                return (iArr[1] >> 3) & 1;
                                                            case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                return iArr2[28] & 15;
                                                            case 228:
                                                                return (iArr2[9] >> 3) & 1;
                                                            case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                                return (iArr2[19] >> 1) & 1;
                                                            case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                                return (iArr2[28] >> 4) & 1;
                                                            case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                                return (iArr2[9] >> 4) & 1;
                                                            case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                return iArr[8] & 1;
                                                            case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                                return (iArr2[8] >> 1) & 1;
                                                            case 234:
                                                                return (iArr2[11] >> 1) & 3;
                                                            case 235:
                                                                return (iArr2[19] >> 2) & 1;
                                                            case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                return (iArr2[9] >> 5) & 1;
                                                            case 237:
                                                                return (iArr2[28] >> 6) & 1;
                                                            case 238:
                                                                return (iArr2[0] >> 2) & 3;
                                                            case 239:
                                                                return (iArr2[19] >> 3) & 1;
                                                            default:
                                                                switch (i10) {
                                                                    case 10016:
                                                                        return iArr2[29] & 1;
                                                                    case 10017:
                                                                        return (iArr2[29] >> 1) & 1;
                                                                    case 10018:
                                                                        return (iArr2[29] >> 2) & 1;
                                                                    case 10019:
                                                                        return (iArr2[34] >> 3) & 1;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 10032:
                                                                                return (iArr2[11] >> 3) & 1;
                                                                            case 10033:
                                                                                return (iArr2[11] >> 4) & 3;
                                                                            case 10034:
                                                                                return (iArr2[11] >> 6) & 1;
                                                                            case 10035:
                                                                                return (iArr2[29] >> 5) & 1;
                                                                            case 10036:
                                                                                return (iArr2[29] >> 6) & 1;
                                                                            case 10037:
                                                                                return (iArr2[29] >> 7) & 1;
                                                                            default:
                                                                                if (i10 == 10067) {
                                                                                    return (iArr[1] >> 4) & 1;
                                                                                }
                                                                                if (i10 == 10068) {
                                                                                    return (iArr[3] >> 1) & 1;
                                                                                }
                                                                                if (i10 == 18) {
                                                                                    return (iArr2[3] >> 4) & 1;
                                                                                }
                                                                                if (i10 == 10039) {
                                                                                    return (iArr2[8] >> 3) & 1;
                                                                                }
                                                                                if (i10 != 10098) {
                                                                                    return 0;
                                                                                }
                                                                                return (iArr[3] >> 2) & 3;
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static ArrayList m(ba.r rVar, String str) {
        String str2 = rVar.f2741c;
        if (rVar.f2747i.isEmpty()) {
            if (rVar.f2741c.contains("&path=")) {
                String str3 = rVar.f2741c;
                rVar.f2741c = str3.substring(0, str3.indexOf("&path="));
            }
            if (str.isEmpty()) {
                l9.a aVar = new l9.a(str2);
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar.f11017i.b("Referer", rVar.f2741c);
                Response responseA = aVar.a();
                if (!responseA.isSuccessful()) {
                    throw new Exception("请求失败");
                }
                ResponseBody responseBodyBody = responseA.body();
                if (responseBodyBody == null) {
                    throw new Exception("请求失败");
                }
                str = responseBodyBody.string();
            }
            if (str.contains("submitCode")) {
                if (rVar.f2742d.isEmpty()) {
                    throw new Exception("请输入提取码");
                }
                double dCurrentTimeMillis = System.currentTimeMillis();
                Double.isNaN(dCurrentTimeMillis);
                long j10 = (long) (dCurrentTimeMillis / 1000.0d);
                l9.a aVar2 = new l9.a(str2);
                aVar2.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar2.f11017i.b("Referer", rVar.f2741c);
                StringBuilder sb2 = new StringBuilder("web_");
                sb2.append(j10);
                sb2.append("_");
                sb2.append(p000if.a.p0(j10 + rVar.f2742d));
                aVar2.f11017i.b("Authorization", sb2.toString());
                Response responseA2 = aVar2.a();
                if (!responseA2.isSuccessful()) {
                    throw new Exception("请求失败");
                }
                ResponseBody responseBodyBody2 = responseA2.body();
                if (responseBodyBody2 == null) {
                    throw new Exception("请求失败");
                }
                if (responseBodyBody2.string().contains("submitCode")) {
                    throw new Exception("提取码错误");
                }
                String str4 = responseA2.headers().get("Set-Cookie");
                if (str4 == null || str4.isEmpty()) {
                    throw new Exception("验证失败");
                }
                rVar.f2747i = str4;
            }
        }
        StringBuilder sbB = d0.f.b(str2, "&path=");
        sbB.append(rVar.f2750m.isEmpty() ? "" : URLEncoder.encode(rVar.f2750m, HTTP.UTF_8));
        l9.a aVar3 = new l9.a(sbB.toString());
        aVar3.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar3.f11017i.b("Referer", rVar.f2741c);
        aVar3.f11017i.b(rVar.f2747i.isEmpty() ? "gj" : "Cookie", rVar.f2747i);
        Response responseA3 = aVar3.a();
        if (!responseA3.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody3 = responseA3.body();
        if (responseBodyBody3 == null) {
            throw new Exception("请求失败");
        }
        try {
            z7.s sVarG = d.b.b0(responseBodyBody3.string()).g();
            ArrayList arrayList = new ArrayList();
            o oVarF = sVarG.o("files").f();
            for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                z7.s sVarG2 = oVarF.l(i10).g();
                n nVar = new n();
                nVar.f2724d = sVarG2.o("name").i();
                nVar.f2723c = sVarG2.o("size").h();
                nVar.f2722b = sVarG2.o("mtime").h();
                nVar.f2721a = sVarG2.o("type").e() == 5;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(p000if.a.m0(nVar.f2722b));
                sb3.append("    ");
                sb3.append(nVar.f2721a ? "" : p000if.a.D0(nVar.f2723c));
                nVar.f2725e = sb3.toString();
                arrayList.add(new b6(nVar));
            }
            return arrayList;
        } catch (Exception unused) {
            throw new Exception("请求失败0");
        }
    }

    public static z7.s n(Context context) {
        try {
            File file = new File(context.getFilesDir().getAbsolutePath(), "FloatButton.json");
            if (file.exists()) {
                return d.b.b0(J(file)).g();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static int o(int i10, byte[] bArr) {
        return (bArr[i10 + 3] & 255) | (bArr[i10] << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int p(int i10, byte[] bArr) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static z7.s q(Context context) {
        try {
            return d.b.b0(J(new File(context.getFilesDir().getAbsolutePath(), "KeyMapAiOnY.json"))).g();
        } catch (Exception unused) {
            return null;
        }
    }

    public static z7.s r(Context context) {
        try {
            return d.b.b0(J(new File(context.getFilesDir().getAbsolutePath(), "MapFleOS18.json"))).g();
        } catch (Exception unused) {
            return null;
        }
    }

    public static z7.s s(ContextWrapper contextWrapper) {
        try {
            return d.b.b0(J(new File(contextWrapper.getFilesDir().getAbsolutePath(), "KeyMapJieT.json"))).g();
        } catch (Exception unused) {
            return null;
        }
    }

    public static z7.s t(Context context) {
        return I(new File(context.getFilesDir().getAbsolutePath(), "KeyMapNissan.json"));
    }

    public static int u() {
        s sVarL0 = u9.d.r("getprop persist.log.tag").l0();
        if (!sVarL0.q() || sVarL0.k().isEmpty() || (sVarL0.k().size() == 1 && ((String) sVarL0.k().get(0)).trim().isEmpty())) {
            return 2;
        }
        if (((String) sVarL0.k().get(0)).equals("SILENT")) {
            return 8;
        }
        if (((String) sVarL0.k().get(0)).equals("ASSERT")) {
            return 7;
        }
        if (((String) sVarL0.k().get(0)).equals("ERROR")) {
            return 6;
        }
        if (((String) sVarL0.k().get(0)).equals("WARN")) {
            return 5;
        }
        if (((String) sVarL0.k().get(0)).equals("INFO")) {
            return 4;
        }
        if (((String) sVarL0.k().get(0)).equals("DEBUG")) {
            return 3;
        }
        if (((String) sVarL0.k().get(0)).equals("VERBOSE")) {
            return 2;
        }
        if (((String) sVarL0.k().get(0)).equals("8")) {
            return 8;
        }
        if (((String) sVarL0.k().get(0)).equals("7")) {
            return 7;
        }
        if (((String) sVarL0.k().get(0)).equals("6")) {
            return 6;
        }
        if (((String) sVarL0.k().get(0)).equals("5")) {
            return 5;
        }
        if (((String) sVarL0.k().get(0)).equals("4")) {
            return 4;
        }
        if (((String) sVarL0.k().get(0)).equals("3")) {
            return 3;
        }
        if (((String) sVarL0.k().get(0)).equals("2")) {
            return 2;
        }
        if (((String) sVarL0.k().get(0)).equals("S")) {
            return 8;
        }
        if (((String) sVarL0.k().get(0)).equals("A")) {
            return 7;
        }
        if (((String) sVarL0.k().get(0)).equals("E")) {
            return 6;
        }
        if (((String) sVarL0.k().get(0)).equals("W")) {
            return 5;
        }
        if (((String) sVarL0.k().get(0)).equals("I") || ((String) sVarL0.k().get(0)).equals("l")) {
            return 4;
        }
        if (((String) sVarL0.k().get(0)).equals("D")) {
            return 3;
        }
        ((String) sVarL0.k().get(0)).equals("V");
        return 2;
    }

    public static String v() {
        s sVarL0 = u9.d.r("getprop persist.log.tag").l0();
        return (!sVarL0.q() || sVarL0.k().isEmpty()) ? "无限制" : (sVarL0.k().size() == 1 && ((String) sVarL0.k().get(0)).trim().isEmpty()) ? "无限制" : ((String) sVarL0.k().get(0)).equals("SILENT") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("ASSERT") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("ERROR") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("WARN") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("INFO") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("DEBUG") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("VERBOSE") ? (String) sVarL0.k().get(0) : ((String) sVarL0.k().get(0)).equals("8") ? "SILENT" : ((String) sVarL0.k().get(0)).equals("7") ? "ASSERT" : ((String) sVarL0.k().get(0)).equals("6") ? "ERROR" : ((String) sVarL0.k().get(0)).equals("5") ? "WARN" : ((String) sVarL0.k().get(0)).equals("4") ? "INFO" : ((String) sVarL0.k().get(0)).equals("3") ? "DEBUG" : ((String) sVarL0.k().get(0)).equals("2") ? "VERBOSE" : ((String) sVarL0.k().get(0)).equals("S") ? "SILENT" : ((String) sVarL0.k().get(0)).equals("A") ? "ASSERT" : ((String) sVarL0.k().get(0)).equals("E") ? "ERROR" : ((String) sVarL0.k().get(0)).equals("W") ? "WARN" : (((String) sVarL0.k().get(0)).equals("I") || ((String) sVarL0.k().get(0)).equals("l")) ? "INFO" : ((String) sVarL0.k().get(0)).equals("D") ? "DEBUG" : ((String) sVarL0.k().get(0)).equals("V") ? "VERBOSE" : (String) sVarL0.k().get(0);
    }

    public static String w(ClassLoader classLoader, Class cls) throws NoSuchFieldException, SecurityException {
        try {
            Field declaredField = cls.getDeclaredField("path");
            declaredField.setAccessible(true);
            return (String) declaredField.get(classLoader);
        } catch (ClassCastException | IllegalAccessException | NoSuchFieldException unused) {
            String string = classLoader.toString();
            if (!string.contains("DexPathList")) {
                int iLastIndexOf = string.lastIndexOf(91);
                if (iLastIndexOf != -1) {
                    string = string.substring(iLastIndexOf + 1);
                }
                int iIndexOf = string.indexOf(93);
                return iIndexOf == -1 ? string : string.substring(0, iIndexOf);
            }
            int iIndexOf2 = string.indexOf("DexPathList");
            int i10 = iIndexOf2 + 11;
            if (string.length() <= iIndexOf2 + 15) {
                return string;
            }
            String strSubstring = string.substring(i10);
            int iIndexOf3 = strSubstring.indexOf(93);
            if (strSubstring.charAt(0) != '[' || strSubstring.charAt(1) != '[' || iIndexOf3 < 0) {
                return string;
            }
            String[] strArrSplit = strSubstring.substring(2, iIndexOf3).split(",");
            for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                int iIndexOf4 = strArrSplit[i11].indexOf(34);
                int iLastIndexOf2 = strArrSplit[i11].lastIndexOf(34);
                if (iIndexOf4 > 0 && iIndexOf4 < iLastIndexOf2) {
                    strArrSplit[i11] = strArrSplit[i11].substring(iIndexOf4 + 1, iLastIndexOf2);
                }
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : strArrSplit) {
                if (sb2.length() > 0) {
                    sb2.append(':');
                }
                sb2.append(str);
            }
            return sb2.toString();
        }
    }

    public static z7.s x(ContextWrapper contextWrapper) {
        try {
            return d.b.b0(J(new File(contextWrapper.getFilesDir().getAbsolutePath(), "Sidebar.json"))).g();
        } catch (Exception unused) {
            return null;
        }
    }

    public static mc.g y(String str) {
        return new mc.c(0, new b8.a(str, 8)).d(rc.f.f13757b).a(fc.b.a());
    }

    public static boolean z(String str, String str2) throws IOException {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                Bitmap scaledFrameAtTime = Build.VERSION.SDK_INT >= 27 ? mediaMetadataRetriever.getScaledFrameAtTime(1000000L, 2, 200, 180) : mediaMetadataRetriever.getFrameAtTime(1000000L, 0);
                if (scaledFrameAtTime != null && scaledFrameAtTime.getWidth() != 0 && scaledFrameAtTime.getHeight() != 0) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2);
                    scaledFrameAtTime.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    try {
                        fileOutputStream.flush();
                    } catch (Exception unused) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                    scaledFrameAtTime.recycle();
                    try {
                        mediaMetadataRetriever.release();
                    } catch (Exception unused3) {
                    }
                    try {
                        mediaMetadataRetriever.release();
                        return true;
                    } catch (Exception unused4) {
                        return true;
                    }
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception unused5) {
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception unused6) {
                }
                return false;
            } catch (Exception e7) {
                e7.printStackTrace();
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception unused7) {
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception unused8) {
                }
                return false;
            }
        } finally {
        }
    }

    public void F() {
    }

    public void L() {
    }

    public void b(Context context, com.bumptech.glide.e eVar) {
    }
}
