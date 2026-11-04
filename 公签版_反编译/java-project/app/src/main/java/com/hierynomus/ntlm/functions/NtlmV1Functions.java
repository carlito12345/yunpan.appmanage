package com.hierynomus.ntlm.functions;

import com.hierynomus.ntlm.NtlmException;
import com.hierynomus.security.Cipher;
import com.hierynomus.security.SecurityException;
import com.hierynomus.security.SecurityProvider;
import com.hsae.autosdk.p001os.SocConst;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Random;

/* loaded from: classes.dex */
class NtlmV1Functions {
    static final byte[] LMOWFv1_SECRET = {75, 71, 83, SocConst.Upgrade.CPU_CMD, 64, 35, 36, 37};
    private SecurityProvider securityProvider;

    public NtlmV1Functions(Random random, SecurityProvider securityProvider) {
        this.securityProvider = securityProvider;
    }

    public byte[] LMOWFv1(String str, String str2, String str3) throws UnsupportedEncodingException {
        try {
            byte[] bytes = str.toUpperCase().getBytes("US-ASCII");
            if (bytes.length != 14) {
                bytes = Arrays.copyOf(bytes, 14);
            }
            Cipher dESCipher = NtlmFunctions.getDESCipher(this.securityProvider, Arrays.copyOfRange(bytes, 0, 7));
            Cipher dESCipher2 = NtlmFunctions.getDESCipher(this.securityProvider, Arrays.copyOfRange(bytes, 7, 14));
            byte[] bArr = new byte[16];
            byte[] bArr2 = LMOWFv1_SECRET;
            int iUpdate = dESCipher.update(bArr2, 0, bArr2.length, bArr, 0);
            int iDoFinal = dESCipher.doFinal(bArr, iUpdate) + iUpdate;
            int iUpdate2 = iDoFinal + dESCipher2.update(bArr2, 0, bArr2.length, bArr, iDoFinal);
            if (iUpdate2 + dESCipher2.doFinal(bArr, iUpdate2) == 16) {
                return bArr;
            }
            throw new NtlmException("Incorrect lmHash calculated");
        } catch (SecurityException e7) {
            e = e7;
            throw new NtlmException(e);
        } catch (UnsupportedEncodingException e10) {
            e = e10;
            throw new NtlmException(e);
        }
    }

    public byte[] NTOWFv1(String str, String str2, String str3) {
        return NtlmFunctions.md4(this.securityProvider, NtlmFunctions.unicode(str));
    }
}
