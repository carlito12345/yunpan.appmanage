package a2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Trace;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.util.SparseArray;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.service.AccService;
import ha.a9;
import ha.ea;
import ha.jd;
import ha.v4;
import ha.wd;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParserException;
import x0.g2;
import x0.j2;

/* loaded from: classes.dex */
public final class g1 implements OSSProgressCallback, c4.d, com.yunpan.appmanage.carsdk.v, d2.m, d2.n, x0.x, com.bumptech.glide.load.data.d, c6.e, ea, wd, i5.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f174a;

    /* renamed from: b, reason: collision with root package name */
    public Object f175b;

    /* renamed from: c, reason: collision with root package name */
    public Object f176c;

    public /* synthetic */ g1(int i10, Object obj) {
        this.f174a = i10;
        this.f176c = obj;
    }

    public static boolean O(Editable editable, KeyEvent keyEvent, boolean z) {
        androidx.emoji2.text.w[] wVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (wVarArr = (androidx.emoji2.text.w[]) editable.getSpans(selectionStart, selectionEnd, androidx.emoji2.text.w.class)) != null && wVarArr.length > 0) {
            for (androidx.emoji2.text.w wVar : wVarArr) {
                int spanStart = editable.getSpanStart(wVar);
                int spanEnd = editable.getSpanEnd(wVar);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static String R(int i10, int i11, Bitmap.Config config) {
        StringBuilder sbO = ta.q.o(i10, i11, "[", "x", "], ");
        sbO.append(config);
        return sbO.toString();
    }

    @Override // c4.d
    public String A() {
        return (String) this.f175b;
    }

    @Override // com.bumptech.glide.load.data.d
    public void B(Object obj) {
        h5.e0 e0Var = (h5.e0) this.f176c;
        l5.p pVar = (l5.p) this.f175b;
        l5.p pVar2 = e0Var.f6555f;
        if (pVar2 == null || pVar2 != pVar) {
            return;
        }
        h5.e0 e0Var2 = (h5.e0) this.f176c;
        l5.p pVar3 = (l5.p) this.f175b;
        h5.l lVar = e0Var2.f6550a.f6571p;
        if (obj != null && lVar.a(pVar3.f10606c.c())) {
            e0Var2.f6554e = obj;
            e0Var2.f6551b.n(2);
        } else {
            h5.j jVar = e0Var2.f6551b;
            f5.f fVar = pVar3.f10604a;
            com.bumptech.glide.load.data.e eVar = pVar3.f10606c;
            jVar.a(fVar, obj, eVar, eVar.c(), e0Var2.f6556g);
        }
    }

    @Override // d2.n
    public ByteBuffer C(int i10) {
        return ((MediaCodec) this.f175b).getInputBuffer(i10);
    }

    @Override // ha.wd
    public void D() {
        z7.s sVar = new z7.s();
        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) this.f175b;
        sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
        a9 a9Var = (a9) this.f176c;
        a9Var.f6745s.m("name", keyMapSelectBean.gn_name);
        a9Var.f6745s.j("event", sVar);
        a9Var.b(keyMapSelectBean.gn_name);
    }

    @Override // d2.n
    public void E(Surface surface) {
        ((MediaCodec) this.f175b).setOutputSurface(surface);
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void F(Object obj, int i10, int i11, int i12) {
        if (i10 == 289408001) {
            int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : obj instanceof Short ? ((Short) obj).shortValue() : obj instanceof Byte ? ((Byte) obj).byteValue() : -1;
            com.yunpan.appmanage.carsdk.x xVar = (com.yunpan.appmanage.carsdk.x) this.f176c;
            AccService accService = (AccService) this.f175b;
            if (iIntValue == 2) {
                accService.b((z7.o) xVar.l.get(2));
                return;
            }
            if (iIntValue == 4) {
                accService.b((z7.o) xVar.l.get(1));
            } else if (iIntValue == 1) {
                accService.b((z7.o) xVar.l.get(3));
            } else if (iIntValue == 8) {
                accService.b((z7.o) xVar.l.get(4));
            }
        }
    }

    @Override // i5.h
    public int G(Bitmap bitmap) {
        return a6.q.c(bitmap);
    }

    @Override // d2.n
    public ByteBuffer H(int i10) {
        return ((MediaCodec) this.f175b).getOutputBuffer(i10);
    }

    @Override // d2.n
    public void I(ArrayList arrayList) {
        ((MediaCodec) this.f175b).subscribeToVendorParameters(arrayList);
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void J(Object obj, int i10, int i11, int i12) {
        int i13;
        com.yunpan.appmanage.carsdk.x xVar = (com.yunpan.appmanage.carsdk.x) this.f176c;
        xVar.getClass();
        switch (i10) {
            case 1090650368:
                i13 = 10001;
                break;
            case 1090650624:
                i13 = 10002;
                break;
            case 1090650880:
                i13 = 10003;
                break;
            case 1090651136:
                i13 = 10000;
                break;
            case 1090652160:
                i13 = 10004;
                break;
            default:
                i13 = 0;
                break;
        }
        if (i13 == 0) {
            xVar.f3910j.removeMessages(2);
            xVar.f3915p = 0;
            return;
        }
        xVar.f3910j.removeMessages(2);
        AccService accService = (AccService) this.f175b;
        if (i12 == 1) {
            if (xVar.f3915p > 0 && xVar.f3913n.containsKey(Integer.valueOf(i13)) && xVar.f3912m.get(Integer.valueOf(i10)) != null && System.currentTimeMillis() - ((Long) xVar.f3912m.get(Integer.valueOf(i10))).longValue() < xVar.f3916q) {
                xVar.f3910j.removeMessages(1);
                accService.b((z7.o) xVar.f3913n.get(Integer.valueOf(i13)));
                xVar.f3915p = 0;
                return;
            } else {
                if (xVar.f3914o.containsKey(Integer.valueOf(i13))) {
                    xVar.f3910j.sendEmptyMessageDelayed(2, xVar.r);
                }
                xVar.f3915p = i10;
                xVar.f3912m.put(Integer.valueOf(i10), Long.valueOf(System.currentTimeMillis()));
                return;
            }
        }
        if (i12 != 2 || xVar.f3915p == 0 || xVar.l.get(Integer.valueOf(i13)) == null) {
            return;
        }
        if (!xVar.f3914o.containsKey(Integer.valueOf(i13)) && !xVar.f3913n.containsKey(Integer.valueOf(i13))) {
            accService.b((z7.o) xVar.l.get(Integer.valueOf(i13)));
            return;
        }
        if (!xVar.f3913n.containsKey(Integer.valueOf(i13))) {
            accService.b((z7.o) xVar.l.get(Integer.valueOf(i13)));
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.arg1 = i13;
        xVar.f3910j.sendMessageDelayed(messageObtain, xVar.f3916q + 30);
    }

    @Override // i5.h
    public String K(Bitmap bitmap) {
        return R(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // d2.n
    public void L(ArrayList arrayList) {
        ((MediaCodec) this.f175b).unsubscribeFromVendorParameters(arrayList);
    }

    public String M(f5.f fVar) {
        String str;
        j5.i iVar = (j5.i) ((v3.f) this.f176c).l();
        try {
            fVar.b(iVar.f9766a);
            byte[] bArrDigest = iVar.f9766a.digest();
            char[] cArr = a6.q.f447b;
            synchronized (cArr) {
                for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                    byte b10 = bArrDigest[i10];
                    int i11 = i10 * 2;
                    char[] cArr2 = a6.q.f446a;
                    cArr[i11] = cArr2[(b10 & 255) >>> 4];
                    cArr[i11 + 1] = cArr2[b10 & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            ((v3.f) this.f176c).L(iVar);
        }
    }

    @Override // d2.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public d2.f s(ba.i iVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        int i10;
        d2.o hVar;
        int i11;
        d2.f fVar;
        String str = ((d2.q) iVar.f2698a).f4294a;
        d2.f fVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                i10 = Build.VERSION.SDK_INT;
                if (i10 >= 36) {
                    hVar = new a1.i(15, mediaCodecCreateByCodecName);
                    i11 = 4;
                } else {
                    hVar = new d2.h(mediaCodecCreateByCodecName, (HandlerThread) ((d2.e) this.f176c).get());
                    i11 = 0;
                }
                fVar = new d2.f(mediaCodecCreateByCodecName, (HandlerThread) ((d2.e) this.f175b).get(), hVar, (v3.f) iVar.f2703f);
            } catch (Exception e7) {
                e = e7;
            }
            try {
                Trace.endSection();
                Surface surface = (Surface) iVar.f2701d;
                if (surface == null && ((d2.q) iVar.f2698a).f4301h && i10 >= 35) {
                    i11 |= 8;
                }
                d2.f.b(fVar, (MediaFormat) iVar.f2699b, surface, (MediaCrypto) iVar.f2702e, i11);
                return fVar;
            } catch (Exception e10) {
                e = e10;
                fVar2 = fVar;
                if (fVar2 != null) {
                    fVar2.a();
                } else if (mediaCodecCreateByCodecName != null) {
                    mediaCodecCreateByCodecName.release();
                }
                throw e;
            }
        } catch (Exception e11) {
            e = e11;
            mediaCodecCreateByCodecName = null;
        }
    }

    public Object P(i5.i iVar) {
        HashMap map = (HashMap) this.f176c;
        i5.e eVar = (i5.e) map.get(iVar);
        if (eVar == null) {
            eVar = new i5.e(iVar);
            map.put(iVar, eVar);
        } else {
            iVar.a();
        }
        i5.e eVar2 = eVar.f8613d;
        eVar2.f8612c = eVar.f8612c;
        eVar.f8612c.f8613d = eVar2;
        i5.e eVar3 = (i5.e) this.f175b;
        eVar.f8613d = eVar3;
        i5.e eVar4 = eVar3.f8612c;
        eVar.f8612c = eVar4;
        eVar4.f8613d = eVar;
        eVar.f8613d.f8612c = eVar;
        ArrayList arrayList = eVar.f8611b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return eVar.f8611b.remove(size - 1);
        }
        return null;
    }

    public p Q(r1.d dVar, r1.p pVar) {
        int i10;
        boolean zBooleanValue;
        pVar.getClass();
        dVar.getClass();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 29 || (i10 = pVar.H) == -1) {
            return p.f267d;
        }
        Boolean bool = (Boolean) this.f176c;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            Context context = (Context) this.f175b;
            if (context != null) {
                String parameters = s1.g.v(context).getParameters("offloadVariableRateSupported");
                this.f176c = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            } else {
                this.f176c = Boolean.FALSE;
            }
            zBooleanValue = ((Boolean) this.f176c).booleanValue();
        }
        String str = pVar.f13523o;
        str.getClass();
        int iB = r1.e0.b(str, pVar.f13520k);
        if (iB == 0 || i11 < u1.f0.l(iB)) {
            return p.f267d;
        }
        int iN = u1.f0.n(pVar.G);
        if (iN == 0) {
            return p.f267d;
        }
        try {
            AudioFormat audioFormatM = u1.f0.m(i10, iN, iB);
            if (i11 >= 33) {
                int directPlaybackSupport = AudioManager.getDirectPlaybackSupport(audioFormatM, dVar.a());
                if ((directPlaybackSupport & 1) == 0) {
                    return p.f267d;
                }
                z = (directPlaybackSupport & 3) == 3;
                o oVar = new o();
                oVar.f260a = true;
                oVar.f261b = z;
                oVar.f262c = zBooleanValue;
                return oVar.a();
            }
            if (i11 < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(audioFormatM, dVar.a())) {
                    return p.f267d;
                }
                o oVar2 = new o();
                oVar2.f260a = true;
                oVar2.f262c = zBooleanValue;
                return oVar2.a();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatM, dVar.a());
            if (playbackOffloadSupport == 0) {
                return p.f267d;
            }
            o oVar3 = new o();
            if (i11 > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            oVar3.f260a = true;
            oVar3.f261b = z;
            oVar3.f262c = zBooleanValue;
            return oVar3.a();
        } catch (IllegalArgumentException unused) {
            return p.f267d;
        }
    }

    public void S(int i10, int i11, byte[] bArr) throws IOException {
        do {
            int i12 = ((InputStream) this.f175b).read(bArr, i10, i11);
            if (i12 < 0) {
                throw new IOException("End of IO Stream Read");
            }
            i10 += i12;
            i11 -= i12;
        } while (i11 > 0);
    }

    public String T(f5.f fVar) {
        String strM;
        synchronized (((a6.m) this.f175b)) {
            strM = (String) ((a6.m) this.f175b).a(fVar);
        }
        if (strM == null) {
            strM = M(fVar);
        }
        synchronized (((a6.m) this.f175b)) {
            ((a6.m) this.f175b).d(fVar, strM);
        }
        return strM;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean U(CharSequence charSequence, int i10, int i11, androidx.emoji2.text.p pVar) {
        boolean zA;
        if (pVar.f1128c == 0) {
            androidx.emoji2.text.f fVar = (androidx.emoji2.text.f) this.f176c;
            h1.a aVarC = pVar.c();
            int iA = aVarC.a(8);
            short s8 = iA != 0 ? ((ByteBuffer) aVarC.f6323d).getShort(iA + aVarC.f6320a) : (short) 0;
            fVar.getClass();
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 23 || s8 <= i12) {
                ThreadLocal threadLocal = androidx.emoji2.text.f.f1102b;
                if (threadLocal.get() == null) {
                    threadLocal.set(new StringBuilder());
                }
                StringBuilder sb2 = (StringBuilder) threadLocal.get();
                sb2.setLength(0);
                while (i10 < i11) {
                    sb2.append(charSequence.charAt(i10));
                    i10++;
                }
                TextPaint textPaint = fVar.f1103a;
                String string = sb2.toString();
                ThreadLocal threadLocal2 = p0.e.f12544a;
                if (Build.VERSION.SDK_INT >= 23) {
                    zA = p0.d.a(textPaint, string);
                } else {
                    int length = string.length();
                    if (length != 1 || !Character.isWhitespace(string.charAt(0))) {
                        float fMeasureText = textPaint.measureText("\udfffd");
                        float fMeasureText2 = textPaint.measureText("m");
                        float fMeasureText3 = textPaint.measureText(string);
                        float fMeasureText4 = 0.0f;
                        if (fMeasureText3 != 0.0f) {
                            if (string.codePointCount(0, string.length()) > 1) {
                                if (fMeasureText3 <= fMeasureText2 * 2.0f) {
                                    int i13 = 0;
                                    while (i13 < length) {
                                        int iCharCount = Character.charCount(string.codePointAt(i13)) + i13;
                                        fMeasureText4 += textPaint.measureText(string, i13, iCharCount);
                                        i13 = iCharCount;
                                    }
                                    if (fMeasureText3 >= fMeasureText4) {
                                    }
                                }
                                zA = false;
                            }
                            if (fMeasureText3 != fMeasureText) {
                                zA = true;
                            } else {
                                ThreadLocal threadLocal3 = p0.e.f12544a;
                                w0.c cVar = (w0.c) threadLocal3.get();
                                if (cVar == null) {
                                    cVar = new w0.c(new Rect(), new Rect());
                                    threadLocal3.set(cVar);
                                } else {
                                    cVar.f17343a.setEmpty();
                                    cVar.f17344b.setEmpty();
                                }
                                Rect rect = cVar.f17343a;
                                textPaint.getTextBounds("\udfffd", 0, 2, rect);
                                Rect rect2 = cVar.f17344b;
                                textPaint.getTextBounds(string, 0, length, rect2);
                                zA = !rect.equals(rect2);
                            }
                        } else {
                            zA = false;
                        }
                    }
                }
                pVar.f1128c = zA ? 2 : 1;
            }
        }
        return pVar.f1128c == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0222, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void V(Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, NumberFormatException, IOException {
        int eventType;
        i0.i iVarD;
        char c7;
        i0.n nVar = new i0.n();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlResourceParser.getAttributeName(i10);
            String attributeValue = xmlResourceParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && Name.MARK.equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), Name.MARK, context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                try {
                    eventType = xmlResourceParser.getEventType();
                    iVarD = null;
                } catch (IOException e7) {
                    e7.printStackTrace();
                } catch (XmlPullParserException e10) {
                    e10.printStackTrace();
                }
                while (eventType != 1) {
                    if (eventType != 0) {
                        char c10 = 3;
                        if (eventType == 2) {
                            String name = xmlResourceParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        c10 = 6;
                                        break;
                                    } else {
                                        c10 = 65535;
                                        break;
                                    }
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        c10 = 7;
                                        break;
                                    }
                                    break;
                                case -1962203927:
                                    if (name.equals("ConstraintOverride")) {
                                        c10 = 1;
                                        break;
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        c10 = 4;
                                        break;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        c10 = 5;
                                        break;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        c10 = 2;
                                        break;
                                    }
                                    break;
                                case 366511058:
                                    if (name.equals("CustomMethod")) {
                                        c10 = '\t';
                                        break;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        break;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        c10 = '\b';
                                        break;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        c10 = 0;
                                        break;
                                    }
                                    break;
                                default:
                                    c10 = 65535;
                                    break;
                            }
                            switch (c10) {
                                case 0:
                                    iVarD = i0.n.d(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    break;
                                case 1:
                                    iVarD = i0.n.d(context, Xml.asAttributeSet(xmlResourceParser), true);
                                    break;
                                case 2:
                                    iVarD = i0.n.d(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    iVarD.f8317d.f8321a = true;
                                    break;
                                case 3:
                                    iVarD = i0.n.d(context, Xml.asAttributeSet(xmlResourceParser), false);
                                    iVarD.f8317d.f8336h0 = 1;
                                    break;
                                case 4:
                                    if (iVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    iVarD.f8315b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 5:
                                    if (iVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    iVarD.f8318e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 6:
                                    if (iVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    iVarD.f8317d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 7:
                                    if (iVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    iVarD.f8316c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case '\b':
                                case '\t':
                                    if (iVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    i0.b.a(context, xmlResourceParser, iVarD.f8319f);
                                    break;
                            }
                        } else if (eventType == 3) {
                            String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.ROOT);
                            switch (lowerCase.hashCode()) {
                                case -2075718416:
                                    if (lowerCase.equals("guideline")) {
                                        c7 = 3;
                                        break;
                                    } else {
                                        c7 = 65535;
                                        break;
                                    }
                                case -190376483:
                                    if (lowerCase.equals("constraint")) {
                                        c7 = 1;
                                        break;
                                    }
                                    break;
                                case 426575017:
                                    if (lowerCase.equals("constraintoverride")) {
                                        c7 = 2;
                                        break;
                                    }
                                    break;
                                case 2146106725:
                                    if (lowerCase.equals("constraintset")) {
                                        c7 = 0;
                                        break;
                                    }
                                    break;
                                default:
                                    c7 = 65535;
                                    break;
                            }
                            if (c7 == 0) {
                                ((SparseArray) this.f176c).put(identifier, nVar);
                                return;
                            } else if (c7 == 1 || c7 == 2 || c7 == 3) {
                                nVar.f8391c.put(Integer.valueOf(iVarD.f8314a), iVarD);
                                iVarD = null;
                            }
                        }
                    } else {
                        xmlResourceParser.getName();
                    }
                    eventType = xmlResourceParser.next();
                }
                ((SparseArray) this.f176c).put(identifier, nVar);
                return;
            }
        }
    }

    public void W(i5.i iVar, Object obj) {
        HashMap map = (HashMap) this.f176c;
        i5.e eVar = (i5.e) map.get(iVar);
        if (eVar == null) {
            eVar = new i5.e(iVar);
            eVar.f8613d = eVar;
            i5.e eVar2 = (i5.e) this.f175b;
            eVar.f8613d = eVar2.f8613d;
            eVar.f8612c = eVar2;
            eVar2.f8613d = eVar;
            eVar.f8613d.f8612c = eVar;
            map.put(iVar, eVar);
        } else {
            iVar.a();
        }
        if (eVar.f8611b == null) {
            eVar.f8611b = new ArrayList();
        }
        eVar.f8611b.add(obj);
    }

    public void X(String str) {
        j5.b bVar;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.f175b).get(str);
                a6.h.c(obj, "Argument must not be null");
                bVar = (j5.b) obj;
                int i10 = bVar.f9753b;
                if (i10 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + bVar.f9753b);
                }
                int i11 = i10 - 1;
                bVar.f9753b = i11;
                if (i11 == 0) {
                    j5.b bVar2 = (j5.b) ((HashMap) this.f175b).remove(str);
                    if (!bVar2.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVar2 + ", safeKey: " + str);
                    }
                    ((j5.c) this.f176c).b(bVar2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVar.f9752a.unlock();
    }

    public Object Y() {
        i5.e eVar = (i5.e) this.f175b;
        i5.e eVar2 = eVar.f8613d;
        while (true) {
            if (eVar2.equals(eVar)) {
                return null;
            }
            ArrayList arrayList = eVar2.f8611b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? eVar2.f8611b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            i5.e eVar3 = eVar2.f8613d;
            eVar3.f8612c = eVar2.f8612c;
            eVar2.f8612c.f8613d = eVar3;
            HashMap map = (HashMap) this.f176c;
            i5.i iVar = eVar2.f8610a;
            map.remove(iVar);
            iVar.a();
            eVar2 = eVar2.f8613d;
        }
    }

    public void Z() {
        ((a9.a) this.f175b).f471b = 5;
    }

    @Override // d2.n
    public void a() {
        v3.f fVar = (v3.f) this.f176c;
        MediaCodec mediaCodec = (MediaCodec) this.f175b;
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30 && i10 < 33) {
                mediaCodec.stop();
            }
            if (i10 >= 35 && fVar != null) {
                fVar.M(mediaCodec);
            }
            mediaCodec.release();
        } catch (Throwable th2) {
            if (Build.VERSION.SDK_INT >= 35 && fVar != null) {
                fVar.M(mediaCodec);
            }
            mediaCodec.release();
            throw th2;
        }
    }

    public void a0(ArrayList arrayList) {
        v1.r rVar;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (((v1.q) arrayList.get(i10)).f16390a == 1) {
                try {
                    rVar = new v1.r((v1.q) arrayList.get(i10));
                } catch (v1.p unused) {
                    rVar = null;
                }
                this.f176c = rVar;
            }
        }
    }

    @Override // ha.ea
    public void b(int i10) {
        switch (this.f174a) {
            case 20:
                ((EditText) this.f175b).setText((CharSequence) ((ArrayList) this.f176c).get(i10));
                break;
            default:
                EditText editText = (EditText) this.f175b;
                if (i10 != 0) {
                    Point point = (Point) this.f176c;
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    if (i10 != 5) {
                                        if (i10 != 6) {
                                            if (i10 != 7) {
                                                if (i10 != 8) {
                                                    if (i10 != 9) {
                                                        if (i10 != 10) {
                                                            if (i10 != 11) {
                                                                if (i10 != 12) {
                                                                    if (i10 != 13) {
                                                                        if (i10 != 14) {
                                                                            if (i10 != 15) {
                                                                                if (i10 != 16) {
                                                                                    editText.setText("");
                                                                                    break;
                                                                                } else {
                                                                                    editText.setText((point.x / 3) + ",0," + point.x + "," + point.y);
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                editText.setText("0,0," + ((point.x / 3) * 2) + "," + point.y);
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            editText.setText((point.x / 2) + "," + (point.y / 2) + "," + point.x + "," + point.y);
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        editText.setText("0," + (point.y / 2) + "," + (point.x / 2) + "," + point.y);
                                                                        break;
                                                                    }
                                                                } else {
                                                                    editText.setText((point.x / 2) + ",0," + point.x + "," + (point.y / 2));
                                                                    break;
                                                                }
                                                            } else {
                                                                editText.setText("0,0," + (point.x / 2) + "," + (point.y / 2));
                                                                break;
                                                            }
                                                        } else {
                                                            editText.setText("0," + ((point.y / 3) * 2) + "," + point.x + "," + point.y);
                                                            break;
                                                        }
                                                    } else {
                                                        editText.setText("0," + (point.y / 3) + "," + point.x + "," + ((point.y / 3) * 2));
                                                        break;
                                                    }
                                                } else {
                                                    editText.setText("0,0," + point.x + "," + (point.y / 3));
                                                    break;
                                                }
                                            } else {
                                                editText.setText(((point.x / 3) * 2) + ",0," + point.x + "," + point.y);
                                                break;
                                            }
                                        } else {
                                            editText.setText((point.x / 3) + ",0," + ((point.x / 3) * 2) + "," + point.y);
                                            break;
                                        }
                                    } else {
                                        editText.setText("0,0," + (point.x / 3) + "," + point.y);
                                        break;
                                    }
                                } else {
                                    editText.setText("0," + (point.y / 2) + "," + point.x + "," + point.y);
                                    break;
                                }
                            } else {
                                editText.setText("0,0," + point.x + "," + (point.y / 2));
                                break;
                            }
                        } else {
                            editText.setText((point.x / 2) + ",0," + point.x + "," + point.y);
                            break;
                        }
                    } else {
                        editText.setText("0,0," + (point.x / 2) + "," + point.y);
                        break;
                    }
                } else {
                    editText.setText("");
                    break;
                }
        }
    }

    @Override // i5.h
    public void c(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap.Config config = bitmap.getConfig();
        i5.b bVar = (i5.b) this.f175b;
        i5.i iVarT = (i5.i) ((ArrayDeque) bVar.f1a).poll();
        if (iVarT == null) {
            iVarT = bVar.t();
        }
        i5.a aVar = (i5.a) iVarT;
        aVar.f8605b = width;
        aVar.f8606c = height;
        aVar.f8607d = config;
        ((g1) this.f176c).W(aVar, bitmap);
    }

    @Override // d2.n
    public void d(int i10, x1.c cVar, long j10, int i11) throws MediaCodec.CryptoException {
        ((MediaCodec) this.f175b).queueSecureInputBuffer(i10, 0, cVar.f18083i, j10, i11);
    }

    @Override // d2.n
    public void e(Bundle bundle) {
        ((MediaCodec) this.f175b).setParameters(bundle);
    }

    @Override // i5.h
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        i5.b bVar = (i5.b) this.f175b;
        i5.i iVarT = (i5.i) ((ArrayDeque) bVar.f1a).poll();
        if (iVarT == null) {
            iVarT = bVar.t();
        }
        i5.a aVar = (i5.a) iVarT;
        aVar.f8605b = i10;
        aVar.f8606c = i11;
        aVar.f8607d = config;
        return (Bitmap) ((g1) this.f176c).P(aVar);
    }

    @Override // d2.n
    public void flush() {
        ((MediaCodec) this.f175b).flush();
    }

    @Override // d2.n
    public void g(int i10, int i11, long j10, int i12) throws MediaCodec.CryptoException {
        ((MediaCodec) this.f175b).queueInputBuffer(i10, 0, i11, j10, i12);
    }

    @Override // d2.n
    public void h(int i10) {
        ((MediaCodec) this.f175b).releaseOutputBuffer(i10, false);
    }

    @Override // com.bumptech.glide.load.data.d
    public void i(Exception exc) {
        h5.e0 e0Var = (h5.e0) this.f176c;
        l5.p pVar = (l5.p) this.f175b;
        l5.p pVar2 = e0Var.f6555f;
        if (pVar2 == null || pVar2 != pVar) {
            return;
        }
        h5.e0 e0Var2 = (h5.e0) this.f176c;
        l5.p pVar3 = (l5.p) this.f175b;
        h5.j jVar = e0Var2.f6551b;
        h5.e eVar = e0Var2.f6556g;
        com.bumptech.glide.load.data.e eVar2 = pVar3.f10606c;
        jVar.c(eVar, exc, eVar2, eVar2.c());
    }

    @Override // d2.n
    public void j(androidx.media3.exoplayer.video.l lVar, Handler handler) {
        ((MediaCodec) this.f175b).setOnFrameRenderedListener(new d2.d(this, lVar, 1), handler);
    }

    @Override // d2.n
    public MediaFormat k() {
        return ((MediaCodec) this.f175b).getOutputFormat();
    }

    @Override // d2.n
    public void l(c0 c0Var) throws Exception {
        c0Var.run();
    }

    @Override // d2.n
    public /* synthetic */ boolean m(a1.i iVar) {
        return false;
    }

    @Override // d2.n
    public void n() {
        ((MediaCodec) this.f175b).detachOutputSurface();
    }

    @Override // d2.n
    public void o(int i10, long j10) {
        ((MediaCodec) this.f175b).releaseOutputBuffer(i10, j10);
    }

    @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
    public void onProgress(Object obj, long j10, long j11) {
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "[testMultipartUpload] - ", " ");
        sbW.append(j11);
        OSSLog.logDebug(sbW.toString(), false);
        StringBuilder sb2 = new StringBuilder("上传中：");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String strN = ta.q.n(com.yunpan.appmanage.util.k.f4034u0, (j10 * 100.0f) / j11, sb2, "%");
        WpTaskBean wpTaskBean = (WpTaskBean) this.f175b;
        wpTaskBean.str1 = strN;
        Message messageObtain = Message.obtain();
        messageObtain.what = 10;
        messageObtain.obj = wpTaskBean;
        ((com.yunpan.appmanage.carsdk.u) this.f176c).sendMessage(messageObtain);
    }

    @Override // d2.n
    public int p() {
        return ((MediaCodec) this.f175b).dequeueInputBuffer(0L);
    }

    @Override // c4.d
    public void r(c4.c cVar) {
        Object[] objArr = (Object[]) this.f176c;
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj = objArr[i10];
            i10++;
            if (obj == null) {
                cVar.y(i10);
            } else if (obj instanceof byte[]) {
                cVar.q(i10, (byte[]) obj);
            } else if (obj instanceof Float) {
                cVar.h(i10, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                cVar.h(i10, ((Number) obj).doubleValue());
            } else if (obj instanceof Long) {
                cVar.m(i10, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                cVar.m(i10, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                cVar.m(i10, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                cVar.m(i10, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                cVar.e(i10, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                cVar.m(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }

    @Override // i5.h
    public Bitmap removeLast() {
        return (Bitmap) ((g1) this.f176c).Y();
    }

    public String toString() {
        switch (this.f174a) {
            case 11:
                String string = "[ ";
                if (((d0.g) this.f175b) != null) {
                    for (int i10 = 0; i10 < 9; i10++) {
                        StringBuilder sbM = g.b.m(string);
                        sbM.append(((d0.g) this.f175b).f4240h[i10]);
                        sbM.append(" ");
                        string = sbM.toString();
                    }
                }
                StringBuilder sbB = d0.f.b(string, "] ");
                sbB.append((d0.g) this.f175b);
                return sbB.toString();
            case 24:
                return "AttributeStrategy:\n  " + ((g1) this.f176c);
            case 25:
                StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
                i5.e eVar = (i5.e) this.f175b;
                i5.e eVar2 = eVar.f8612c;
                boolean z = false;
                while (!eVar2.equals(eVar)) {
                    sb2.append('{');
                    sb2.append(eVar2.f8610a);
                    sb2.append(':');
                    ArrayList arrayList = eVar2.f8611b;
                    sb2.append(arrayList != null ? arrayList.size() : 0);
                    sb2.append("}, ");
                    eVar2 = eVar2.f8612c;
                    z = true;
                }
                if (z) {
                    sb2.delete(sb2.length() - 2, sb2.length());
                }
                sb2.append(" )");
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    @Override // d2.n
    public int u(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = ((MediaCodec) this.f175b).dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // i5.h
    public String w(int i10, int i11, Bitmap.Config config) {
        return R(i10, i11, config);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        v4 v4Var = (v4) this.f176c;
        x9.x0 x0Var = (x9.x0) v4Var.f7907j.t(i10);
        x0Var.f18384b = !x0Var.f18384b;
        v4Var.f7907j.e(i10);
        SharedPreferences sharedPreferences = (SharedPreferences) this.f175b;
        if (i10 == 0) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putBoolean("auto_line", x0Var.f18384b);
            editorEdit.apply();
            v4Var.f7904g.a();
            return;
        }
        if (i10 == 1) {
            SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
            editorEdit2.putBoolean("show_line_number", x0Var.f18384b);
            editorEdit2.apply();
            v4Var.f7904g.a();
            return;
        }
        if (i10 == 2) {
            SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
            editorEdit3.putBoolean("gesture_scale", x0Var.f18384b);
            editorEdit3.apply();
            v4Var.f7904g.a();
            return;
        }
        if (i10 == 3) {
            SharedPreferences.Editor editorEdit4 = sharedPreferences.edit();
            editorEdit4.putBoolean("highlight_current_line", x0Var.f18384b);
            editorEdit4.apply();
            v4Var.f7904g.a();
            return;
        }
        if (i10 == 4) {
            SharedPreferences.Editor editorEdit5 = sharedPreferences.edit();
            editorEdit5.putBoolean("auto_indent", x0Var.f18384b);
            editorEdit5.apply();
            v4Var.f7904g.a();
        }
    }

    @Override // d2.n
    public void y(int i10) {
        ((MediaCodec) this.f175b).setVideoScalingMode(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0109  */
    @Override // x0.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j2 z(View view, j2 j2Var) {
        boolean z;
        switch (this.f174a) {
            case 16:
                androidx.media3.exoplayer.video.k kVar = (androidx.media3.exoplayer.video.k) this.f176c;
                int i10 = kVar.f1915a;
                h5.d0 d0Var = (h5.d0) this.f175b;
                g2 g2Var = j2Var.f18006a;
                p0.c cVarF = g2Var.f(7);
                p0.c cVarF2 = g2Var.f(32);
                int i11 = cVarF.f12541b;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) d0Var.f6547b;
                bottomSheetBehavior.f3485w = i11;
                boolean zF = g7.l.f(view);
                int paddingBottom = view.getPaddingBottom();
                int paddingLeft = view.getPaddingLeft();
                int paddingRight = view.getPaddingRight();
                boolean z4 = bottomSheetBehavior.f3478o;
                if (z4) {
                    int iA = j2Var.a();
                    bottomSheetBehavior.f3484v = iA;
                    paddingBottom = iA + kVar.f1917c;
                }
                int i12 = kVar.f1916b;
                boolean z10 = bottomSheetBehavior.f3479p;
                int i13 = cVarF.f12540a;
                if (z10) {
                    paddingLeft = (zF ? i12 : i10) + i13;
                }
                boolean z11 = bottomSheetBehavior.f3480q;
                int i14 = cVarF.f12542c;
                if (z11) {
                    if (!zF) {
                        i10 = i12;
                    }
                    paddingRight = i10 + i14;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                boolean z12 = true;
                if (!bottomSheetBehavior.f3481s || marginLayoutParams.leftMargin == i13) {
                    z = false;
                } else {
                    marginLayoutParams.leftMargin = i13;
                    z = true;
                }
                if (bottomSheetBehavior.f3482t && marginLayoutParams.rightMargin != i14) {
                    marginLayoutParams.rightMargin = i14;
                    z = true;
                }
                if (bottomSheetBehavior.f3483u) {
                    int i15 = marginLayoutParams.topMargin;
                    int i16 = cVarF.f12541b;
                    if (i15 != i16) {
                        marginLayoutParams.topMargin = i16;
                    } else {
                        z12 = z;
                    }
                }
                if (z12) {
                    view.setLayoutParams(marginLayoutParams);
                }
                view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
                boolean z13 = d0Var.f6546a;
                if (z13) {
                    bottomSheetBehavior.f3476m = cVarF2.f12543d;
                }
                if (z4 || z13) {
                    bottomSheetBehavior.I();
                }
                return j2Var;
            default:
                j2 j2VarQ = x0.b1.q(view, j2Var);
                if (j2VarQ.f18006a.m()) {
                    return j2VarQ;
                }
                int iB = j2VarQ.b();
                Rect rect = (Rect) this.f175b;
                rect.left = iB;
                rect.top = j2VarQ.d();
                rect.right = j2VarQ.c();
                rect.bottom = j2VarQ.a();
                k4.g gVar = (k4.g) this.f176c;
                int childCount = gVar.getChildCount();
                for (int i17 = 0; i17 < childCount; i17++) {
                    j2 j2VarB = x0.b1.b(gVar.getChildAt(i17), j2VarQ);
                    rect.left = Math.min(j2VarB.b(), rect.left);
                    rect.top = Math.min(j2VarB.d(), rect.top);
                    rect.right = Math.min(j2VarB.c(), rect.right);
                    rect.bottom = Math.min(j2VarB.a(), rect.bottom);
                }
                return j2VarQ.f(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    public /* synthetic */ g1(int i10, Object obj, Object obj2, boolean z) {
        this.f174a = i10;
        this.f176c = obj;
        this.f175b = obj2;
    }

    public /* synthetic */ g1(int i10, boolean z) {
        this.f174a = i10;
    }

    public /* synthetic */ g1(Object obj, int i10, Object obj2) {
        this.f174a = i10;
        this.f175b = obj;
        this.f176c = obj2;
    }

    public g1(m7.e eVar) {
        this.f174a = 9;
        this.f175b = new HashMap();
        this.f176c = eVar;
    }

    public g1(String str, Object[] objArr) {
        this.f174a = 8;
        ue.d.e(str, "query");
        this.f175b = str;
        this.f176c = objArr;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g1(String str) {
        this(str, (Object[]) null);
        this.f174a = 8;
        ue.d.e(str, "query");
    }

    public g1(jd jdVar) {
        this.f174a = 28;
        this.f175b = jdVar;
        this.f176c = new ArrayBlockingQueue(16384);
    }

    public g1(a9.a aVar) {
        this.f174a = 2;
        this.f176c = new byte[4];
        this.f175b = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public g1(Context context, int i10) throws XmlPullParserException, Resources.NotFoundException, IOException, NumberFormatException {
        this.f174a = 23;
        this.f175b = new SparseArray();
        this.f176c = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            int eventType = xml.getEventType();
            a0.h hVar = null;
            while (true) {
                char c7 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                c7 = 65535;
                                break;
                            } else {
                                c7 = 4;
                                break;
                            }
                        case 80204913:
                            if (name.equals("State")) {
                                c7 = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c7 = 0;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c7 = 3;
                                break;
                            }
                            break;
                        default:
                            c7 = 65535;
                            break;
                    }
                    if (c7 == 2) {
                        hVar = new a0.h(context, xml);
                        ((SparseArray) this.f175b).put(hVar.f28b, hVar);
                    } else if (c7 == 3) {
                        i0.g gVar = new i0.g(context, xml);
                        if (hVar != null) {
                            ((ArrayList) hVar.f30d).add(gVar);
                        }
                    } else if (c7 == 4) {
                        V(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        } catch (XmlPullParserException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void q() {
    }

    @Override // ha.wd
    public void t() {
    }

    public g1(Context context) {
        this.f174a = 0;
        this.f175b = context == null ? null : context.getApplicationContext();
    }

    public g1(int i10) {
        this.f174a = i10;
        switch (i10) {
            case 24:
                this.f175b = new i5.b(0);
                this.f176c = new g1(25);
                break;
            case 25:
                this.f175b = new i5.e(null);
                this.f176c = new HashMap();
                break;
            case 26:
                this.f175b = new HashMap();
                this.f176c = new j5.c(0);
                break;
            case 27:
                this.f175b = new a6.m(1000L);
                this.f176c = b6.c.a(10, new ha.j2(13));
                break;
            default:
                this.f175b = ByteBuffer.allocateDirect(500);
                break;
        }
    }

    public g1(MediaCodec mediaCodec, v3.f fVar) {
        this.f174a = 13;
        this.f175b = mediaCodec;
        this.f176c = fVar;
        if (Build.VERSION.SDK_INT < 35 || fVar == null) {
            return;
        }
        LoudnessCodecController loudnessCodecController = (LoudnessCodecController) fVar.f16476d;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            a9.o.t(((HashSet) fVar.f16474b).add(mediaCodec));
        }
    }

    public g1(w0 w0Var, m7.e eVar, androidx.emoji2.text.f fVar) {
        this.f174a = 3;
        this.f175b = w0Var;
        this.f176c = fVar;
    }

    @Override // com.yunpan.appmanage.carsdk.v
    public void v(String str, Throwable th2) {
    }

    public g1(k4.g gVar) {
        this.f174a = 29;
        this.f176c = gVar;
        this.f175b = new Rect();
    }
}
