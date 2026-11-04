package j$.io;

import com.hsae.autosdk.source.SourceConst;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.BufferedReader;

/* loaded from: classes2.dex */
public final /* synthetic */ class DesugarBufferedReader {
    public static Stream lines(BufferedReader bufferedReader) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new a(bufferedReader), SourceConst.IOCTL_FM_VOLUME), false);
    }
}
