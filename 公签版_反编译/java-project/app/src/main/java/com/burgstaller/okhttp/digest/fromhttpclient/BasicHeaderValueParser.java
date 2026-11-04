package com.burgstaller.okhttp.digest.fromhttpclient;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class BasicHeaderValueParser {

    @Deprecated
    public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
    public static final BasicHeaderValueParser INSTANCE = new BasicHeaderValueParser();
    private static final char PARAM_DELIMITER = ';';
    private static final char ELEM_DELIMITER = ',';
    private static final char[] ALL_DELIMITERS = {PARAM_DELIMITER, ELEM_DELIMITER};

    private static boolean isOneOf(char c7, char[] cArr) {
        if (cArr != null) {
            for (char c10 : cArr) {
                if (c7 == c10) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isWhitespace(char c7) {
        return c7 == ' ' || c7 == '\t' || c7 == '\r' || c7 == '\n';
    }

    public static HeaderElement[] parseElements(String str, HeaderValueParser headerValueParser) {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        Object obj = headerValueParser;
        if (headerValueParser == null) {
            obj = INSTANCE;
        }
        return ((HeaderValueParser) obj).parseElements(charArrayBuffer, parserCursor);
    }

    public static HeaderElement parseHeaderElement(String str, HeaderValueParser headerValueParser) {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        Object obj = headerValueParser;
        if (headerValueParser == null) {
            obj = INSTANCE;
        }
        return ((HeaderValueParser) obj).parseHeaderElement(charArrayBuffer, parserCursor);
    }

    public static NameValuePair parseNameValuePair(String str, HeaderValueParser headerValueParser) {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        Object obj = headerValueParser;
        if (headerValueParser == null) {
            obj = INSTANCE;
        }
        return ((HeaderValueParser) obj).parseNameValuePair(charArrayBuffer, parserCursor);
    }

    public static NameValuePair[] parseParameters(String str, HeaderValueParser headerValueParser) {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        Object obj = headerValueParser;
        if (headerValueParser == null) {
            obj = INSTANCE;
        }
        return ((HeaderValueParser) obj).parseParameters(charArrayBuffer, parserCursor);
    }

    public HeaderElement createHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        return new BasicHeaderElement(str, str2, nameValuePairArr);
    }

    public NameValuePair createNameValuePair(String str, String str2) {
        return new BasicNameValuePair(str, str2);
    }

    public HeaderElement[] parseElements(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            HeaderElement headerElement = parseHeaderElement(charArrayBuffer, parserCursor);
            if (headerElement.getName().length() != 0 || headerElement.getValue() != null) {
                arrayList.add(headerElement);
            }
        }
        return (HeaderElement[]) arrayList.toArray(new HeaderElement[arrayList.size()]);
    }

    public HeaderElement parseHeaderElement(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair nameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        return createHeaderElement(nameValuePair.getName(), nameValuePair.getValue(), (parserCursor.atEnd() || charArrayBuffer.charAt(parserCursor.getPos() + (-1)) == ',') ? null : parseParameters(charArrayBuffer, parserCursor));
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        return parseNameValuePair(charArrayBuffer, parserCursor, ALL_DELIMITERS);
    }

    public NameValuePair[] parseParameters(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
        if (parserCursor.atEnd()) {
            return new NameValuePair[0];
        }
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
            if (charArrayBuffer.charAt(parserCursor.getPos() - 1) == ',') {
                break;
            }
        }
        return (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, char[] cArr) {
        boolean z;
        boolean z4;
        String strSubstringTrimmed;
        char cCharAt;
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z = true;
            if (pos >= upperBound || (cCharAt = charArrayBuffer.charAt(pos)) == '=') {
                break;
            }
            if (isOneOf(cCharAt, cArr)) {
                z4 = true;
                break;
            }
            pos++;
        }
        if (pos == upperBound) {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z4 = true;
        } else {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
        }
        if (z4) {
            parserCursor.updatePos(pos);
            return createNameValuePair(strSubstringTrimmed, null);
        }
        int i10 = pos;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            if (i10 >= upperBound) {
                z = z4;
                break;
            }
            char cCharAt2 = charArrayBuffer.charAt(i10);
            if (cCharAt2 == '\"' && !z10) {
                z11 = !z11;
            }
            if (!z11 && !z10 && isOneOf(cCharAt2, cArr)) {
                break;
            }
            z10 = !z10 && z11 && cCharAt2 == '\\';
            i10++;
        }
        while (pos < i10 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i11 = i10;
        while (i11 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i11 - 1))) {
            i11--;
        }
        if (i11 - pos >= 2 && charArrayBuffer.charAt(pos) == '\"' && charArrayBuffer.charAt(i11 - 1) == '\"') {
            pos++;
            i11--;
        }
        String strSubstring = charArrayBuffer.substring(pos, i11);
        if (z) {
            i10++;
        }
        parserCursor.updatePos(i10);
        return createNameValuePair(strSubstringTrimmed, strSubstring);
    }
}
