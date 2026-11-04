package fi.iki.elonen;

import android.support.v4.media.session.a;
import ce.x0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hsae.autosdk.source.SourceConst;
import com.yunpan.appmanage.bean.JcifsBean;
import com.yunpan.appmanage.bean.WpVideoStreamBean;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import g.b;
import j$.util.DesugarTimeZone;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import okhttp3.internal.http.StatusLine;
import vd.x;

/* loaded from: classes.dex */
public abstract class NanoHTTPD {
    public static final String MIME_HTML = "text/html";
    public static final String MIME_PLAINTEXT = "text/plain";
    protected static Map<String, String> MIME_TYPES = null;
    private static final String QUERY_STRING_PARAMETER = "NanoHttpd.QUERY_STRING";
    protected ClientManager clientManager;
    private final String hostname;
    private final int myPort;
    private volatile ServerSocket myServerSocket;
    private Thread myThread;
    private TempFileManagerFactory tempFileManagerFactory;
    private static final String CONTENT_DISPOSITION_REGEX = "([ |\t]*Content-Disposition[ |\t]*:)(.*)";
    private static final Pattern CONTENT_DISPOSITION_PATTERN = Pattern.compile(CONTENT_DISPOSITION_REGEX, 2);
    private static final String CONTENT_TYPE_REGEX = "([ |\t]*content-type[ |\t]*:)(.*)";
    private static final Pattern CONTENT_TYPE_PATTERN = Pattern.compile(CONTENT_TYPE_REGEX, 2);
    private static final String CONTENT_DISPOSITION_ATTRIBUTE_REGEX = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*['|\"]([^\"^']*)['|\"]";
    private static final Pattern CONTENT_DISPOSITION_ATTRIBUTE_PATTERN = Pattern.compile(CONTENT_DISPOSITION_ATTRIBUTE_REGEX);
    private static final Logger LOG = Logger.getLogger(NanoHTTPD.class.getName());

    public class ClientHandler implements Runnable {
        private final Socket acceptSocket;

        public ClientHandler(Socket socket) {
            this.acceptSocket = socket;
        }

        public void close() throws IOException {
            NanoHTTPD.safeClose(this.acceptSocket);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() throws IOException {
            OutputStream outputStream;
            OutputStream outputStream2 = null;
            try {
                InputStream inputStream = this.acceptSocket.getInputStream();
                try {
                    outputStream2 = this.acceptSocket.getOutputStream();
                    HTTPSession hTTPSession = NanoHTTPD.this.new HTTPSession(NanoHTTPD.this.tempFileManagerFactory.create(), inputStream, outputStream2, this.acceptSocket.getInetAddress());
                    while (!this.acceptSocket.isClosed()) {
                        hTTPSession.execute();
                    }
                    NanoHTTPD.safeClose(outputStream2);
                    NanoHTTPD.safeClose(inputStream);
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = outputStream2;
                    outputStream2 = inputStream;
                    try {
                        if (!(th instanceof SocketException) || !"NanoHttpd Shutdown".equals(th.getMessage())) {
                            boolean z = th instanceof SocketTimeoutException;
                        }
                        NanoHTTPD.safeClose(outputStream);
                        NanoHTTPD.safeClose(outputStream2);
                        NanoHTTPD.safeClose(this.acceptSocket);
                        NanoHTTPD.this.clientManager.closed(this);
                    } catch (Throwable th3) {
                        NanoHTTPD.safeClose(outputStream);
                        NanoHTTPD.safeClose(outputStream2);
                        NanoHTTPD.safeClose(this.acceptSocket);
                        NanoHTTPD.this.clientManager.closed(this);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream = null;
            }
            NanoHTTPD.safeClose(this.acceptSocket);
            NanoHTTPD.this.clientManager.closed(this);
        }
    }

    public static class ClientManager {
        private long requestCount;
        private final List<ClientHandler> running = Collections.synchronizedList(new ArrayList());

        public void closeAll() throws IOException {
            Iterator it = new ArrayList(this.running).iterator();
            while (it.hasNext()) {
                ((ClientHandler) it.next()).close();
            }
        }

        public void closed(ClientHandler clientHandler) {
            this.running.remove(clientHandler);
        }

        public void exec(ClientHandler clientHandler) {
            this.requestCount++;
            Thread thread = new Thread(clientHandler);
            thread.setDaemon(true);
            thread.setName("NanoHttpd Request Processor (#" + this.requestCount + ")");
            this.running.add(clientHandler);
            thread.start();
        }

        public List<ClientHandler> getRunning() {
            return this.running;
        }
    }

    public static class ContentType {
        private static final String ASCII_ENCODING = "US-ASCII";
        private static final String MULTIPART_FORM_DATA_HEADER = "multipart/form-data";
        private final String boundary;
        private final String contentType;
        private final String contentTypeHeader;
        private final String encoding;
        private static final String CONTENT_REGEX = "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)";
        private static final Pattern MIME_PATTERN = Pattern.compile(CONTENT_REGEX, 2);
        private static final String CHARSET_REGEX = "[ |\t]*(charset)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";
        private static final Pattern CHARSET_PATTERN = Pattern.compile(CHARSET_REGEX, 2);
        private static final String BOUNDARY_REGEX = "[ |\t]*(boundary)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";
        private static final Pattern BOUNDARY_PATTERN = Pattern.compile(BOUNDARY_REGEX, 2);

        public ContentType(String str) {
            this.contentTypeHeader = str;
            if (str != null) {
                this.contentType = getDetailFromContentHeader(str, MIME_PATTERN, "", 1);
                this.encoding = getDetailFromContentHeader(str, CHARSET_PATTERN, null, 2);
            } else {
                this.contentType = "";
                this.encoding = HTTP.UTF_8;
            }
            if (MULTIPART_FORM_DATA_HEADER.equalsIgnoreCase(this.contentType)) {
                this.boundary = getDetailFromContentHeader(str, BOUNDARY_PATTERN, null, 2);
            } else {
                this.boundary = null;
            }
        }

        private String getDetailFromContentHeader(String str, Pattern pattern, String str2, int i10) {
            Matcher matcher = pattern.matcher(str);
            return matcher.find() ? matcher.group(i10) : str2;
        }

        public String getBoundary() {
            return this.boundary;
        }

        public String getContentType() {
            return this.contentType;
        }

        public String getContentTypeHeader() {
            return this.contentTypeHeader;
        }

        public String getEncoding() {
            String str = this.encoding;
            return str == null ? "US-ASCII" : str;
        }

        public boolean isMultipart() {
            return MULTIPART_FORM_DATA_HEADER.equalsIgnoreCase(this.contentType);
        }

        public ContentType tryUTF8() {
            if (this.encoding != null) {
                return this;
            }
            return new ContentType(b.l(this.contentTypeHeader, "; charset=UTF-8", new StringBuilder()));
        }
    }

    public static class Cookie {

        /* renamed from: e, reason: collision with root package name */
        private final String f5905e;

        /* renamed from: n, reason: collision with root package name */
        private final String f5906n;

        /* renamed from: v, reason: collision with root package name */
        private final String f5907v;

        public Cookie(String str, String str2) {
            this(str, str2, 30);
        }

        public static String getHTTPTime(int i10) {
            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
            calendar.add(5, i10);
            return simpleDateFormat.format(calendar.getTime());
        }

        public String getHTTPHeader() {
            return this.f5906n + "=" + this.f5907v + "; expires=" + this.f5905e;
        }

        public Cookie(String str, String str2, int i10) {
            this.f5906n = str;
            this.f5907v = str2;
            this.f5905e = getHTTPTime(i10);
        }

        public Cookie(String str, String str2, String str3) {
            this.f5906n = str;
            this.f5907v = str2;
            this.f5905e = str3;
        }
    }

    public class CookieHandler implements Iterable<String> {
        private final HashMap<String, String> cookies = new HashMap<>();
        private final ArrayList<Cookie> queue = new ArrayList<>();

        public CookieHandler(Map<String, String> map) {
            String str = map.get("cookie");
            if (str != null) {
                for (String str2 : str.split(";")) {
                    String[] strArrSplit = str2.trim().split("=");
                    if (strArrSplit.length == 2) {
                        this.cookies.put(strArrSplit[0], strArrSplit[1]);
                    }
                }
            }
        }

        public void delete(String str) {
            set(str, "-delete-", -30);
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return this.cookies.keySet().iterator();
        }

        public String read(String str) {
            return this.cookies.get(str);
        }

        public void set(Cookie cookie) {
            this.queue.add(cookie);
        }

        public void unloadQueue(Response response) {
            Iterator<Cookie> it = this.queue.iterator();
            while (it.hasNext()) {
                response.addHeader("Set-Cookie", it.next().getHTTPHeader());
            }
        }

        public void set(String str, String str2, int i10) {
            this.queue.add(new Cookie(str, str2, Cookie.getHTTPTime(i10)));
        }
    }

    public static class DefaultTempFile implements TempFile {
        private final File file;
        private final OutputStream fstream;

        public DefaultTempFile(File file) throws IOException {
            File fileCreateTempFile = File.createTempFile("NanoHTTPD-", "", file);
            this.file = fileCreateTempFile;
            this.fstream = new FileOutputStream(fileCreateTempFile);
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public void delete() throws Exception {
            NanoHTTPD.safeClose(this.fstream);
            if (this.file.delete()) {
                return;
            }
            throw new Exception("could not delete temporary file: " + this.file.getAbsolutePath());
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public String getName() {
            return this.file.getAbsolutePath();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public OutputStream open() {
            return this.fstream;
        }
    }

    public static class DefaultTempFileManager implements TempFileManager {
        private final List<TempFile> tempFiles;
        private final File tmpdir;

        public DefaultTempFileManager() {
            File file = new File(System.getProperty("java.io.tmpdir"));
            this.tmpdir = file;
            if (!file.exists()) {
                file.mkdirs();
            }
            this.tempFiles = new ArrayList();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public void clear() {
            Iterator<TempFile> it = this.tempFiles.iterator();
            while (it.hasNext()) {
                try {
                    it.next().delete();
                } catch (Exception e7) {
                    NanoHTTPD.LOG.log(Level.WARNING, "could not delete file ", (Throwable) e7);
                }
            }
            this.tempFiles.clear();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public TempFile createTempFile(String str) {
            DefaultTempFile defaultTempFile = new DefaultTempFile(this.tmpdir);
            this.tempFiles.add(defaultTempFile);
            return defaultTempFile;
        }
    }

    public class DefaultTempFileManagerFactory implements TempFileManagerFactory {
        public /* synthetic */ DefaultTempFileManagerFactory(NanoHTTPD nanoHTTPD, int i10) {
            this();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManagerFactory
        public TempFileManager create() {
            return new DefaultTempFileManager();
        }

        private DefaultTempFileManagerFactory() {
        }
    }

    public class HTTPSession implements IHTTPSession {
        public static final int BUFSIZE = 8192;
        public static final int MAX_HEADER_SIZE = 1024;
        private static final int MEMORY_STORE_LIMIT = 1024;
        private static final int REQUEST_BUFFER_LEN = 512;
        private CookieHandler cookies;
        private Map<String, String> headers;
        private final BufferedInputStream inputStream;
        private Method method;
        private final OutputStream outputStream;
        private Map<String, List<String>> parms;
        private String protocolVersion;
        private String queryParameterString;
        private String remoteHostname;
        private String remoteIp;
        private int rlen;
        private int splitbyte;
        private final TempFileManager tempFileManager;
        private String uri;

        public HTTPSession(TempFileManager tempFileManager, InputStream inputStream, OutputStream outputStream, InetAddress inetAddress) {
            this.tempFileManager = tempFileManager;
            this.inputStream = new BufferedInputStream(inputStream, 8192);
            this.outputStream = outputStream;
            if (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) {
                this.remoteIp = "127.0.0.1";
                this.remoteHostname = "localhost";
            } else {
                this.remoteIp = inetAddress.getHostAddress().toString();
                this.remoteHostname = "localhost";
            }
            this.headers = new HashMap();
        }

        private void decodeHeader(BufferedReader bufferedReader, Map<String, String> map, Map<String, List<String>> map2, Map<String, String> map3) throws ResponseException, IOException {
            String strDecodePercent;
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                }
                map.put("method", stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(63);
                if (iIndexOf >= 0) {
                    decodeParms(strNextToken.substring(iIndexOf + 1), map2);
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken.substring(0, iIndexOf));
                } else {
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken);
                }
                if (stringTokenizer.hasMoreTokens()) {
                    this.protocolVersion = stringTokenizer.nextToken();
                } else {
                    this.protocolVersion = "HTTP/1.1";
                    NanoHTTPD.LOG.log(Level.FINE, "no protocol version specified, strange. Assuming HTTP/1.1.");
                }
                String line2 = bufferedReader.readLine();
                while (line2 != null && !line2.trim().isEmpty()) {
                    int iIndexOf2 = line2.indexOf(58);
                    if (iIndexOf2 >= 0) {
                        map3.put(line2.substring(0, iIndexOf2).trim().toLowerCase(Locale.US), line2.substring(iIndexOf2 + 1).trim());
                    }
                    line2 = bufferedReader.readLine();
                }
                map.put("uri", strDecodePercent);
            } catch (IOException e7) {
                throw new ResponseException(Response.Status.INTERNAL_ERROR, a.n(e7, new StringBuilder("SERVER INTERNAL ERROR: IOException: ")), e7);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:71:0x019f, code lost:
        
            throw new fi.iki.elonen.NanoHTTPD.ResponseException(fi.iki.elonen.NanoHTTPD.Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary.");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void decodeMultipartFormData(ContentType contentType, ByteBuffer byteBuffer, Map<String, List<String>> map, Map<String, String> map2) throws Throwable {
            String strGroup;
            try {
                int[] boundaryPositions = getBoundaryPositions(byteBuffer, contentType.getBoundary().getBytes());
                int i10 = 2;
                if (boundaryPositions.length < 2) {
                    throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings.");
                }
                int i11 = 1024;
                byte[] bArr = new byte[1024];
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    int i15 = 1;
                    if (i13 >= boundaryPositions.length - 1) {
                        return;
                    }
                    byteBuffer.position(boundaryPositions[i13]);
                    int iRemaining = byteBuffer.remaining() < i11 ? byteBuffer.remaining() : 1024;
                    byteBuffer.get(bArr, i12, iRemaining);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, i12, iRemaining), Charset.forName(contentType.getEncoding())), iRemaining);
                    String line = bufferedReader.readLine();
                    if (line == null || !line.contains(contentType.getBoundary())) {
                        break;
                    }
                    String line2 = bufferedReader.readLine();
                    String str = null;
                    String str2 = null;
                    String strTrim = null;
                    int i16 = 2;
                    while (line2 != null && line2.trim().length() > 0) {
                        Matcher matcher = NanoHTTPD.CONTENT_DISPOSITION_PATTERN.matcher(line2);
                        if (matcher.matches()) {
                            Matcher matcher2 = NanoHTTPD.CONTENT_DISPOSITION_ATTRIBUTE_PATTERN.matcher(matcher.group(i10));
                            while (matcher2.find()) {
                                String strGroup2 = matcher2.group(i15);
                                if ("name".equalsIgnoreCase(strGroup2)) {
                                    strGroup = matcher2.group(2);
                                } else {
                                    if ("filename".equalsIgnoreCase(strGroup2)) {
                                        String strGroup3 = matcher2.group(2);
                                        if (!strGroup3.isEmpty()) {
                                            if (i14 > 0) {
                                                strGroup = str + String.valueOf(i14);
                                                str2 = strGroup3;
                                                i14++;
                                            } else {
                                                i14++;
                                            }
                                        }
                                        str2 = strGroup3;
                                    }
                                    i15 = 1;
                                }
                                str = strGroup;
                                i15 = 1;
                            }
                        }
                        Matcher matcher3 = NanoHTTPD.CONTENT_TYPE_PATTERN.matcher(line2);
                        if (matcher3.matches()) {
                            strTrim = matcher3.group(2).trim();
                        }
                        line2 = bufferedReader.readLine();
                        i16++;
                        i10 = 2;
                        i15 = 1;
                    }
                    int iScipOverNewLine = 0;
                    while (true) {
                        int i17 = i16 - 1;
                        if (i16 <= 0) {
                            break;
                        }
                        iScipOverNewLine = scipOverNewLine(bArr, iScipOverNewLine);
                        i16 = i17;
                    }
                    if (iScipOverNewLine >= iRemaining - 4) {
                        throw new ResponseException(Response.Status.INTERNAL_ERROR, "Multipart header size exceeds MAX_HEADER_SIZE.");
                    }
                    int i18 = boundaryPositions[i13] + iScipOverNewLine;
                    i13++;
                    int i19 = boundaryPositions[i13] - 4;
                    byteBuffer.position(i18);
                    List<String> arrayList = map.get(str);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        map.put(str, arrayList);
                    }
                    if (strTrim == null) {
                        byte[] bArr2 = new byte[i19 - i18];
                        byteBuffer.get(bArr2);
                        arrayList.add(new String(bArr2, contentType.getEncoding()));
                    } else {
                        String strSaveTmpFile = saveTmpFile(byteBuffer, i18, i19 - i18, str2);
                        if (map2.containsKey(str)) {
                            int i20 = 2;
                            while (true) {
                                if (!map2.containsKey(str + i20)) {
                                    break;
                                } else {
                                    i20++;
                                }
                            }
                            map2.put(str + i20, strSaveTmpFile);
                        } else {
                            map2.put(str, strSaveTmpFile);
                        }
                        arrayList.add(str2);
                    }
                    i11 = 1024;
                    i10 = 2;
                    i12 = 0;
                }
            } catch (ResponseException e7) {
                throw e7;
            } catch (Exception e10) {
                throw new ResponseException(Response.Status.INTERNAL_ERROR, e10.toString());
            }
        }

        private void decodeParms(String str, Map<String, List<String>> map) {
            String strTrim;
            String strDecodePercent;
            if (str == null) {
                this.queryParameterString = "";
                return;
            }
            this.queryParameterString = str;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf >= 0) {
                    strTrim = NanoHTTPD.decodePercent(strNextToken.substring(0, iIndexOf)).trim();
                    strDecodePercent = NanoHTTPD.decodePercent(strNextToken.substring(iIndexOf + 1));
                } else {
                    strTrim = NanoHTTPD.decodePercent(strNextToken).trim();
                    strDecodePercent = "";
                }
                List<String> arrayList = map.get(strTrim);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map.put(strTrim, arrayList);
                }
                arrayList.add(strDecodePercent);
            }
        }

        private int findHeaderEnd(byte[] bArr, int i10) {
            int i11;
            int i12 = 0;
            while (true) {
                int i13 = i12 + 1;
                if (i13 >= i10) {
                    return 0;
                }
                byte b10 = bArr[i12];
                if (b10 == 13 && bArr[i13] == 10 && (i11 = i12 + 3) < i10 && bArr[i12 + 2] == 13 && bArr[i11] == 10) {
                    return i12 + 4;
                }
                if (b10 == 10 && bArr[i13] == 10) {
                    return i12 + 2;
                }
                i12 = i13;
            }
        }

        private int[] getBoundaryPositions(ByteBuffer byteBuffer, byte[] bArr) {
            int[] iArr = new int[0];
            if (byteBuffer.remaining() < bArr.length) {
                return iArr;
            }
            int length = bArr.length + 4096;
            byte[] bArr2 = new byte[length];
            int iRemaining = byteBuffer.remaining() < length ? byteBuffer.remaining() : length;
            byteBuffer.get(bArr2, 0, iRemaining);
            int length2 = iRemaining - bArr.length;
            int i10 = 0;
            do {
                for (int i11 = 0; i11 < length2; i11++) {
                    for (int i12 = 0; i12 < bArr.length && bArr2[i11 + i12] == bArr[i12]; i12++) {
                        if (i12 == bArr.length - 1) {
                            int[] iArr2 = new int[iArr.length + 1];
                            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                            iArr2[iArr.length] = i10 + i11;
                            iArr = iArr2;
                        }
                    }
                }
                i10 += length2;
                System.arraycopy(bArr2, length - bArr.length, bArr2, 0, bArr.length);
                length2 = length - bArr.length;
                if (byteBuffer.remaining() < length2) {
                    length2 = byteBuffer.remaining();
                }
                byteBuffer.get(bArr2, bArr.length, length2);
            } while (length2 > 0);
            return iArr;
        }

        private RandomAccessFile getTmpBucket() {
            try {
                return new RandomAccessFile(this.tempFileManager.createTempFile(null).getName(), "rw");
            } catch (Exception e7) {
                throw new Error(e7);
            }
        }

        private String saveTmpFile(ByteBuffer byteBuffer, int i10, int i11, String str) throws Throwable {
            TempFile tempFileCreateTempFile;
            ByteBuffer byteBufferDuplicate;
            FileOutputStream fileOutputStream;
            if (i11 <= 0) {
                return "";
            }
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    tempFileCreateTempFile = this.tempFileManager.createTempFile(str);
                    byteBufferDuplicate = byteBuffer.duplicate();
                    fileOutputStream = new FileOutputStream(tempFileCreateTempFile.getName());
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                FileChannel channel = fileOutputStream.getChannel();
                byteBufferDuplicate.position(i10).limit(i10 + i11);
                channel.write(byteBufferDuplicate.slice());
                String name = tempFileCreateTempFile.getName();
                NanoHTTPD.safeClose(fileOutputStream);
                return name;
            } catch (Exception e10) {
                e = e10;
                fileOutputStream2 = fileOutputStream;
                throw new Error(e);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                NanoHTTPD.safeClose(fileOutputStream2);
                throw th;
            }
        }

        private int scipOverNewLine(byte[] bArr, int i10) {
            while (bArr[i10] != 10) {
                i10++;
            }
            return i10 + 1;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public void execute() throws IOException {
            byte[] bArr;
            boolean z;
            Response responseServe = null;
            try {
                try {
                    try {
                        try {
                            bArr = new byte[8192];
                            z = false;
                            this.splitbyte = 0;
                            this.rlen = 0;
                            this.inputStream.mark(8192);
                        } catch (SocketException e7) {
                            throw e7;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            NanoHTTPD.newFixedLengthResponse(Response.Status.INTERNAL_ERROR, "text/plain", e10.getMessage()).send(this.outputStream);
                        }
                    } catch (ResponseException e11) {
                        e11.printStackTrace();
                        NanoHTTPD.newFixedLengthResponse(e11.getStatus(), "text/plain", e11.getMessage()).send(this.outputStream);
                    } catch (SSLException e12) {
                        e12.printStackTrace();
                        NanoHTTPD.newFixedLengthResponse(Response.Status.INTERNAL_ERROR, "text/plain", "SSL协议失败: " + e12.getMessage()).send(this.outputStream);
                    }
                } catch (SocketTimeoutException e13) {
                    throw e13;
                } catch (IOException e14) {
                    e14.printStackTrace();
                    NanoHTTPD.newFixedLengthResponse(Response.Status.INTERNAL_ERROR, "text/plain", "服务器内部错误: " + e14.getMessage()).send(this.outputStream);
                }
                try {
                    int i10 = this.inputStream.read(bArr, 0, 8192);
                    if (i10 == -1) {
                        throw new SocketException("NanoHttpd 关闭");
                    }
                    while (i10 > 0) {
                        int i11 = this.rlen + i10;
                        this.rlen = i11;
                        int iFindHeaderEnd = findHeaderEnd(bArr, i11);
                        this.splitbyte = iFindHeaderEnd;
                        if (iFindHeaderEnd > 0) {
                            break;
                        }
                        BufferedInputStream bufferedInputStream = this.inputStream;
                        int i12 = this.rlen;
                        i10 = bufferedInputStream.read(bArr, i12, 8192 - i12);
                    }
                    if (this.splitbyte < this.rlen) {
                        this.inputStream.reset();
                        this.inputStream.skip(this.splitbyte);
                    }
                    this.parms = new HashMap();
                    Map<String, String> map = this.headers;
                    if (map == null) {
                        this.headers = new HashMap();
                    } else {
                        map.clear();
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, this.rlen)));
                    HashMap map2 = new HashMap();
                    decodeHeader(bufferedReader, map2, this.parms, this.headers);
                    String str = this.remoteIp;
                    if (str != null) {
                        this.headers.put("remote-addr", str);
                        this.headers.put("http-client-ip", this.remoteIp);
                    }
                    Method methodLookup = Method.lookup((String) map2.get("method"));
                    this.method = methodLookup;
                    if (methodLookup == null) {
                        throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error. HTTP verb " + ((String) map2.get("method")) + " unhandled.");
                    }
                    this.uri = (String) map2.get("uri");
                    this.cookies = NanoHTTPD.this.new CookieHandler(this.headers);
                    String str2 = this.headers.get("connection");
                    boolean z4 = "HTTP/1.1".equals(this.protocolVersion) && (str2 == null || !str2.matches("(?i).*close.*"));
                    responseServe = NanoHTTPD.this.serve(this);
                    if (responseServe == null) {
                        throw new ResponseException(Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: Serve() returned a null response.");
                    }
                    String str3 = this.headers.get("accept-encoding");
                    this.cookies.unloadQueue(responseServe);
                    responseServe.setRequestMethod(this.method);
                    if (NanoHTTPD.this.useGzipWhenAccepted(responseServe) && str3 != null && str3.contains("gzip")) {
                        z = true;
                    }
                    responseServe.setGzipEncoding(z);
                    responseServe.setKeepAlive(z4);
                    responseServe.send(this.outputStream);
                    if (!z4 || responseServe.isCloseConnection()) {
                        throw new SocketException("NanoHttpd 关闭");
                    }
                    NanoHTTPD.safeClose(responseServe.data);
                    NanoHTTPD.safeCloseSmb(responseServe.jcifsBean);
                    NanoHTTPD.safeClose(responseServe);
                    this.tempFileManager.clear();
                } catch (SSLException e15) {
                    throw e15;
                } catch (Exception unused) {
                    throw new SocketException("NanoHttpd 关闭");
                }
            } catch (Throwable th2) {
                NanoHTTPD.safeClose(null.data);
                NanoHTTPD.safeCloseSmb(responseServe.jcifsBean);
                NanoHTTPD.safeClose(null);
                this.tempFileManager.clear();
                throw th2;
            }
        }

        public long getBodySize() {
            if (this.headers.containsKey("content-length")) {
                return Long.parseLong(this.headers.get("content-length"));
            }
            if (this.splitbyte < this.rlen) {
                return r1 - r0;
            }
            return 0L;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public CookieHandler getCookies() {
            return this.cookies;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Map<String, String> getHeaders() {
            return this.headers;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final InputStream getInputStream() {
            return this.inputStream;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Method getMethod() {
            return this.method;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final OutputStream getOutputStream() {
            return this.outputStream;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final Map<String, List<String>> getParameters() {
            return this.parms;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        @Deprecated
        public final Map<String, String> getParms() {
            HashMap map = new HashMap();
            for (String str : this.parms.keySet()) {
                map.put(str, this.parms.get(str).get(0));
            }
            return map;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getQueryParameterString() {
            return this.queryParameterString;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getRemoteHostName() {
            return this.remoteHostname;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public String getRemoteIpAddress() {
            return this.remoteIp;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public final String getUri() {
            return this.uri;
        }

        @Override // fi.iki.elonen.NanoHTTPD.IHTTPSession
        public void parseBody(Map<String, String> map) throws Throwable {
            RandomAccessFile tmpBucket;
            ByteArrayOutputStream byteArrayOutputStream;
            DataOutput dataOutputStream;
            ByteBuffer map2;
            RandomAccessFile randomAccessFile = null;
            try {
                long bodySize = getBodySize();
                if (bodySize < 1024) {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    tmpBucket = null;
                } else {
                    tmpBucket = getTmpBucket();
                    byteArrayOutputStream = null;
                    dataOutputStream = tmpBucket;
                }
                try {
                    byte[] bArr = new byte[512];
                    while (this.rlen >= 0 && bodySize > 0) {
                        int i10 = this.inputStream.read(bArr, 0, (int) Math.min(bodySize, 512L));
                        this.rlen = i10;
                        bodySize -= i10;
                        if (i10 > 0) {
                            dataOutputStream.write(bArr, 0, i10);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        map2 = ByteBuffer.wrap(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                    } else {
                        map2 = tmpBucket.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, tmpBucket.length());
                        tmpBucket.seek(0L);
                    }
                    if (Method.POST.equals(this.method)) {
                        ContentType contentType = new ContentType(this.headers.get("content-type"));
                        if (!contentType.isMultipart()) {
                            byte[] bArr2 = new byte[map2.remaining()];
                            map2.get(bArr2);
                            String strTrim = new String(bArr2, contentType.getEncoding()).trim();
                            if ("application/x-www-form-urlencoded".equalsIgnoreCase(contentType.getContentType())) {
                                decodeParms(strTrim, this.parms);
                            } else if (strTrim.length() != 0) {
                                map.put("postData", strTrim);
                            }
                        } else {
                            if (contentType.getBoundary() == null) {
                                throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                            }
                            decodeMultipartFormData(contentType, map2, this.parms, map);
                        }
                    } else if (Method.PUT.equals(this.method)) {
                        map.put("content", saveTmpFile(map2, 0, map2.limit(), null));
                    }
                    NanoHTTPD.safeClose(tmpBucket);
                } catch (Throwable th2) {
                    th = th2;
                    randomAccessFile = tmpBucket;
                    NanoHTTPD.safeClose(randomAccessFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public interface IHTTPSession {
        void execute();

        CookieHandler getCookies();

        Map<String, String> getHeaders();

        InputStream getInputStream();

        Method getMethod();

        OutputStream getOutputStream();

        Map<String, List<String>> getParameters();

        @Deprecated
        Map<String, String> getParms();

        String getQueryParameterString();

        String getRemoteHostName();

        String getRemoteIpAddress();

        String getUri();

        void parseBody(Map<String, String> map);
    }

    public enum Method {
        GET,
        PUT,
        POST,
        DELETE,
        HEAD,
        OPTIONS,
        TRACE,
        CONNECT,
        PATCH,
        PROPFIND,
        PROPPATCH,
        MKCOL,
        MOVE,
        COPY,
        LOCK,
        UNLOCK;

        public static Method lookup(String str) {
            if (str == null) {
                return null;
            }
            try {
                return valueOf(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public static class Response implements Closeable {
        private boolean chunkedTransfer;
        private long contentLength;
        private InputStream data;
        private boolean encodeAsGzip;
        private final Map<String, String> header;
        JcifsBean jcifsBean;
        private boolean keepAlive;
        private final Map<String, String> lowerCaseHeader;
        private String mimeType;
        private Method requestMethod;
        private IStatus status;
        String wpVideoStreamTag;

        public interface IStatus {
            String getDescription();

            int getRequestStatus();
        }

        public enum Status implements IStatus {
            SWITCH_PROTOCOL(101, "Switching Protocols"),
            OK(200, "OK"),
            CREATED(CarSettingID.Recv.IGM_INPUT_OVER_VOLT, "Created"),
            ACCEPTED(CarSettingID.Recv.IGM_OVER_TEMP, "Accepted"),
            NO_CONTENT(CarSettingID.Recv.IGM_OUTPUT_OVER_CUR, "No Content"),
            PARTIAL_CONTENT(CarSettingID.Recv.IGM_OUTPUT_SCB, "Partial Content"),
            MULTI_STATUS(CarSettingID.Recv.IFC_TLR_AVAIL, "Multi-Status"),
            REDIRECT(301, "Moved Permanently"),
            FOUND(302, "Found"),
            REDIRECT_SEE_OTHER(303, "See Other"),
            NOT_MODIFIED(SourceConst.IOCTL_TEST_CHECKDEVICE_DISABLE, "Not Modified"),
            TEMPORARY_REDIRECT(StatusLine.HTTP_TEMP_REDIRECT, "Temporary Redirect"),
            BAD_REQUEST(400, "Bad Request"),
            UNAUTHORIZED(401, "Unauthorized"),
            FORBIDDEN(403, "Forbidden"),
            NOT_FOUND(404, "Not Found"),
            METHOD_NOT_ALLOWED(405, "Method Not Allowed"),
            NOT_ACCEPTABLE(406, "Not Acceptable"),
            REQUEST_TIMEOUT(408, "Request Timeout"),
            CONFLICT(409, "Conflict"),
            GONE(410, "Gone"),
            LENGTH_REQUIRED(411, "Length Required"),
            PRECONDITION_FAILED(412, "Precondition Failed"),
            PAYLOAD_TOO_LARGE(413, "Payload Too Large"),
            UNSUPPORTED_MEDIA_TYPE(415, "Unsupported Media Type"),
            RANGE_NOT_SATISFIABLE(416, "Requested Range Not Satisfiable"),
            EXPECTATION_FAILED(417, "Expectation Failed"),
            TOO_MANY_REQUESTS(429, "Too Many Requests"),
            INTERNAL_ERROR(500, "Internal Server Error"),
            NOT_IMPLEMENTED(501, "Not Implemented"),
            SERVICE_UNAVAILABLE(503, "Service Unavailable"),
            UNSUPPORTED_HTTP_VERSION(505, "HTTP Version Not Supported");

            private final String description;
            private final int requestStatus;

            Status(int i10, String str) {
                this.requestStatus = i10;
                this.description = str;
            }

            public static Status lookup(int i10) {
                for (Status status : values()) {
                    if (status.getRequestStatus() == i10) {
                        return status;
                    }
                }
                return null;
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response.IStatus
            public String getDescription() {
                return "" + this.requestStatus + " " + this.description;
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response.IStatus
            public int getRequestStatus() {
                return this.requestStatus;
            }
        }

        public Response(IStatus iStatus, String str, InputStream inputStream, long j10) {
            this.wpVideoStreamTag = "";
            this.header = new HashMap<String, String>() { // from class: fi.iki.elonen.NanoHTTPD.Response.1
                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public String put(String str2, String str3) {
                    Response.this.lowerCaseHeader.put(str2 == null ? str2 : str2.toLowerCase(), str3);
                    return (String) super.put((AnonymousClass1) str2, str3);
                }
            };
            this.lowerCaseHeader = new HashMap();
            this.status = iStatus;
            this.mimeType = str;
            if (inputStream == null) {
                this.data = new ByteArrayInputStream(new byte[0]);
                this.contentLength = 0L;
            } else {
                this.data = inputStream;
                this.contentLength = j10;
            }
            this.chunkedTransfer = this.contentLength < 0;
            this.keepAlive = true;
        }

        private void sendBody(OutputStream outputStream, long j10) throws IOException {
            int i10;
            int i11;
            long jMin = 16384;
            byte[] bArr = new byte[(int) 16384];
            boolean z = j10 == -1;
            if (!this.wpVideoStreamTag.isEmpty()) {
                DecimalFormat decimalFormat = k.f4034u0;
                synchronized (j.f4033a.I) {
                    long j11 = j10;
                    while (true) {
                        if (j11 <= 0 && !z) {
                            break;
                        }
                        try {
                            String str = this.wpVideoStreamTag;
                            k kVar = j.f4033a;
                            if (!str.equals(kVar.I.wpVideoStreamTag)) {
                                break;
                            }
                            if (!z) {
                                jMin = Math.min(j11, jMin);
                            }
                            WpVideoStreamBean wpVideoStreamBean = kVar.I;
                            x0 x0Var = wpVideoStreamBean.randomFile_smb1;
                            if (x0Var != null) {
                                i11 = x0Var.read(bArr, 0, (int) jMin);
                            } else {
                                x xVar = wpVideoStreamBean.randomFile_smb2;
                                i11 = xVar != null ? xVar.read(bArr, 0, (int) jMin) : -1;
                            }
                            if (i11 <= 0) {
                                break;
                            }
                            outputStream.write(bArr, 0, i11);
                            if (!z) {
                                j11 -= i11;
                            }
                            jMin = 16384;
                        } finally {
                        }
                    }
                }
                return;
            }
            long j12 = j10;
            while (true) {
                if (j12 <= 0 && !z) {
                    return;
                }
                long jMin2 = z ? 16384L : Math.min(j12, 16384L);
                InputStream inputStream = this.data;
                if (inputStream != null) {
                    i10 = inputStream.read(bArr, 0, (int) jMin2);
                } else if (this.wpVideoStreamTag.isEmpty()) {
                    i10 = this.jcifsBean.in.read(bArr, 0, (int) jMin2);
                } else {
                    DecimalFormat decimalFormat2 = k.f4034u0;
                    WpVideoStreamBean wpVideoStreamBean2 = j.f4033a.I;
                    x0 x0Var2 = wpVideoStreamBean2.randomFile_smb1;
                    if (x0Var2 != null) {
                        i10 = x0Var2.read(bArr, 0, (int) jMin2);
                    } else {
                        x xVar2 = wpVideoStreamBean2.randomFile_smb2;
                        i10 = xVar2 != null ? xVar2.read(bArr, 0, (int) jMin2) : -1;
                    }
                }
                if (i10 <= 0) {
                    return;
                }
                outputStream.write(bArr, 0, i10);
                if (!z) {
                    j12 -= i10;
                }
            }
        }

        private void sendBodyWithCorrectEncoding(OutputStream outputStream, long j10) throws IOException {
            if (!this.encodeAsGzip) {
                sendBody(outputStream, j10);
                return;
            }
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            sendBody(gZIPOutputStream, -1L);
            gZIPOutputStream.finish();
        }

        private void sendBodyWithCorrectTransferAndEncoding(OutputStream outputStream, long j10) throws IOException {
            if (this.requestMethod == Method.HEAD || !this.chunkedTransfer) {
                sendBodyWithCorrectEncoding(outputStream, j10);
                return;
            }
            ChunkedOutputStream chunkedOutputStream = new ChunkedOutputStream(outputStream);
            sendBodyWithCorrectEncoding(chunkedOutputStream, -1L);
            chunkedOutputStream.finish();
        }

        public void addHeader(String str, String str2) {
            this.header.put(str, str2);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.data;
            if (inputStream != null) {
                inputStream.close();
            }
            NanoHTTPD.safeCloseSmb(this.jcifsBean);
        }

        public void closeConnection(boolean z) {
            if (z) {
                this.header.put("connection", "close");
            } else {
                this.header.remove("connection");
            }
        }

        public InputStream getData() {
            return this.data;
        }

        public String getHeader(String str) {
            return this.lowerCaseHeader.get(str.toLowerCase());
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public Method getRequestMethod() {
            return this.requestMethod;
        }

        public IStatus getStatus() {
            return this.status;
        }

        public boolean isCloseConnection() {
            return "close".equals(getHeader("connection"));
        }

        public void printHeader(PrintWriter printWriter, String str, String str2) {
            printWriter.append((CharSequence) str).append(": ").append((CharSequence) str2).append("\r\n");
        }

        public void send(OutputStream outputStream) throws IOException {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
            try {
                if (this.status == null) {
                    throw new Error("发送状态不能为空");
                }
                PrintWriter printWriter = new PrintWriter((Writer) new BufferedWriter(new OutputStreamWriter(outputStream, new ContentType(this.mimeType).getEncoding())), false);
                printWriter.append("HTTP/1.1 ").append((CharSequence) this.status.getDescription()).append(" \r\n");
                String str = this.mimeType;
                if (str != null) {
                    printHeader(printWriter, "Content-Type", str);
                }
                if (getHeader("date") == null) {
                    printHeader(printWriter, "Date", simpleDateFormat.format(new Date()));
                }
                for (Map.Entry<String, String> entry : this.header.entrySet()) {
                    printHeader(printWriter, entry.getKey(), entry.getValue());
                }
                if (getHeader("connection") == null) {
                    printHeader(printWriter, HTTP.CONN_DIRECTIVE, this.keepAlive ? "keep-alive" : "close");
                }
                if (getHeader("content-length") != null) {
                    this.encodeAsGzip = false;
                }
                if (this.encodeAsGzip) {
                    printHeader(printWriter, "Content-Encoding", "gzip");
                    setChunkedTransfer(true);
                }
                long jSendContentLengthHeaderIfNotAlreadyPresent = (this.data == null && this.jcifsBean == null && this.wpVideoStreamTag.isEmpty()) ? 0L : this.contentLength;
                if (this.requestMethod != Method.HEAD && this.chunkedTransfer) {
                    printHeader(printWriter, HTTP.TRANSFER_ENCODING, HTTP.CHUNK_CODING);
                } else if (!this.encodeAsGzip) {
                    jSendContentLengthHeaderIfNotAlreadyPresent = sendContentLengthHeaderIfNotAlreadyPresent(printWriter, jSendContentLengthHeaderIfNotAlreadyPresent);
                }
                printWriter.append("\r\n");
                printWriter.flush();
                sendBodyWithCorrectTransferAndEncoding(outputStream, jSendContentLengthHeaderIfNotAlreadyPresent);
                outputStream.flush();
                NanoHTTPD.safeClose(this.data);
                NanoHTTPD.safeCloseSmb(this.jcifsBean);
            } catch (Throwable th2) {
                NanoHTTPD.safeClose(this.data);
                NanoHTTPD.safeCloseSmb(this.jcifsBean);
                NanoHTTPD.LOG.log(Level.SEVERE, "发送数据到客户端失败", th2);
            }
        }

        public long sendContentLengthHeaderIfNotAlreadyPresent(PrintWriter printWriter, long j10) throws NumberFormatException {
            String header = getHeader("content-length");
            if (header != null) {
                try {
                    j10 = Long.parseLong(header);
                } catch (NumberFormatException unused) {
                    NanoHTTPD.LOG.severe("content-length was no number ".concat(header));
                }
            }
            printWriter.print("Content-Length: " + j10 + "\r\n");
            return j10;
        }

        public void setChunkedTransfer(boolean z) {
            this.chunkedTransfer = z;
        }

        public void setData(InputStream inputStream) {
            this.data = inputStream;
        }

        public void setGzipEncoding(boolean z) {
            this.encodeAsGzip = z;
        }

        public void setKeepAlive(boolean z) {
            this.keepAlive = z;
        }

        public void setMimeType(String str) {
            this.mimeType = str;
        }

        public void setRequestMethod(Method method) {
            this.requestMethod = method;
        }

        public void setStatus(IStatus iStatus) {
            this.status = iStatus;
        }

        public static class ChunkedOutputStream extends FilterOutputStream {
            public ChunkedOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            public void finish() throws IOException {
                ((FilterOutputStream) this).out.write("0\r\n\r\n".getBytes());
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i10) throws IOException {
                write(new byte[]{(byte) i10}, 0, 1);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                write(bArr, 0, bArr.length);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) throws IOException {
                if (i11 == 0) {
                    return;
                }
                ((FilterOutputStream) this).out.write(String.format("%x\r\n", Integer.valueOf(i11)).getBytes());
                ((FilterOutputStream) this).out.write(bArr, i10, i11);
                ((FilterOutputStream) this).out.write("\r\n".getBytes());
            }
        }

        public Response(IStatus iStatus, String str, JcifsBean jcifsBean, long j10) {
            this.wpVideoStreamTag = "";
            this.header = new HashMap<String, String>() { // from class: fi.iki.elonen.NanoHTTPD.Response.1
                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public String put(String str2, String str3) {
                    Response.this.lowerCaseHeader.put(str2 == null ? str2 : str2.toLowerCase(), str3);
                    return (String) super.put((AnonymousClass1) str2, str3);
                }
            };
            this.lowerCaseHeader = new HashMap();
            this.status = iStatus;
            this.mimeType = str;
            if (jcifsBean == null) {
                this.data = new ByteArrayInputStream(new byte[0]);
                this.contentLength = 0L;
            } else {
                this.jcifsBean = jcifsBean;
                this.contentLength = j10;
            }
            this.chunkedTransfer = this.contentLength < 0;
            this.keepAlive = true;
        }

        public Response(IStatus iStatus, String str, String str2, long j10) {
            this.wpVideoStreamTag = "";
            this.header = new HashMap<String, String>() { // from class: fi.iki.elonen.NanoHTTPD.Response.1
                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public String put(String str22, String str3) {
                    Response.this.lowerCaseHeader.put(str22 == null ? str22 : str22.toLowerCase(), str3);
                    return (String) super.put((AnonymousClass1) str22, str3);
                }
            };
            this.lowerCaseHeader = new HashMap();
            this.status = iStatus;
            this.mimeType = str;
            this.wpVideoStreamTag = str2;
            this.contentLength = j10;
            this.chunkedTransfer = j10 < 0;
            this.keepAlive = true;
        }
    }

    public class ServerRunnable implements Runnable {
        private IOException bindException;
        private boolean hasBinded = false;
        private final int timeout;

        public ServerRunnable(int i10) {
            this.timeout = i10;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                NanoHTTPD.this.myServerSocket.bind(NanoHTTPD.this.hostname != null ? new InetSocketAddress(NanoHTTPD.this.hostname, NanoHTTPD.this.myPort) : new InetSocketAddress(NanoHTTPD.this.myPort));
                this.hasBinded = true;
                do {
                    try {
                        Socket socketAccept = NanoHTTPD.this.myServerSocket.accept();
                        int i10 = this.timeout;
                        if (i10 > 0) {
                            socketAccept.setSoTimeout(i10);
                        }
                        NanoHTTPD nanoHTTPD = NanoHTTPD.this;
                        nanoHTTPD.clientManager.exec(nanoHTTPD.new ClientHandler(socketAccept));
                    } catch (IOException e7) {
                        NanoHTTPD.LOG.log(Level.FINE, "服务端出错 或 阻塞等待超时", (Throwable) e7);
                    }
                } while (!NanoHTTPD.this.myServerSocket.isClosed());
            } catch (IOException e10) {
                this.bindException = e10;
            }
        }
    }

    public interface TempFile {
        void delete();

        String getName();

        OutputStream open();
    }

    public interface TempFileManager {
        void clear();

        TempFile createTempFile(String str);
    }

    public interface TempFileManagerFactory {
        TempFileManager create();
    }

    public NanoHTTPD(int i10) {
        this(null, i10);
    }

    public static Map<String, List<String>> decodeParameters(Map<String, String> map) {
        return decodeParameters(map.get(QUERY_STRING_PARAMETER));
    }

    public static String decodePercent(String str) {
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e7) {
            LOG.log(Level.WARNING, "Encoding not supported, ignored", (Throwable) e7);
            return null;
        }
    }

    public static String getMimeTypeForFile(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        String str2 = iLastIndexOf >= 0 ? mimeTypes().get(str.substring(iLastIndexOf + 1).toLowerCase()) : null;
        return str2 == null ? "application/octet-stream" : str2;
    }

    private static void loadMimeTypes(Map<String, String> map, String str) throws IOException {
        try {
            Enumeration<URL> resources = NanoHTTPD.class.getClassLoader().getResources(str);
            while (resources.hasMoreElements()) {
                URL urlNextElement = resources.nextElement();
                Properties properties = new Properties();
                InputStream inputStreamOpenStream = null;
                try {
                    try {
                        inputStreamOpenStream = urlNextElement.openStream();
                        properties.load(inputStreamOpenStream);
                    } catch (IOException e7) {
                        LOG.log(Level.SEVERE, "could not load mimetypes from " + urlNextElement, (Throwable) e7);
                    }
                    safeClose(inputStreamOpenStream);
                    map.putAll(properties);
                } catch (Throwable th2) {
                    safeClose(inputStreamOpenStream);
                    throw th2;
                }
            }
        } catch (IOException unused) {
            LOG.log(Level.INFO, "no mime types available at " + str);
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(KeyStore keyStore, KeyManager[] keyManagerArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, KeyManagementException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(keyManagerArr, trustManagerFactory.getTrustManagers(), null);
            return sSLContext.getServerSocketFactory();
        } catch (Exception e7) {
            throw new IOException(e7.getMessage());
        }
    }

    public static Map<String, String> mimeTypes() throws IOException {
        if (MIME_TYPES == null) {
            HashMap map = new HashMap();
            MIME_TYPES = map;
            loadMimeTypes(map, "META-INF/nanohttpd/default-mimetypes.properties");
            loadMimeTypes(MIME_TYPES, "META-INF/nanohttpd/mimetypes.properties");
            if (MIME_TYPES.isEmpty()) {
                LOG.log(Level.WARNING, "no mime types found in the classpath! please provide mimetypes.properties");
            }
        }
        return MIME_TYPES;
    }

    public static Response newChunkedResponse(Response.IStatus iStatus, String str, InputStream inputStream) {
        return new Response(iStatus, str, inputStream, -1L);
    }

    public static Response newFixedLengthResponse(Response.IStatus iStatus, String str, InputStream inputStream, long j10) {
        return new Response(iStatus, str, inputStream, j10);
    }

    public static Response newMyCacheVideoStreamResponse(Response.IStatus iStatus, String str, String str2, long j10) {
        return new Response(iStatus, str, str2, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safeClose(Object obj) throws IOException {
        if (obj != null) {
            try {
                if (obj instanceof Closeable) {
                    ((Closeable) obj).close();
                } else if (obj instanceof Socket) {
                    ((Socket) obj).close();
                } else {
                    if (!(obj instanceof ServerSocket)) {
                        throw new IllegalArgumentException("Unknown object to close");
                    }
                    ((ServerSocket) obj).close();
                }
            } catch (IOException e7) {
                LOG.log(Level.SEVERE, "Could not close", (Throwable) e7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void safeCloseSmb(JcifsBean jcifsBean) {
        if (jcifsBean != null) {
            InputStream inputStream = jcifsBean.in;
            if (inputStream != null) {
                q4.a.e(inputStream);
            }
            DiskShare diskShare = jcifsBean.share;
            if (diskShare != null) {
                try {
                    diskShare.close();
                } catch (Exception unused) {
                }
                jcifsBean.share = null;
            }
            Session session = jcifsBean.session;
            if (session != null) {
                try {
                    session.close();
                } catch (Exception unused2) {
                }
                jcifsBean.session = null;
            }
            Connection connection = jcifsBean.connection;
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception unused3) {
                }
                jcifsBean.connection = null;
            }
            SMBClient sMBClient = jcifsBean.client;
            if (sMBClient != null) {
                try {
                    sMBClient.close();
                } catch (Exception unused4) {
                }
                jcifsBean.client = null;
            }
        }
    }

    public String getHostname() {
        return this.hostname;
    }

    public final int getListeningPort() {
        if (this.myServerSocket == null) {
            return -1;
        }
        return this.myServerSocket.getLocalPort();
    }

    public TempFileManagerFactory getTempFileManagerFactory() {
        return this.tempFileManagerFactory;
    }

    public final boolean isAlive() {
        return wasStarted() && !this.myServerSocket.isClosed() && this.myThread.isAlive();
    }

    public Response serve(IHTTPSession iHTTPSession) {
        HashMap map = new HashMap();
        Method method = iHTTPSession.getMethod();
        if (Method.PUT.equals(method) || Method.POST.equals(method)) {
            try {
                iHTTPSession.parseBody(map);
            } catch (ResponseException e7) {
                return newFixedLengthResponse(e7.getStatus(), "text/plain", e7.getMessage());
            } catch (IOException e10) {
                return newFixedLengthResponse(Response.Status.INTERNAL_ERROR, "text/plain", "SERVER INTERNAL ERROR: IOException: " + e10.getMessage());
            }
        }
        Map<String, String> parms = iHTTPSession.getParms();
        parms.put(QUERY_STRING_PARAMETER, iHTTPSession.getQueryParameterString());
        return serve(iHTTPSession.getUri(), method, iHTTPSession.getHeaders(), parms, map);
    }

    public void start(int i10) throws IOException {
        start(i10, null, null);
    }

    public void stop() throws InterruptedException {
        try {
            safeClose(this.myServerSocket);
            this.clientManager.closeAll();
            Thread thread = this.myThread;
            if (thread != null) {
                thread.join();
            }
        } catch (Exception e7) {
            LOG.log(Level.SEVERE, "停止服务：无法阻止所有连接", (Throwable) e7);
        }
    }

    public boolean useGzipWhenAccepted(Response response) {
        return response.getMimeType() != null && (response.getMimeType().toLowerCase().contains("text/") || response.getMimeType().toLowerCase().contains("/json"));
    }

    public final boolean wasStarted() {
        return (this.myServerSocket == null || this.myThread == null) ? false : true;
    }

    public static final class ResponseException extends Exception {
        private static final long serialVersionUID = 6569838532917408380L;
        private final Response.Status status;

        public ResponseException(Response.Status status, String str) {
            super(str);
            this.status = status;
        }

        public Response.Status getStatus() {
            return this.status;
        }

        public ResponseException(Response.Status status, String str, Exception exc) {
            super(str, exc);
            this.status = status;
        }
    }

    public NanoHTTPD(String str, int i10) {
        this.hostname = str;
        this.myPort = i10;
        this.tempFileManagerFactory = new DefaultTempFileManagerFactory(this, 0);
        this.clientManager = new ClientManager();
    }

    public static Map<String, List<String>> decodeParameters(String str) {
        HashMap map = new HashMap();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                String strTrim = (iIndexOf >= 0 ? decodePercent(strNextToken.substring(0, iIndexOf)) : decodePercent(strNextToken)).trim();
                if (!map.containsKey(strTrim)) {
                    map.put(strTrim, new ArrayList());
                }
                String strDecodePercent = iIndexOf >= 0 ? decodePercent(strNextToken.substring(iIndexOf + 1)) : null;
                if (strDecodePercent != null) {
                    ((List) map.get(strTrim)).add(strDecodePercent);
                }
            }
        }
        return map;
    }

    public static Response newChunkedResponse(Response.IStatus iStatus, String str, JcifsBean jcifsBean) {
        return new Response(iStatus, str, jcifsBean, -1L);
    }

    public static Response newFixedLengthResponse(Response.IStatus iStatus, String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        ContentType contentType = new ContentType(str);
        if (str2 == null) {
            return newFixedLengthResponse(iStatus, str, new ByteArrayInputStream(new byte[0]), 0L);
        }
        try {
            if (!Charset.forName(contentType.getEncoding()).newEncoder().canEncode(str2)) {
                contentType = contentType.tryUTF8();
            }
            bytes = str2.getBytes(contentType.getEncoding());
        } catch (UnsupportedEncodingException e7) {
            LOG.log(Level.SEVERE, "encoding problem, responding nothing", (Throwable) e7);
            bytes = new byte[0];
        }
        return newFixedLengthResponse(iStatus, contentType.getContentTypeHeader(), new ByteArrayInputStream(bytes), bytes.length);
    }

    public void start(int i10, SSLServerSocketFactory sSLServerSocketFactory, String[] strArr) throws IOException {
        if (sSLServerSocketFactory == null) {
            this.myServerSocket = new ServerSocket();
        } else {
            SSLServerSocket sSLServerSocket = (SSLServerSocket) sSLServerSocketFactory.createServerSocket();
            if (strArr != null) {
                sSLServerSocket.setEnabledProtocols(strArr);
            } else {
                sSLServerSocket.setEnabledProtocols(sSLServerSocket.getSupportedProtocols());
            }
            sSLServerSocket.setUseClientMode(false);
            sSLServerSocket.setWantClientAuth(false);
            sSLServerSocket.setNeedClientAuth(false);
            this.myServerSocket = sSLServerSocket;
        }
        this.myServerSocket.setReuseAddress(true);
        ServerRunnable serverRunnable = new ServerRunnable(i10);
        Thread thread = new Thread(serverRunnable);
        this.myThread = thread;
        thread.setDaemon(true);
        this.myThread.setName("HTTP server Main Listener");
        this.myThread.start();
        while (!serverRunnable.hasBinded && serverRunnable.bindException == null) {
            try {
                Thread.sleep(10L);
            } catch (Throwable unused) {
            }
        }
        if (serverRunnable.bindException != null) {
            throw serverRunnable.bindException;
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(KeyStore keyStore, KeyManagerFactory keyManagerFactory) throws IOException {
        try {
            return makeSSLSocketFactory(keyStore, keyManagerFactory.getKeyManagers());
        } catch (Exception e7) {
            throw new IOException(e7.getMessage());
        }
    }

    public static SSLServerSocketFactory makeSSLSocketFactory(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            InputStream resourceAsStream = NanoHTTPD.class.getResourceAsStream(str);
            if (resourceAsStream == null) {
                throw new IOException("Unable to load keystore from classpath: " + str);
            }
            keyStore.load(resourceAsStream, cArr);
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            keyManagerFactory.init(keyStore, cArr);
            return makeSSLSocketFactory(keyStore, keyManagerFactory);
        } catch (Exception e7) {
            throw new IOException(e7.getMessage());
        }
    }

    @Deprecated
    public Response serve(String str, Method method, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        return newFixedLengthResponse(Response.Status.NOT_FOUND, "text/plain", "Not Found");
    }

    public static Response newFixedLengthResponse(String str) {
        return newFixedLengthResponse(Response.Status.OK, MIME_HTML, str);
    }
}
