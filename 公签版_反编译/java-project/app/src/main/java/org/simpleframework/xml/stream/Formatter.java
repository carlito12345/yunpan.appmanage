package org.simpleframework.xml.stream;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
class Formatter {
    private OutputBuffer buffer = new OutputBuffer();
    private Indenter indenter;
    private Tag last;
    private String prolog;
    private Writer result;
    private static final char[] NAMESPACE = {'x', 'm', 'l', 'n', 's'};
    private static final char[] LESS = {'&', 'l', 't', ';'};
    private static final char[] GREATER = {'&', 'g', 't', ';'};
    private static final char[] DOUBLE = {'&', 'q', 'u', 'o', 't', ';'};
    private static final char[] SINGLE = {'&', 'a', 'p', 'o', 's', ';'};
    private static final char[] AND = {'&', 'a', 'm', 'p', ';'};
    private static final char[] OPEN = {'<', '!', '-', '-', ' '};
    private static final char[] CLOSE = {' ', '-', '-', '>'};

    public enum Tag {
        COMMENT,
        START,
        TEXT,
        END
    }

    public Formatter(Writer writer, Format format) {
        this.result = new BufferedWriter(writer, 1024);
        this.indenter = new Indenter(format);
        this.prolog = format.getProlog();
    }

    private void append(char c7) {
        this.buffer.append(c7);
    }

    private void data(String str) throws IOException {
        write("<![CDATA[");
        write(str);
        write("]]>");
    }

    private void escape(String str) throws IOException {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            escape(str.charAt(i10));
        }
    }

    private boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private boolean isText(char c7) {
        if (c7 == '\t' || c7 == '\n' || c7 == '\r' || c7 == ' ') {
            return true;
        }
        return c7 > ' ' && c7 <= '~' && c7 != 247;
    }

    private char[] symbol(char c7) {
        if (c7 == '\"') {
            return DOUBLE;
        }
        if (c7 == '<') {
            return LESS;
        }
        if (c7 == '>') {
            return GREATER;
        }
        if (c7 == '&') {
            return AND;
        }
        if (c7 != '\'') {
            return null;
        }
        return SINGLE;
    }

    private String unicode(char c7) {
        return Integer.toString(c7);
    }

    private void write(char c7) throws IOException {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(c7);
    }

    public void flush() throws IOException {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.flush();
    }

    public void writeAttribute(String str, String str2, String str3) throws NodeException, IOException {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(str, str3);
        write('=');
        write('\"');
        escape(str2);
        write('\"');
    }

    public void writeComment(String str) {
        String pVar = this.indenter.top();
        if (this.last == Tag.START) {
            append('>');
        }
        if (pVar != null) {
            append(pVar);
            append(OPEN);
            append(str);
            append(CLOSE);
        }
        this.last = Tag.COMMENT;
    }

    public void writeEnd(String str, String str2) throws IOException {
        String strPop = this.indenter.pop();
        Tag tag = this.last;
        Tag tag2 = Tag.START;
        if (tag == tag2) {
            write('/');
            write('>');
        } else {
            if (tag != Tag.TEXT) {
                write(strPop);
            }
            if (this.last != tag2) {
                write('<');
                write('/');
                write(str, str2);
                write('>');
            }
        }
        this.last = Tag.END;
    }

    public void writeNamespace(String str, String str2) throws NodeException, IOException {
        if (this.last != Tag.START) {
            throw new NodeException("Start element required");
        }
        write(' ');
        write(NAMESPACE);
        if (!isEmpty(str2)) {
            write(':');
            write(str2);
        }
        write('=');
        write('\"');
        escape(str);
        write('\"');
    }

    public void writeProlog() throws IOException {
        String str = this.prolog;
        if (str != null) {
            write(str);
            write(SignParameters.NEW_LINE);
        }
    }

    public void writeStart(String str, String str2) throws IOException {
        String strPush = this.indenter.push();
        Tag tag = this.last;
        Tag tag2 = Tag.START;
        if (tag == tag2) {
            append('>');
        }
        flush();
        append(strPush);
        append('<');
        if (!isEmpty(str2)) {
            append(str2);
            append(':');
        }
        append(str);
        this.last = tag2;
    }

    public void writeText(String str) throws IOException {
        writeText(str, Mode.ESCAPE);
    }

    private void append(char[] cArr) {
        this.buffer.append(cArr);
    }

    public void writeText(String str, Mode mode) throws IOException {
        if (this.last == Tag.START) {
            write('>');
        }
        if (mode == Mode.DATA) {
            data(str);
        } else {
            escape(str);
        }
        this.last = Tag.TEXT;
    }

    private void append(String str) {
        this.buffer.append(str);
    }

    private void escape(char c7) throws IOException {
        char[] cArrSymbol = symbol(c7);
        if (cArrSymbol != null) {
            write(cArrSymbol);
        } else {
            write(c7);
        }
    }

    private void write(char[] cArr) throws IOException {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(cArr);
    }

    private void write(String str) throws IOException {
        this.buffer.write(this.result);
        this.buffer.clear();
        this.result.write(str);
    }

    private void write(String str, String str2) throws IOException {
        this.buffer.write(this.result);
        this.buffer.clear();
        if (!isEmpty(str2)) {
            this.result.write(str2);
            this.result.write(58);
        }
        this.result.write(str);
    }
}
