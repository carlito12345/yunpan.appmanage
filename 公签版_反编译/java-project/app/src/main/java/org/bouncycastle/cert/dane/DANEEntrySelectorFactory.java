package org.bouncycastle.cert.dane;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes3.dex */
public class DANEEntrySelectorFactory {
    private final DigestCalculator digestCalculator;

    public DANEEntrySelectorFactory(DigestCalculator digestCalculator) {
        this.digestCalculator = digestCalculator;
    }

    public DANEEntrySelector createSelector(String str) throws DANEException, IOException {
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(str.substring(0, str.indexOf(64)));
        try {
            OutputStream outputStream = this.digestCalculator.getOutputStream();
            outputStream.write(uTF8ByteArray);
            outputStream.close();
            byte[] digest = this.digestCalculator.getDigest();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Strings.fromByteArray(Hex.encode(digest)));
            sb2.append("._smimecert.");
            return new DANEEntrySelector(a.p(str, str.indexOf(64) + 1, sb2));
        } catch (IOException e7) {
            throw new DANEException(a.n(e7, new StringBuilder("Unable to calculate digest string: ")), e7);
        }
    }
}
