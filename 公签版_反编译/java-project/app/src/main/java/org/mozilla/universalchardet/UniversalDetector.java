package org.mozilla.universalchardet;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.EscCharsetProber;
import org.mozilla.universalchardet.prober.Latin1Prober;
import org.mozilla.universalchardet.prober.MBCSGroupProber;
import org.mozilla.universalchardet.prober.SBCSGroupProber;

/* loaded from: classes3.dex */
public class UniversalDetector {
    public static final float MINIMUM_THRESHOLD = 0.2f;
    public static final float SHORTCUT_THRESHOLD = 0.95f;
    private String detectedCharset;
    private boolean done;
    private CharsetProber escCharsetProber;
    private boolean gotData;
    private InputState inputState;
    private byte lastChar;
    private CharsetListener listener;
    private boolean onlyPrintableASCII;
    private CharsetProber[] probers;
    private boolean start;

    public enum InputState {
        PURE_ASCII,
        ESC_ASCII,
        HIGHBYTE
    }

    public UniversalDetector() {
        this(null);
    }

    public static String detectCharset(File file) {
        return detectCharset(file.toPath());
    }

    public static String detectCharsetFromBOM(byte[] bArr) {
        return detectCharsetFromBOM(bArr, 0);
    }

    public void dataEnd() {
        CharsetProber[] charsetProberArr;
        if (this.gotData) {
            String str = this.detectedCharset;
            if (str != null) {
                this.done = true;
                CharsetListener charsetListener = this.listener;
                if (charsetListener != null) {
                    charsetListener.report(str);
                    return;
                }
                return;
            }
            InputState inputState = this.inputState;
            if (inputState != InputState.HIGHBYTE) {
                if (inputState != InputState.ESC_ASCII && inputState == InputState.PURE_ASCII && this.onlyPrintableASCII) {
                    this.detectedCharset = Constants.CHARSET_US_ASCII;
                    return;
                }
                return;
            }
            int i10 = 0;
            int i11 = 0;
            float f10 = 0.0f;
            while (true) {
                charsetProberArr = this.probers;
                if (i10 >= charsetProberArr.length) {
                    break;
                }
                float confidence = charsetProberArr[i10].getConfidence();
                if (confidence > f10) {
                    i11 = i10;
                    f10 = confidence;
                }
                i10++;
            }
            if (f10 > 0.2f) {
                String charSetName = charsetProberArr[i11].getCharSetName();
                this.detectedCharset = charSetName;
                CharsetListener charsetListener2 = this.listener;
                if (charsetListener2 != null) {
                    charsetListener2.report(charSetName);
                }
            }
        }
    }

    public String getDetectedCharset() {
        return this.detectedCharset;
    }

    public CharsetListener getListener() {
        return this.listener;
    }

    public void handleData(byte[] bArr) {
        handleData(bArr, 0, bArr.length);
    }

    public boolean isDone() {
        return this.done;
    }

    public final void reset() {
        int i10 = 0;
        this.done = false;
        this.start = true;
        this.detectedCharset = null;
        this.gotData = false;
        this.inputState = InputState.PURE_ASCII;
        this.lastChar = (byte) 0;
        CharsetProber charsetProber = this.escCharsetProber;
        if (charsetProber != null) {
            charsetProber.reset();
        }
        while (true) {
            CharsetProber[] charsetProberArr = this.probers;
            if (i10 >= charsetProberArr.length) {
                return;
            }
            CharsetProber charsetProber2 = charsetProberArr[i10];
            if (charsetProber2 != null) {
                charsetProber2.reset();
            }
            i10++;
        }
    }

    public void setListener(CharsetListener charsetListener) {
        this.listener = charsetListener;
    }

    public UniversalDetector(CharsetListener charsetListener) {
        this.onlyPrintableASCII = true;
        this.listener = charsetListener;
        this.escCharsetProber = null;
        this.probers = new CharsetProber[3];
        reset();
    }

    public static String detectCharset(Path path) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            String strDetectCharset = detectCharset(bufferedInputStream);
            bufferedInputStream.close();
            return strDetectCharset;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th4) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                    } catch (Exception unused) {
                    }
                }
                throw th3;
            }
        }
    }

    private static String detectCharsetFromBOM(byte[] bArr, int i10) {
        int i11 = i10 + 3;
        if (bArr.length <= i11) {
            return null;
        }
        int i12 = bArr[i10] & 255;
        int i13 = bArr[i10 + 1] & 255;
        int i14 = bArr[i10 + 2] & 255;
        int i15 = bArr[i11] & 255;
        if (i12 == 0) {
            if (i13 == 0 && i14 == 254 && i15 == 255) {
                return Constants.CHARSET_UTF_32BE;
            }
            if (i13 == 0 && i14 == 255 && i15 == 254) {
                return Constants.CHARSET_X_ISO_10646_UCS_4_2143;
            }
            return null;
        }
        if (i12 == 239) {
            if (i13 == 187 && i14 == 191) {
                return Constants.CHARSET_UTF_8;
            }
            return null;
        }
        if (i12 == 254) {
            if (i13 == 255 && i14 == 0 && i15 == 0) {
                return Constants.CHARSET_X_ISO_10646_UCS_4_3412;
            }
            if (i13 == 255) {
                return Constants.CHARSET_UTF_16BE;
            }
            return null;
        }
        if (i12 != 255) {
            return null;
        }
        if (i13 == 254 && i14 == 0 && i15 == 0) {
            return Constants.CHARSET_UTF_32LE;
        }
        if (i13 == 254) {
            return Constants.CHARSET_UTF_16LE;
        }
        return null;
    }

    public void handleData(byte[] bArr, int i10, int i11) {
        String strDetectCharsetFromBOM;
        if (this.done) {
            return;
        }
        if (i11 > 0) {
            this.gotData = true;
        }
        int i12 = 0;
        if (this.start) {
            this.start = false;
            if (i11 > 3 && (strDetectCharsetFromBOM = detectCharsetFromBOM(bArr, i10)) != null) {
                this.detectedCharset = strDetectCharsetFromBOM;
                this.done = true;
                return;
            }
        }
        int i13 = i10 + i11;
        for (int i14 = i10; i14 < i13; i14++) {
            byte b10 = bArr[i14];
            int i15 = b10 & 255;
            if ((b10 & 128) == 0 || i15 == 160) {
                InputState inputState = this.inputState;
                InputState inputState2 = InputState.PURE_ASCII;
                if (inputState == inputState2 && (i15 == 27 || (i15 == 123 && this.lastChar == 126))) {
                    this.inputState = InputState.ESC_ASCII;
                }
                if (this.inputState == inputState2 && this.onlyPrintableASCII) {
                    this.onlyPrintableASCII = (i15 >= 32 && i15 <= 126) || i15 == 10 || i15 == 13 || i15 == 9;
                }
                this.lastChar = b10;
            } else {
                InputState inputState3 = this.inputState;
                InputState inputState4 = InputState.HIGHBYTE;
                if (inputState3 != inputState4) {
                    this.inputState = inputState4;
                    if (this.escCharsetProber != null) {
                        this.escCharsetProber = null;
                    }
                    CharsetProber[] charsetProberArr = this.probers;
                    if (charsetProberArr[0] == null) {
                        charsetProberArr[0] = new MBCSGroupProber();
                    }
                    CharsetProber[] charsetProberArr2 = this.probers;
                    if (charsetProberArr2[1] == null) {
                        charsetProberArr2[1] = new SBCSGroupProber();
                    }
                    CharsetProber[] charsetProberArr3 = this.probers;
                    if (charsetProberArr3[2] == null) {
                        charsetProberArr3[2] = new Latin1Prober();
                    }
                }
            }
        }
        InputState inputState5 = this.inputState;
        if (inputState5 == InputState.ESC_ASCII) {
            if (this.escCharsetProber == null) {
                this.escCharsetProber = new EscCharsetProber();
            }
            if (this.escCharsetProber.handleData(bArr, i10, i11) == CharsetProber.ProbingState.FOUND_IT || 0.99f == this.escCharsetProber.getConfidence()) {
                this.done = true;
                this.detectedCharset = this.escCharsetProber.getCharSetName();
                return;
            }
            return;
        }
        if (inputState5 != InputState.HIGHBYTE) {
            return;
        }
        while (true) {
            CharsetProber[] charsetProberArr4 = this.probers;
            if (i12 >= charsetProberArr4.length) {
                return;
            }
            if (charsetProberArr4[i12].handleData(bArr, i10, i11) == CharsetProber.ProbingState.FOUND_IT) {
                this.done = true;
                this.detectedCharset = this.probers[i12].getCharSetName();
                return;
            }
            i12++;
        }
    }

    public static String detectCharset(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        UniversalDetector universalDetector = new UniversalDetector(null);
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 <= 0 || universalDetector.isDone()) {
                break;
            }
            universalDetector.handleData(bArr, 0, i10);
        }
        universalDetector.dataEnd();
        String detectedCharset = universalDetector.getDetectedCharset();
        universalDetector.reset();
        return detectedCharset;
    }
}
