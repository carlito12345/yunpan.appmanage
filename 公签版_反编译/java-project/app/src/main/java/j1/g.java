package j1;

import a9.o;
import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import com.android.apksig.internal.apk.AndroidBinXmlParser;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.hsae.autosdk.p001os.SocConst;
import com.hsae.autosdk.radio.RadioConst;
import com.hsae.autosdk.source.SourceConst;
import j$.util.DesugarTimeZone;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public final class g {
    public static final byte[] A;
    public static final byte[] B;
    public static final String[] C;
    public static final int[] D;
    public static final byte[] E;
    public static final d F;
    public static final d[][] G;
    public static final d[] H;
    public static final HashMap[] I;
    public static final HashMap[] J;
    public static final HashSet K;
    public static final HashMap L;
    public static final Charset M;
    public static final byte[] N;
    public static final byte[] O;

    /* renamed from: m, reason: collision with root package name */
    public static final boolean f9636m = Log.isLoggable("ExifInterface", 3);

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f9637n;

    /* renamed from: o, reason: collision with root package name */
    public static final int[] f9638o;

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f9639p;

    /* renamed from: q, reason: collision with root package name */
    public static final byte[] f9640q;
    public static final byte[] r;

    /* renamed from: s, reason: collision with root package name */
    public static final byte[] f9641s;

    /* renamed from: t, reason: collision with root package name */
    public static final byte[] f9642t;

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f9643u;

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f9644v;

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f9645w;

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f9646x;

    /* renamed from: y, reason: collision with root package name */
    public static final byte[] f9647y;
    public static final byte[] z;

    /* renamed from: a, reason: collision with root package name */
    public final String f9648a;

    /* renamed from: b, reason: collision with root package name */
    public final FileDescriptor f9649b;

    /* renamed from: c, reason: collision with root package name */
    public final AssetManager.AssetInputStream f9650c;

    /* renamed from: d, reason: collision with root package name */
    public int f9651d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap[] f9652e;

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f9653f;

    /* renamed from: g, reason: collision with root package name */
    public ByteOrder f9654g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f9655h;

    /* renamed from: i, reason: collision with root package name */
    public int f9656i;

    /* renamed from: j, reason: collision with root package name */
    public int f9657j;

    /* renamed from: k, reason: collision with root package name */
    public int f9658k;
    public int l;

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        f9637n = new int[]{8, 8, 8};
        f9638o = new int[]{8};
        f9639p = new byte[]{-1, -40, -1};
        f9640q = new byte[]{102, 116, 121, 112};
        r = new byte[]{109, 105, 102, SocConst.Upgrade.CUPID_CMD};
        f9641s = new byte[]{104, 101, 105, 99};
        f9642t = new byte[]{79, 76, 89, 77, 80, 0};
        f9643u = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        f9644v = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        f9645w = new byte[]{101, 88, 73, 102};
        f9646x = new byte[]{73, 72, 68, 82};
        f9647y = new byte[]{73, 69, 78, 68};
        z = new byte[]{82, 73, 70, 70};
        A = new byte[]{87, 69, 66, 80};
        B = new byte[]{69, 88, 73, 70};
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        C = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        D = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        E = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", 257, 3, 4), new d("BitsPerSample", AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", SourceConst.IOCTL_FUNCTION_CARPLAY_WBAND, 3), new d("ImageDescription", SubsamplingScaleImageView.ORIENTATION_270, 2), new d("Make", 271, 2), new d("Model", SourceConst.IOCTL_FM_VOLUME, 2), new d("StripOffsets", SourceConst.IOCTL_AM_VOLUME, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", SourceConst.IOCTL_AUDIO_LOUDNESS_DISABLE, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", SourceConst.IOCTL_ANDROID_PHONE_VOLUME, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", RadioConst.RADIO_MIN_AM_FREQUENCY, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5, 10), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", 257, 3, 4), new d("BitsPerSample", AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", SourceConst.IOCTL_FUNCTION_CARPLAY_WBAND, 3), new d("ImageDescription", SubsamplingScaleImageView.ORIENTATION_270, 2), new d("Make", 271, 2), new d("Model", SourceConst.IOCTL_FM_VOLUME, 2), new d("StripOffsets", SourceConst.IOCTL_AM_VOLUME, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", SourceConst.IOCTL_AUDIO_LOUDNESS_DISABLE, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", SourceConst.IOCTL_ANDROID_PHONE_VOLUME, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", RadioConst.RADIO_MIN_AM_FREQUENCY, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        F = new d("StripOffsets", SourceConst.IOCTL_AM_VOLUME, 3);
        G = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        H = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        I = new HashMap[10];
        J = new HashMap[10];
        K = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        L = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        M = charsetForName;
        N = "Exif\u0000\u0000".getBytes(charsetForName);
        O = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            d[][] dVarArr6 = G;
            if (i10 >= dVarArr6.length) {
                HashMap map = L;
                d[] dVarArr7 = H;
                map.put(Integer.valueOf(dVarArr7[0].f9630a), 5);
                map.put(Integer.valueOf(dVarArr7[1].f9630a), 1);
                map.put(Integer.valueOf(dVarArr7[2].f9630a), 2);
                map.put(Integer.valueOf(dVarArr7[3].f9630a), 3);
                map.put(Integer.valueOf(dVarArr7[4].f9630a), 7);
                map.put(Integer.valueOf(dVarArr7[5].f9630a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            I[i10] = new HashMap();
            J[i10] = new HashMap();
            for (d dVar : dVarArr6[i10]) {
                I[i10].put(Integer.valueOf(dVar.f9630a), dVar);
                J[i10].put(dVar.f9631b, dVar);
            }
            i10++;
        }
    }

    public g(String str) throws Throwable {
        FileInputStream fileInputStream;
        d[][] dVarArr = G;
        this.f9652e = new HashMap[dVarArr.length];
        this.f9653f = new HashSet(dVarArr.length);
        this.f9654g = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            throw new NullPointerException("filename cannot be null");
        }
        FileInputStream fileInputStream2 = null;
        this.f9650c = null;
        this.f9648a = str;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            FileDescriptor fd2 = fileInputStream.getFD();
            boolean z4 = false;
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    h.c(fd2, 0L, OsConstants.SEEK_CUR);
                    z4 = true;
                } catch (Exception unused) {
                }
            }
            if (z4) {
                this.f9649b = fileInputStream.getFD();
            } else {
                this.f9649b = null;
            }
            p(fileInputStream);
            try {
                fileInputStream.close();
            } catch (RuntimeException e7) {
                throw e7;
            } catch (Exception unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }

    public static ByteOrder s(b bVar) throws IOException {
        short s8 = bVar.readShort();
        if (s8 == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s8 == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException(g.b.e(s8, new StringBuilder("Invalid byte order: ")));
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.f9652e;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat("\u0000").getBytes(M);
            map.put("DateTime", new c(2, bytes.length, bytes));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", c.a(0L, this.f9654g));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", c.a(0L, this.f9654g));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", c.a(0L, this.f9654g));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", c.a(0L, this.f9654g));
        }
    }

    public final String b(String str) {
        c cVarD = d(str);
        if (cVarD != null) {
            if (!K.contains(str)) {
                return cVarD.f(this.f9654g);
            }
            if (str.equals("GPSTimeStamp")) {
                int i10 = cVarD.f9626a;
                if (i10 != 5 && i10 != 10) {
                    return null;
                }
                e[] eVarArr = (e[]) cVarD.g(this.f9654g);
                if (eVarArr == null || eVarArr.length != 3) {
                    Arrays.toString(eVarArr);
                    return null;
                }
                e eVar = eVarArr[0];
                Integer numValueOf = Integer.valueOf((int) (eVar.f9634a / eVar.f9635b));
                e eVar2 = eVarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (eVar2.f9634a / eVar2.f9635b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f9634a / eVar3.f9635b)));
            }
            try {
                return Double.toString(cVarD.d(this.f9654g));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final int c() {
        c cVarD = d("Orientation");
        if (cVarD == null) {
            return 1;
        }
        try {
            return cVarD.e(this.f9654g);
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public final c d(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i10 = 0; i10 < G.length; i10++) {
            c cVar = (c) this.f9652e[i10].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    public final void e(f fVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                i.a(mediaMetadataRetriever, new a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.f9652e;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", c.c(Integer.parseInt(strExtractMetadata), this.f9654g));
                }
                if (strExtractMetadata2 != null) {
                    mapArr[0].put("ImageLength", c.c(Integer.parseInt(strExtractMetadata2), this.f9654g));
                }
                if (strExtractMetadata3 != null) {
                    int i10 = Integer.parseInt(strExtractMetadata3);
                    mapArr[0].put("Orientation", c.c(i10 != 90 ? i10 != 180 ? i10 != 270 ? 1 : 8 : 3 : 6, this.f9654g));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i11 = Integer.parseInt(strExtractMetadata4);
                    int i12 = Integer.parseInt(strExtractMetadata5);
                    if (i12 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.A(i11);
                    byte[] bArr = new byte[6];
                    if (fVar.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i13 = i11 + 6;
                    int i14 = i12 - 6;
                    if (!Arrays.equals(bArr, N)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i14];
                    if (fVar.read(bArr2) != i14) {
                        throw new IOException("Can't read exif");
                    }
                    this.f9656i = i13;
                    t(0, bArr2);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th2) {
            mediaMetadataRetriever.release();
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x015a, code lost:
    
        r23.f9623b = r22.f9654g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x015e, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0066 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0147 A[LOOP:0: B:7:0x001f->B:79:0x0147, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x014e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(b bVar, int i10, int i11) throws IOException {
        byte[] bArr;
        int i12;
        boolean z4 = f9636m;
        bVar.f9623b = ByteOrder.BIG_ENDIAN;
        byte b10 = bVar.readByte();
        if (b10 != -1) {
            throw new IOException(g.b.e(b10 & 255, new StringBuilder("Invalid marker: ")));
        }
        if (bVar.readByte() != -40) {
            throw new IOException(g.b.e(b10 & 255, new StringBuilder("Invalid marker: ")));
        }
        int i13 = 2;
        int i14 = 2;
        while (true) {
            byte b11 = bVar.readByte();
            if (b11 != -1) {
                throw new IOException(g.b.e(b11 & 255, new StringBuilder("Invalid marker:")));
            }
            byte b12 = bVar.readByte();
            if (z4) {
                Integer.toHexString(b12 & 255);
            }
            if (b12 != -39 && b12 != -38) {
                int unsignedShort = bVar.readUnsignedShort();
                int i15 = unsignedShort - 2;
                int i16 = i14 + 4;
                if (z4) {
                    Integer.toHexString(b12 & 255);
                }
                if (i15 < 0) {
                    throw new IOException("Invalid length");
                }
                HashMap[] mapArr = this.f9652e;
                if (b12 == -31) {
                    byte[] bArr2 = new byte[i15];
                    bVar.readFully(bArr2);
                    int i17 = i16 + i15;
                    byte[] bArr3 = N;
                    if (bArr3 != null && i15 >= bArr3.length) {
                        for (int i18 = 0; i18 < bArr3.length; i18++) {
                            if (bArr2[i18] != bArr3[i18]) {
                                bArr = O;
                                if (bArr != null && i15 >= bArr.length) {
                                    i12 = 0;
                                    while (true) {
                                        if (i12 < bArr.length) {
                                            int length = i16 + bArr.length;
                                            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, bArr.length, i15);
                                            if (b("Xmp") == null) {
                                                mapArr[0].put("Xmp", new c(length, bArrCopyOfRange, 1, bArrCopyOfRange.length));
                                            }
                                        } else if (bArr2[i12] == bArr[i12]) {
                                            i12++;
                                        }
                                    }
                                }
                                i16 = i17;
                            }
                        }
                        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, bArr3.length, i15);
                        this.f9656i = i10 + i16 + bArr3.length;
                        t(i11, bArrCopyOfRange2);
                        w(new b(bArrCopyOfRange2));
                        i16 = i17;
                    } else {
                        bArr = O;
                        if (bArr != null) {
                            i12 = 0;
                            while (true) {
                                if (i12 < bArr.length) {
                                }
                                i12++;
                            }
                        }
                        i16 = i17;
                    }
                    if (i15 < 0) {
                    }
                } else if (b12 != -2) {
                    switch (b12) {
                        default:
                            switch (b12) {
                                default:
                                    switch (b12) {
                                        default:
                                            switch (b12) {
                                            }
                                        case -55:
                                        case -54:
                                        case -53:
                                            bVar.r(1);
                                            mapArr[i11].put(i11 != 4 ? "ImageLength" : "ThumbnailImageLength", c.a(bVar.readUnsignedShort(), this.f9654g));
                                            mapArr[i11].put(i11 != 4 ? "ImageWidth" : "ThumbnailImageWidth", c.a(bVar.readUnsignedShort(), this.f9654g));
                                            i15 = unsignedShort - 7;
                                            break;
                                    }
                                case -59:
                                case -58:
                                case -57:
                                    break;
                            }
                        case -64:
                        case -63:
                        case -62:
                        case -61:
                            break;
                    }
                    if (i15 < 0) {
                        throw new IOException("Invalid length");
                    }
                    bVar.r(i15);
                    i14 = i16 + i15;
                    i13 = 2;
                } else {
                    byte[] bArr4 = new byte[i15];
                    if (bVar.read(bArr4) != i15) {
                        throw new IOException("Invalid exif");
                    }
                    if (b("UserComment") == null) {
                        HashMap map = mapArr[1];
                        Charset charset = M;
                        byte[] bytes = new String(bArr4, charset).concat("\u0000").getBytes(charset);
                        map.put("UserComment", new c(i13, bytes.length, bytes));
                    }
                }
                i15 = 0;
                if (i15 < 0) {
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(2:142|12)|(3:146|13|(6:16|(2:18|(1:20))(1:24)|25|(1:27)|28|(1:30)(2:31|(4:37|(3:40|(1:42)(2:43|(1:45))|(1:166)(3:163|48|49))(2:39|164)|50|32))))|15|144|59|140|60|61|(1:67)(1:66)|68|(1:82)(8:148|84|150|85|86|(1:88)(1:89)|90|(1:104)(3:106|(2:107|(2:109|(2:156|111)(1:112))(2:155|113))|(1:115)(4:117|(2:118|(2:120|(1:158)(1:123))(3:157|124|(2:125|(2:127|(1:159)(1:130))(2:160|131))))|122|(1:133)(1:167))))) */
    /* JADX WARN: Can't wrap try/catch for region: R(12:142|12|(3:146|13|(6:16|(2:18|(1:20))(1:24)|25|(1:27)|28|(1:30)(2:31|(4:37|(3:40|(1:42)(2:43|(1:45))|(1:166)(3:163|48|49))(2:39|164)|50|32))))|15|144|59|140|60|61|(1:67)(1:66)|68|(1:82)(8:148|84|150|85|86|(1:88)(1:89)|90|(1:104)(3:106|(2:107|(2:109|(2:156|111)(1:112))(2:155|113))|(1:115)(4:117|(2:118|(2:120|(1:158)(1:123))(3:157|124|(2:125|(2:127|(1:159)(1:130))(2:160|131))))|122|(1:133)(1:167))))) */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00de, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e3, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e5, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e8, code lost:
    
        if (r5 != null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00ea, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00ed, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ee, code lost:
    
        if (r2 != null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f0, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f3, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x012e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f6 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int g(BufferedInputStream bufferedInputStream) throws Throwable {
        b bVar;
        b bVar2;
        boolean z4;
        b bVar3;
        b bVar4;
        boolean z10;
        boolean z11;
        boolean z12;
        b bVar5;
        long j10;
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i10 = 0;
        while (true) {
            byte[] bArr2 = f9639p;
            if (i10 >= bArr2.length) {
                return 4;
            }
            if (bArr[i10] != bArr2[i10]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i11 = 0; i11 < bytes.length; i11++) {
                    if (bArr[i11] != bytes[i11]) {
                        try {
                            bVar2 = new b(bArr);
                        } catch (Exception unused) {
                            bVar2 = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bVar = null;
                        }
                        try {
                            long j11 = bVar2.readInt();
                            byte[] bArr3 = new byte[4];
                            bVar2.read(bArr3);
                            if (Arrays.equals(bArr3, f9640q)) {
                                if (j11 == 1) {
                                    j11 = bVar2.readLong();
                                    j10 = 16;
                                    if (j11 < 16) {
                                    }
                                } else {
                                    j10 = 8;
                                }
                                long j12 = 5000;
                                if (j11 > j12) {
                                    j11 = j12;
                                }
                                long j13 = j11 - j10;
                                if (j13 >= 8) {
                                    byte[] bArr4 = new byte[4];
                                    boolean z13 = false;
                                    boolean z14 = false;
                                    for (long j14 = 0; j14 < j13 / 4 && bVar2.read(bArr4) == 4; j14++) {
                                        if (j14 != 1) {
                                            if (Arrays.equals(bArr4, r)) {
                                                z13 = true;
                                            } else if (Arrays.equals(bArr4, f9641s)) {
                                                z14 = true;
                                            }
                                            if (z13 && z14) {
                                                bVar2.close();
                                                return 12;
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                            if (bVar2 != null) {
                                bVar2.close();
                            }
                            b bVar6 = new b(bArr);
                            ByteOrder byteOrderS = s(bVar6);
                            this.f9654g = byteOrderS;
                            bVar6.f9623b = byteOrderS;
                            short s8 = bVar6.readShort();
                            if (s8 != 20306) {
                                bVar6.close();
                            }
                            if (z4) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bVar = bVar2;
                            if (bVar != null) {
                                bVar.close();
                            }
                            throw th;
                        }
                        bVar2.close();
                        b bVar62 = new b(bArr);
                        ByteOrder byteOrderS2 = s(bVar62);
                        this.f9654g = byteOrderS2;
                        bVar62.f9623b = byteOrderS2;
                        short s82 = bVar62.readShort();
                        z4 = s82 != 20306 || s82 == 21330;
                        bVar62.close();
                        if (z4) {
                            return 7;
                        }
                        try {
                            bVar5 = new b(bArr);
                        } catch (Exception unused3) {
                            bVar4 = null;
                        } catch (Throwable th4) {
                            th = th4;
                            bVar3 = null;
                        }
                        try {
                            ByteOrder byteOrderS3 = s(bVar5);
                            this.f9654g = byteOrderS3;
                            bVar5.f9623b = byteOrderS3;
                            z10 = bVar5.readShort() == 85;
                            bVar5.close();
                        } catch (Exception unused4) {
                            bVar4 = bVar5;
                            if (bVar4 != null) {
                                bVar4.close();
                            }
                            z10 = false;
                            if (!z10) {
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            bVar3 = bVar5;
                            if (bVar3 != null) {
                                bVar3.close();
                            }
                            throw th;
                        }
                        if (!z10) {
                            return 10;
                        }
                        int i12 = 0;
                        while (true) {
                            byte[] bArr5 = f9644v;
                            if (i12 >= bArr5.length) {
                                z11 = true;
                                break;
                            }
                            if (bArr[i12] != bArr5[i12]) {
                                z11 = false;
                                break;
                            }
                            i12++;
                        }
                        if (z11) {
                            return 13;
                        }
                        int i13 = 0;
                        while (true) {
                            byte[] bArr6 = z;
                            if (i13 >= bArr6.length) {
                                int i14 = 0;
                                while (true) {
                                    byte[] bArr7 = A;
                                    if (i14 >= bArr7.length) {
                                        z12 = true;
                                        break;
                                    }
                                    if (bArr[bArr6.length + i14 + 4] != bArr7[i14]) {
                                        break;
                                    }
                                    i14++;
                                }
                            } else {
                                if (bArr[i13] != bArr6[i13]) {
                                    break;
                                }
                                i13++;
                            }
                        }
                        z12 = false;
                        return z12 ? 14 : 0;
                    }
                }
                return 9;
            }
            i10++;
        }
    }

    public final void h(f fVar) throws IOException {
        int i10;
        int i11;
        k(fVar);
        HashMap[] mapArr = this.f9652e;
        c cVar = (c) mapArr[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f9629d);
            fVar2.f9623b = this.f9654g;
            byte[] bArr = f9642t;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.A(0L);
            byte[] bArr3 = f9643u;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.A(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.A(12L);
            }
            u(fVar2, 6);
            c cVar2 = (c) mapArr[7].get("PreviewImageStart");
            c cVar3 = (c) mapArr[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", cVar2);
                mapArr[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) mapArr[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.g(this.f9654g);
                if (iArr == null || iArr.length != 4) {
                    Arrays.toString(iArr);
                    return;
                }
                int i12 = iArr[2];
                int i13 = iArr[0];
                if (i12 <= i13 || (i10 = iArr[3]) <= (i11 = iArr[1])) {
                    return;
                }
                int i14 = (i12 - i13) + 1;
                int i15 = (i10 - i11) + 1;
                if (i14 < i15) {
                    int i16 = i14 + i15;
                    i15 = i16 - i15;
                    i14 = i16 - i15;
                }
                c cVarC = c.c(i14, this.f9654g);
                c cVarC2 = c.c(i15, this.f9654g);
                mapArr[0].put("ImageWidth", cVarC);
                mapArr[0].put("ImageLength", cVarC2);
            }
        }
    }

    public final void i(b bVar) throws IOException {
        bVar.f9623b = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f9644v;
        bVar.r(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i10 = bVar.readInt();
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i11 = length + 8;
                if (i11 == 16 && !Arrays.equals(bArr2, f9646x)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f9647y)) {
                    return;
                }
                if (Arrays.equals(bArr2, f9645w)) {
                    byte[] bArr3 = new byte[i10];
                    if (bVar.read(bArr3) != i10) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + o.d(bArr2));
                    }
                    int i12 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i12) {
                        this.f9656i = i11;
                        t(0, bArr3);
                        z();
                        w(new b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i12 + ", calculated CRC value: " + crc32.getValue());
                }
                int i13 = i10 + 4;
                bVar.r(i13);
                length = i11 + i13;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public final void j(b bVar) throws IOException {
        bVar.r(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.read(bArr);
        bVar.read(bArr2);
        bVar.read(bArr3);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        int i12 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i11];
        bVar.r(i10 - bVar.f9624c);
        bVar.read(bArr4);
        f(new b(bArr4), i10, 5);
        bVar.r(i12 - bVar.f9624c);
        bVar.f9623b = ByteOrder.BIG_ENDIAN;
        int i13 = bVar.readInt();
        for (int i14 = 0; i14 < i13; i14++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == F.f9630a) {
                short s8 = bVar.readShort();
                short s10 = bVar.readShort();
                c cVarC = c.c(s8, this.f9654g);
                c cVarC2 = c.c(s10, this.f9654g);
                HashMap[] mapArr = this.f9652e;
                mapArr[0].put("ImageLength", cVarC);
                mapArr[0].put("ImageWidth", cVarC2);
                return;
            }
            bVar.r(unsignedShort2);
        }
    }

    public final void k(f fVar) throws IOException {
        q(fVar);
        u(fVar, 0);
        y(fVar, 0);
        y(fVar, 5);
        y(fVar, 4);
        z();
        if (this.f9651d == 8) {
            HashMap[] mapArr = this.f9652e;
            c cVar = (c) mapArr[1].get("MakerNote");
            if (cVar != null) {
                f fVar2 = new f(cVar.f9629d);
                fVar2.f9623b = this.f9654g;
                fVar2.r(6);
                u(fVar2, 9);
                c cVar2 = (c) mapArr[9].get("ColorSpace");
                if (cVar2 != null) {
                    mapArr[1].put("ColorSpace", cVar2);
                }
            }
        }
    }

    public final void l(f fVar) throws IOException {
        k(fVar);
        HashMap[] mapArr = this.f9652e;
        c cVar = (c) mapArr[0].get("JpgFromRaw");
        if (cVar != null) {
            f(new b(cVar.f9629d), (int) cVar.f9628c, 5);
        }
        c cVar2 = (c) mapArr[0].get("ISO");
        c cVar3 = (c) mapArr[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", cVar2);
    }

    public final void m(b bVar) throws IOException {
        bVar.f9623b = ByteOrder.LITTLE_ENDIAN;
        bVar.r(z.length);
        int i10 = bVar.readInt() + 8;
        byte[] bArr = A;
        bVar.r(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i11 = bVar.readInt();
                int i12 = length + 8;
                if (Arrays.equals(B, bArr2)) {
                    byte[] bArr3 = new byte[i11];
                    if (bVar.read(bArr3) == i11) {
                        this.f9656i = i12;
                        t(0, bArr3);
                        w(new b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + o.d(bArr2));
                    }
                }
                if (i11 % 2 == 1) {
                    i11++;
                }
                length = i12 + i11;
                if (length == i10) {
                    return;
                }
                if (length > i10) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.r(i11);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void n(b bVar, HashMap map) throws IOException {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int iE = cVar.e(this.f9654g);
        int iE2 = cVar2.e(this.f9654g);
        if (this.f9651d == 7) {
            iE += this.f9657j;
        }
        if (iE > 0 && iE2 > 0 && this.f9648a == null && this.f9650c == null && this.f9649b == null) {
            bVar.skip(iE);
            bVar.read(new byte[iE2]);
        }
    }

    public final boolean o(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.e(this.f9654g) <= 512 && cVar2.e(this.f9654g) <= 512;
    }

    public final void p(InputStream inputStream) {
        boolean z4 = f9636m;
        for (int i10 = 0; i10 < G.length; i10++) {
            try {
                this.f9652e[i10] = new HashMap();
            } catch (IOException | UnsupportedOperationException unused) {
                a();
                if (!z4) {
                    return;
                }
            } catch (Throwable th2) {
                a();
                if (z4) {
                    r();
                }
                throw th2;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        int iG = g(bufferedInputStream);
        this.f9651d = iG;
        if (iG == 4 || iG == 9 || iG == 13 || iG == 14) {
            b bVar = new b(bufferedInputStream);
            int i11 = this.f9651d;
            if (i11 == 4) {
                f(bVar, 0, 0);
            } else if (i11 == 13) {
                i(bVar);
            } else if (i11 == 9) {
                j(bVar);
            } else if (i11 == 14) {
                m(bVar);
            }
        } else {
            f fVar = new f(bufferedInputStream);
            int i12 = this.f9651d;
            if (i12 == 12) {
                e(fVar);
            } else if (i12 == 7) {
                h(fVar);
            } else if (i12 == 10) {
                l(fVar);
            } else {
                k(fVar);
            }
            fVar.A(this.f9656i);
            w(fVar);
        }
        a();
        if (!z4) {
            return;
        }
        r();
    }

    public final void q(f fVar) throws IOException {
        ByteOrder byteOrderS = s(fVar);
        this.f9654g = byteOrderS;
        fVar.f9623b = byteOrderS;
        int unsignedShort = fVar.readUnsignedShort();
        int i10 = this.f9651d;
        if (i10 != 7 && i10 != 10 && unsignedShort != 42) {
            throw new IOException(g.b.e(unsignedShort, new StringBuilder("Invalid start code: ")));
        }
        int i11 = fVar.readInt();
        if (i11 < 8) {
            throw new IOException(da.b.a(i11, "Invalid first Ifd offset: "));
        }
        int i12 = i11 - 8;
        if (i12 > 0) {
            fVar.r(i12);
        }
    }

    public final void r() {
        int i10 = 0;
        while (true) {
            HashMap[] mapArr = this.f9652e;
            if (i10 >= mapArr.length) {
                return;
            }
            mapArr[i10].size();
            for (Map.Entry entry : mapArr[i10].entrySet()) {
                c cVar = (c) entry.getValue();
                cVar.toString();
                cVar.f(this.f9654g);
            }
            i10++;
        }
    }

    public final void t(int i10, byte[] bArr) throws IOException {
        f fVar = new f(bArr);
        q(fVar);
        u(fVar, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(f fVar, int i10) throws IOException {
        HashMap[] mapArr;
        boolean z4;
        short s8;
        HashSet hashSet;
        long j10;
        boolean z10;
        int i11;
        long j11;
        long j12;
        short s10;
        int unsignedShort;
        long j13;
        HashSet hashSet2;
        int i12 = i10;
        int i13 = 5;
        Integer numValueOf = Integer.valueOf(fVar.f9624c);
        HashSet hashSet3 = this.f9653f;
        hashSet3.add(numValueOf);
        short s11 = fVar.readShort();
        if (s11 <= 0) {
            return;
        }
        short s12 = 0;
        while (true) {
            mapArr = this.f9652e;
            z4 = f9636m;
            if (s12 >= s11) {
                break;
            }
            int unsignedShort2 = fVar.readUnsignedShort();
            int unsignedShort3 = fVar.readUnsignedShort();
            int i14 = fVar.readInt();
            long j14 = fVar.f9624c + 4;
            d dVar = (d) I[i12].get(Integer.valueOf(unsignedShort2));
            if (z4) {
                Integer numValueOf2 = Integer.valueOf(i10);
                Integer numValueOf3 = Integer.valueOf(unsignedShort2);
                String str = dVar != null ? dVar.f9631b : null;
                Integer numValueOf4 = Integer.valueOf(unsignedShort3);
                Integer numValueOf5 = Integer.valueOf(i14);
                s8 = s11;
                Object[] objArr = new Object[i13];
                objArr[0] = numValueOf2;
                objArr[1] = numValueOf3;
                objArr[2] = str;
                objArr[3] = numValueOf4;
                objArr[4] = numValueOf5;
                String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr);
            } else {
                s8 = s11;
            }
            if (dVar != null && unsignedShort3 > 0) {
                if (unsignedShort3 < D.length) {
                    int i15 = dVar.f9632c;
                    if (i15 == 7 || unsignedShort3 == 7 || i15 == unsignedShort3 || (i11 = dVar.f9633d) == unsignedShort3 || (((i15 == 4 || i11 == 4) && unsignedShort3 == 3) || (((i15 == 9 || i11 == 9) && unsignedShort3 == 8) || ((i15 == 12 || i11 == 12) && unsignedShort3 == 11)))) {
                        if (unsignedShort3 == 7) {
                            unsignedShort3 = i15;
                        }
                        hashSet = hashSet3;
                        j10 = i14 * r5[unsignedShort3];
                        z10 = j10 >= 0 && j10 <= 2147483647L;
                    } else {
                        if (z4) {
                            String str2 = C[unsignedShort3];
                        }
                        hashSet = hashSet3;
                        z10 = false;
                        j10 = 0;
                    }
                } else {
                    hashSet = hashSet3;
                    z10 = false;
                    j10 = 0;
                }
            }
            if (z10) {
                if (j10 > 4) {
                    int i16 = fVar.readInt();
                    s10 = s12;
                    if (this.f9651d != 7) {
                        j11 = j14;
                        j12 = j10;
                        fVar.A(i16);
                    } else {
                        if ("MakerNote".equals(dVar.f9631b)) {
                            this.f9657j = i16;
                        } else {
                            if (i12 == 6 && "ThumbnailImage".equals(dVar.f9631b)) {
                                this.f9658k = i16;
                                this.l = i14;
                                c cVarC = c.c(6, this.f9654g);
                                j12 = j10;
                                c cVarA = c.a(this.f9658k, this.f9654g);
                                j11 = j14;
                                c cVarA2 = c.a(this.l, this.f9654g);
                                mapArr[4].put("Compression", cVarC);
                                mapArr[4].put("JPEGInterchangeFormat", cVarA);
                                mapArr[4].put("JPEGInterchangeFormatLength", cVarA2);
                            }
                            fVar.A(i16);
                        }
                        j11 = j14;
                        j12 = j10;
                        fVar.A(i16);
                    }
                    s12 = (short) (s10 + 1);
                    i12 = i10;
                    s11 = s8;
                    hashSet3 = hashSet;
                    i13 = 5;
                } else {
                    j11 = j14;
                    j12 = j10;
                    s10 = s12;
                }
                Integer num = (Integer) L.get(Integer.valueOf(unsignedShort2));
                if (num != null) {
                    if (unsignedShort3 != 3) {
                        if (unsignedShort3 == 4) {
                            j13 = fVar.readInt() & 4294967295L;
                        } else if (unsignedShort3 == 8) {
                            unsignedShort = fVar.readShort();
                        } else if (unsignedShort3 == 9 || unsignedShort3 == 13) {
                            unsignedShort = fVar.readInt();
                        } else {
                            j13 = -1;
                        }
                        if (!z4) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(j13), dVar.f9631b);
                        }
                        if (j13 <= 0) {
                            hashSet2 = hashSet;
                            if (!hashSet2.contains(Integer.valueOf((int) j13))) {
                                fVar.A(j13);
                                u(fVar, num.intValue());
                            }
                        } else {
                            hashSet2 = hashSet;
                        }
                        fVar.A(j11);
                        hashSet = hashSet2;
                    } else {
                        unsignedShort = fVar.readUnsignedShort();
                    }
                    j13 = unsignedShort;
                    if (!z4) {
                    }
                    if (j13 <= 0) {
                    }
                    fVar.A(j11);
                    hashSet = hashSet2;
                } else {
                    long j15 = j11;
                    int i17 = fVar.f9624c + this.f9656i;
                    byte[] bArr = new byte[(int) j12];
                    fVar.readFully(bArr);
                    hashSet = hashSet;
                    c cVar = new c(i17, bArr, unsignedShort3, i14);
                    mapArr[i10].put(dVar.f9631b, cVar);
                    String str3 = dVar.f9631b;
                    if ("DNGVersion".equals(str3)) {
                        this.f9651d = 3;
                    }
                    if ((("Make".equals(str3) || "Model".equals(str3)) && cVar.f(this.f9654g).contains("PENTAX")) || ("Compression".equals(str3) && cVar.e(this.f9654g) == 65535)) {
                        this.f9651d = 8;
                    }
                    if (fVar.f9624c != j15) {
                        fVar.A(j15);
                    }
                    s12 = (short) (s10 + 1);
                    i12 = i10;
                    s11 = s8;
                    hashSet3 = hashSet;
                    i13 = 5;
                }
            } else {
                fVar.A(j14);
                s10 = s12;
            }
            s12 = (short) (s10 + 1);
            i12 = i10;
            s11 = s8;
            hashSet3 = hashSet;
            i13 = 5;
        }
        HashSet hashSet4 = hashSet3;
        int i18 = fVar.readInt();
        if (z4) {
            String.format("nextIfdOffset: %d", Integer.valueOf(i18));
        }
        long j16 = i18;
        if (j16 <= 0 || hashSet4.contains(Integer.valueOf(i18))) {
            return;
        }
        fVar.A(j16);
        if (mapArr[4].isEmpty()) {
            u(fVar, 4);
        } else if (mapArr[5].isEmpty()) {
            u(fVar, 5);
        }
    }

    public final void v(String str, int i10, String str2) {
        HashMap[] mapArr = this.f9652e;
        if (mapArr[i10].isEmpty() || mapArr[i10].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i10];
        map.put(str2, map.get(str));
        mapArr[i10].remove(str);
    }

    public final void w(b bVar) throws IOException {
        c cVar;
        HashMap map = this.f9652e[4];
        c cVar2 = (c) map.get("Compression");
        if (cVar2 == null) {
            n(bVar, map);
            return;
        }
        int iE = cVar2.e(this.f9654g);
        if (iE != 1) {
            if (iE == 6) {
                n(bVar, map);
                return;
            } else if (iE != 7) {
                return;
            }
        }
        c cVar3 = (c) map.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.g(this.f9654g);
            int[] iArr2 = f9637n;
            if (!Arrays.equals(iArr2, iArr)) {
                if (this.f9651d != 3 || (cVar = (c) map.get("PhotometricInterpretation")) == null) {
                    return;
                }
                int iE2 = cVar.e(this.f9654g);
                if ((iE2 != 1 || !Arrays.equals(iArr, f9638o)) && (iE2 != 6 || !Arrays.equals(iArr, iArr2))) {
                    return;
                }
            }
            c cVar4 = (c) map.get("StripOffsets");
            c cVar5 = (c) map.get("StripByteCounts");
            if (cVar4 == null || cVar5 == null) {
                return;
            }
            long[] jArrY = o.y(cVar4.g(this.f9654g));
            long[] jArrY2 = o.y(cVar5.g(this.f9654g));
            if (jArrY == null || jArrY.length == 0 || jArrY2 == null || jArrY2.length == 0 || jArrY.length != jArrY2.length) {
                return;
            }
            long j10 = 0;
            for (long j11 : jArrY2) {
                j10 += j11;
            }
            byte[] bArr = new byte[(int) j10];
            this.f9655h = true;
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < jArrY.length; i12++) {
                int i13 = (int) jArrY[i12];
                int i14 = (int) jArrY2[i12];
                if (i12 < jArrY.length - 1 && i13 + i14 != jArrY[i12 + 1]) {
                    this.f9655h = false;
                }
                int i15 = i13 - i10;
                if (i15 < 0) {
                    return;
                }
                long j12 = i15;
                if (bVar.skip(j12) != j12) {
                    return;
                }
                int i16 = i10 + i15;
                byte[] bArr2 = new byte[i14];
                if (bVar.read(bArr2) != i14) {
                    return;
                }
                i10 = i16 + i14;
                System.arraycopy(bArr2, 0, bArr, i11, i14);
                i11 += i14;
            }
            if (this.f9655h) {
                long j13 = jArrY[0];
            }
        }
    }

    public final void x(int i10, int i11) {
        HashMap[] mapArr = this.f9652e;
        if (mapArr[i10].isEmpty() || mapArr[i11].isEmpty()) {
            return;
        }
        c cVar = (c) mapArr[i10].get("ImageLength");
        c cVar2 = (c) mapArr[i10].get("ImageWidth");
        c cVar3 = (c) mapArr[i11].get("ImageLength");
        c cVar4 = (c) mapArr[i11].get("ImageWidth");
        if (cVar == null || cVar2 == null || cVar3 == null || cVar4 == null) {
            return;
        }
        int iE = cVar.e(this.f9654g);
        int iE2 = cVar2.e(this.f9654g);
        int iE3 = cVar3.e(this.f9654g);
        int iE4 = cVar4.e(this.f9654g);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i10];
        mapArr[i10] = mapArr[i11];
        mapArr[i11] = map;
    }

    public final void y(f fVar, int i10) throws IOException {
        c cVarC;
        c cVarC2;
        HashMap[] mapArr = this.f9652e;
        c cVar = (c) mapArr[i10].get("DefaultCropSize");
        c cVar2 = (c) mapArr[i10].get("SensorTopBorder");
        c cVar3 = (c) mapArr[i10].get("SensorLeftBorder");
        c cVar4 = (c) mapArr[i10].get("SensorBottomBorder");
        c cVar5 = (c) mapArr[i10].get("SensorRightBorder");
        if (cVar != null) {
            if (cVar.f9626a == 5) {
                e[] eVarArr = (e[]) cVar.g(this.f9654g);
                if (eVarArr == null || eVarArr.length != 2) {
                    Arrays.toString(eVarArr);
                    return;
                } else {
                    cVarC = c.b(eVarArr[0], this.f9654g);
                    cVarC2 = c.b(eVarArr[1], this.f9654g);
                }
            } else {
                int[] iArr = (int[]) cVar.g(this.f9654g);
                if (iArr == null || iArr.length != 2) {
                    Arrays.toString(iArr);
                    return;
                } else {
                    cVarC = c.c(iArr[0], this.f9654g);
                    cVarC2 = c.c(iArr[1], this.f9654g);
                }
            }
            mapArr[i10].put("ImageWidth", cVarC);
            mapArr[i10].put("ImageLength", cVarC2);
            return;
        }
        if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
            int iE = cVar2.e(this.f9654g);
            int iE2 = cVar4.e(this.f9654g);
            int iE3 = cVar5.e(this.f9654g);
            int iE4 = cVar3.e(this.f9654g);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            c cVarC3 = c.c(iE2 - iE, this.f9654g);
            c cVarC4 = c.c(iE3 - iE4, this.f9654g);
            mapArr[i10].put("ImageLength", cVarC3);
            mapArr[i10].put("ImageWidth", cVarC4);
            return;
        }
        c cVar6 = (c) mapArr[i10].get("ImageLength");
        c cVar7 = (c) mapArr[i10].get("ImageWidth");
        if (cVar6 == null || cVar7 == null) {
            c cVar8 = (c) mapArr[i10].get("JPEGInterchangeFormat");
            c cVar9 = (c) mapArr[i10].get("JPEGInterchangeFormatLength");
            if (cVar8 == null || cVar9 == null) {
                return;
            }
            int iE5 = cVar8.e(this.f9654g);
            int iE6 = cVar8.e(this.f9654g);
            fVar.A(iE5);
            byte[] bArr = new byte[iE6];
            fVar.read(bArr);
            f(new b(bArr), iE5, i10);
        }
    }

    public final void z() {
        x(0, 5);
        x(0, 4);
        x(5, 4);
        HashMap[] mapArr = this.f9652e;
        c cVar = (c) mapArr[1].get("PixelXDimension");
        c cVar2 = (c) mapArr[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            mapArr[0].put("ImageWidth", cVar);
            mapArr[0].put("ImageLength", cVar2);
        }
        if (mapArr[4].isEmpty() && o(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        o(mapArr[4]);
        v("ThumbnailOrientation", 0, "Orientation");
        v("ThumbnailImageLength", 0, "ImageLength");
        v("ThumbnailImageWidth", 0, "ImageWidth");
        v("ThumbnailOrientation", 5, "Orientation");
        v("ThumbnailImageLength", 5, "ImageLength");
        v("ThumbnailImageWidth", 5, "ImageWidth");
        v("Orientation", 4, "ThumbnailOrientation");
        v("ImageLength", 4, "ThumbnailImageLength");
        v("ImageWidth", 4, "ThumbnailImageWidth");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public g(InputStream inputStream) throws IOException {
        d[][] dVarArr = G;
        this.f9652e = new HashMap[dVarArr.length];
        this.f9653f = new HashSet(dVarArr.length);
        this.f9654g = ByteOrder.BIG_ENDIAN;
        this.f9648a = null;
        if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f9650c = (AssetManager.AssetInputStream) inputStream;
            this.f9649b = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            FileDescriptor fd2 = fileInputStream.getFD();
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    h.c(fd2, 0L, OsConstants.SEEK_CUR);
                    this.f9650c = null;
                    this.f9649b = fileInputStream.getFD();
                } catch (Exception unused) {
                }
            } else {
                this.f9650c = null;
                this.f9649b = null;
            }
        }
        p(inputStream);
    }
}
