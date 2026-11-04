package kf;

import androidx.fragment.app.b0;
import com.android.apksig.internal.apk.AndroidBinXmlParser;
import com.hsae.autosdk.source.SourceConst;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import l2.l0;
import lf.g;
import mf.h;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: g, reason: collision with root package name */
    public static final HashSet f10270g = new HashSet(Arrays.asList("screenOrientation", "configChanges", "windowSoftInputMode", "launchMode", "installLocation", "protectionLevel"));

    /* renamed from: a, reason: collision with root package name */
    public l0 f10271a;

    /* renamed from: b, reason: collision with root package name */
    public String[] f10272b;

    /* renamed from: c, reason: collision with root package name */
    public final ByteBuffer f10273c;

    /* renamed from: d, reason: collision with root package name */
    public e f10274d;

    /* renamed from: e, reason: collision with root package name */
    public final h f10275e;

    /* renamed from: f, reason: collision with root package name */
    public Locale f10276f;

    public a(ByteBuffer byteBuffer, h hVar) {
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f10276f = qf.a.f13188a;
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f10273c = byteBufferDuplicate;
        byteBufferDuplicate.order(byteOrder);
        this.f10275e = hVar;
    }

    public static String a(String str, String str2) {
        int i10;
        i10 = Integer.parseInt(str2);
        str.getClass();
        switch (str) {
            case "windowSoftInputMode":
                int i11 = i10 & 240;
                int i12 = i10 & 15;
                ArrayList arrayList = new ArrayList(2);
                if (i11 != 0) {
                    if (i11 == 16) {
                        arrayList.add("adjustResize");
                    } else if (i11 == 32) {
                        arrayList.add("adjustPan");
                    } else if (i11 != 48) {
                        arrayList.add("WindowInputModeAdjust:" + Integer.toHexString(i11));
                    } else {
                        arrayList.add("adjustNothing");
                    }
                }
                if (i12 != 0) {
                    if (i12 == 1) {
                        arrayList.add("stateUnchanged");
                    } else if (i12 == 2) {
                        arrayList.add("stateHidden");
                    } else if (i12 == 3) {
                        arrayList.add("stateAlwaysHidden");
                    } else if (i12 == 4) {
                        arrayList.add("stateVisible");
                    } else if (i12 != 5) {
                        arrayList.add("WindowInputModeState:" + Integer.toHexString(i12));
                    } else {
                        arrayList.add("stateAlwaysVisible");
                    }
                }
                return android.support.v4.media.session.b.x(arrayList);
            case "installLocation":
                return i10 != 0 ? i10 != 1 ? i10 != 2 ? g.b.e(i10, new StringBuilder("installLocation:")) : "preferExternal" : "internalOnly" : "auto";
            case "configChanges":
                ArrayList arrayList2 = new ArrayList();
                if ((i10 & 4096) != 0) {
                    arrayList2.add("density");
                } else if ((1073741824 & i10) != 0) {
                    arrayList2.add("fontScale");
                } else if ((i10 & 16) != 0) {
                    arrayList2.add("keyboard");
                } else if ((i10 & 32) != 0) {
                    arrayList2.add("keyboardHidden");
                } else if ((i10 & 8192) != 0) {
                    arrayList2.add("direction");
                } else if ((i10 & 4) != 0) {
                    arrayList2.add("locale");
                } else if ((i10 & 1) != 0) {
                    arrayList2.add("mcc");
                } else if ((i10 & 2) != 0) {
                    arrayList2.add("mnc");
                } else if ((i10 & 64) != 0) {
                    arrayList2.add("navigation");
                } else if ((i10 & 128) != 0) {
                    arrayList2.add("orientation");
                } else if ((i10 & 256) != 0) {
                    arrayList2.add("screenLayout");
                } else if ((i10 & 1024) != 0) {
                    arrayList2.add("screenSize");
                } else if ((i10 & 2048) != 0) {
                    arrayList2.add("smallestScreenSize");
                } else if ((i10 & 8) != 0) {
                    arrayList2.add("touchscreen");
                } else if ((i10 & 512) != 0) {
                    arrayList2.add("uiMode");
                }
                return android.support.v4.media.session.b.x(arrayList2);
            case "screenOrientation":
                switch (i10) {
                    case -1:
                        return "unspecified";
                    case 0:
                        return "landscape";
                    case 1:
                        return "portrait";
                    case 2:
                        return "user";
                    case 3:
                        return "behind";
                    case 4:
                        return "sensor";
                    case 5:
                        return "nosensor";
                    case 6:
                        return "sensorLandscape";
                    case 7:
                        return "sensorPortrait";
                    case 8:
                        return "reverseLandscape";
                    case 9:
                        return "reversePortrait";
                    case 10:
                        return "fullSensor";
                    case 11:
                        return "userLandscape";
                    case 12:
                        return "userPortrait";
                    case 13:
                        return "fullUser";
                    case 14:
                        return "locked";
                    default:
                        return g.b.e(i10, new StringBuilder("ScreenOrientation:"));
                }
            case "launchMode":
                return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? g.b.e(i10, new StringBuilder("LaunchMode:")) : "singleInstance" : "singleTask" : "singleTop" : "standard";
            case "protectionLevel":
                ArrayList arrayList3 = new ArrayList(3);
                if ((i10 & 16) != 0) {
                    i10 ^= 16;
                    arrayList3.add("system");
                }
                if ((i10 & 32) != 0) {
                    i10 ^= 32;
                    arrayList3.add("development");
                }
                if (i10 == 0) {
                    arrayList3.add("normal");
                } else if (i10 == 1) {
                    arrayList3.add("dangerous");
                } else if (i10 == 2) {
                    arrayList3.add("signature");
                } else if (i10 != 3) {
                    arrayList3.add("ProtectionLevel:" + Integer.toHexString(i10));
                } else {
                    arrayList3.add("signatureOrSystem");
                }
                return android.support.v4.media.session.b.x(arrayList3);
            default:
                return str2;
        }
    }

    public final lf.a b() {
        ByteBuffer byteBuffer = this.f10273c;
        if (!byteBuffer.hasRemaining()) {
            return null;
        }
        long jPosition = byteBuffer.position();
        int i10 = byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY;
        int i11 = 65535 & byteBuffer.getShort();
        long j10 = byteBuffer.getInt() & 4294967295L;
        if (i10 == 0) {
            return new mf.b(i10, i11, j10);
        }
        if (i10 == 1) {
            g gVar = new g(i11, j10);
            gVar.f10722d = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
            com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
            gVar.f10723e = byteBuffer.getInt() & 4294967295L;
            gVar.f10724f = byteBuffer.getInt() & 4294967295L;
            byteBuffer.getInt();
            s1.g.P(byteBuffer, jPosition + i11);
            return gVar;
        }
        if (i10 == 3) {
            return new mf.b(i10, i11, j10);
        }
        if (i10 == 384) {
            s1.g.P(byteBuffer, jPosition + i11);
            return new of.b(i10, i11, j10);
        }
        switch (i10) {
            case 256:
            case 257:
            case AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT /* 258 */:
            case 259:
            case SourceConst.IOCTL_FUNCTION_MIC1 /* 260 */:
                mf.b bVar = new mf.b(i10, i11, j10);
                byteBuffer.getInt();
                byteBuffer.getInt();
                s1.g.P(byteBuffer, jPosition + i11);
                return bVar;
            default:
                throw new b0(da.b.a(i10, "Unexpected chunk type:"), 6);
        }
    }
}
