package org.bouncycastle.est.jcajce;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.source.SourceConst;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.http.StatusLine;
import org.bouncycastle.est.ESTClient;
import org.bouncycastle.est.ESTClientSourceProvider;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.est.ESTRequest;
import org.bouncycastle.est.ESTRequestBuilder;
import org.bouncycastle.est.ESTResponse;
import org.bouncycastle.est.Source;
import org.bouncycastle.util.Properties;

/* loaded from: classes3.dex */
class DefaultESTClient implements ESTClient {
    private final ESTClientSourceProvider sslSocketProvider;
    private static final Charset utf8 = Charset.forName(HTTP.UTF_8);
    private static byte[] CRLF = {13, 10};

    public static class PrintingOutputStream extends OutputStream {
        private final OutputStream tgt;

        public PrintingOutputStream(OutputStream outputStream) {
            this.tgt = outputStream;
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            PrintStream printStream = System.out;
            String.valueOf((char) i10);
            printStream.getClass();
            this.tgt.write(i10);
        }
    }

    public DefaultESTClient(ESTClientSourceProvider eSTClientSourceProvider) {
        this.sslSocketProvider = eSTClientSourceProvider;
    }

    private static void writeLine(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes());
        outputStream.write(CRLF);
    }

    @Override // org.bouncycastle.est.ESTClient
    public ESTResponse doRequest(ESTRequest eSTRequest) throws IOException {
        ESTResponse eSTResponsePerformRequest;
        int i10 = 15;
        while (true) {
            eSTResponsePerformRequest = performRequest(eSTRequest);
            ESTRequest eSTRequestRedirectURL = redirectURL(eSTResponsePerformRequest);
            if (eSTRequestRedirectURL == null || i10 - 1 <= 0) {
                break;
            }
            eSTRequest = eSTRequestRedirectURL;
        }
        if (i10 != 0) {
            return eSTResponsePerformRequest;
        }
        throw new ESTException("Too many redirects..");
    }

    public ESTResponse performRequest(ESTRequest eSTRequest) {
        Source source = null;
        try {
            Source sourceMakeSource = this.sslSocketProvider.makeSource(eSTRequest.getURL().getHost(), eSTRequest.getURL().getPort());
            if (eSTRequest.getListener() != null) {
                eSTRequest = eSTRequest.getListener().onConnection(sourceMakeSource, eSTRequest);
            }
            Set<String> setAsKeySet = Properties.asKeySet("org.bouncycastle.debug.est");
            OutputStream printingOutputStream = (setAsKeySet.contains("output") || setAsKeySet.contains("all")) ? new PrintingOutputStream(sourceMakeSource.getOutputStream()) : sourceMakeSource.getOutputStream();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(eSTRequest.getURL().getPath());
            sb2.append(eSTRequest.getURL().getQuery() != null ? eSTRequest.getURL().getQuery() : "");
            String string = sb2.toString();
            ESTRequestBuilder eSTRequestBuilder = new ESTRequestBuilder(eSTRequest);
            if (!eSTRequest.getHeaders().containsKey(HTTP.CONN_DIRECTIVE)) {
                eSTRequestBuilder.addHeader(HTTP.CONN_DIRECTIVE, "close");
            }
            URL url = eSTRequest.getURL();
            eSTRequestBuilder.setHeader("Host", url.getPort() > -1 ? String.format("%s:%d", url.getHost(), Integer.valueOf(url.getPort())) : url.getHost());
            ESTRequest eSTRequestBuild = eSTRequestBuilder.build();
            writeLine(printingOutputStream, eSTRequestBuild.getMethod() + " " + string + " HTTP/1.1");
            for (Map.Entry<String, String[]> entry : eSTRequestBuild.getHeaders().entrySet()) {
                String[] value = entry.getValue();
                for (int i10 = 0; i10 != value.length; i10++) {
                    writeLine(printingOutputStream, entry.getKey() + ": " + value[i10]);
                }
            }
            printingOutputStream.write(CRLF);
            printingOutputStream.flush();
            eSTRequestBuild.writeData(printingOutputStream);
            printingOutputStream.flush();
            if (eSTRequestBuild.getHijacker() == null) {
                return new ESTResponse(eSTRequestBuild, sourceMakeSource);
            }
            ESTResponse eSTResponseHijack = eSTRequestBuild.getHijacker().hijack(eSTRequestBuild, sourceMakeSource);
            if (sourceMakeSource != null && eSTResponseHijack == null) {
                sourceMakeSource.close();
            }
            return eSTResponseHijack;
        } catch (Throwable th2) {
            if (0 != 0) {
                source.close();
            }
            throw th2;
        }
    }

    public ESTRequest redirectURL(ESTResponse eSTResponse) throws IOException {
        ESTRequest eSTRequestBuild;
        ESTRequestBuilder eSTRequestBuilderWithURL;
        if (eSTResponse.getStatusCode() < 300 || eSTResponse.getStatusCode() > 399) {
            eSTRequestBuild = null;
        } else {
            switch (eSTResponse.getStatusCode()) {
                case 301:
                case 302:
                case 303:
                case SourceConst.IOCTL_ANDROID_PHONE_VOLUME /* 306 */:
                case StatusLine.HTTP_TEMP_REDIRECT /* 307 */:
                    String header = eSTResponse.getHeader(HttpHeaders.LOCATION);
                    if (!"".equals(header)) {
                        ESTRequestBuilder eSTRequestBuilder = new ESTRequestBuilder(eSTResponse.getOriginalRequest());
                        if (header.startsWith("http")) {
                            eSTRequestBuilderWithURL = eSTRequestBuilder.withURL(new URL(header));
                        } else {
                            URL url = eSTResponse.getOriginalRequest().getURL();
                            eSTRequestBuilderWithURL = eSTRequestBuilder.withURL(new URL(url.getProtocol(), url.getHost(), url.getPort(), header));
                        }
                        eSTRequestBuild = eSTRequestBuilderWithURL.build();
                        break;
                    } else {
                        throw new ESTException("Redirect status type: " + eSTResponse.getStatusCode() + " but no location header");
                    }
                case SourceConst.IOCTL_TEST_CHECKDEVICE_DISABLE /* 304 */:
                case 305:
                default:
                    throw new ESTException("Client does not handle http status code: " + eSTResponse.getStatusCode());
            }
        }
        if (eSTRequestBuild != null) {
            eSTResponse.close();
        }
        return eSTRequestBuild;
    }
}
