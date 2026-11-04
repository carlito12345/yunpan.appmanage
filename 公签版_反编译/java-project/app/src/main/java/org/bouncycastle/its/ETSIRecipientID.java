package org.bouncycastle.its;

import org.bouncycastle.oer.its.ieee1609dot2.PKRecipientInfo;
import org.bouncycastle.oer.its.ieee1609dot2.basetypes.HashedId8;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Selector;

/* loaded from: classes3.dex */
public class ETSIRecipientID implements Selector<ETSIRecipientInfo> {

    /* renamed from: id, reason: collision with root package name */
    private final HashedId8 f12102id;

    public ETSIRecipientID(HashedId8 hashedId8) {
        this.f12102id = hashedId8;
    }

    @Override // org.bouncycastle.util.Selector
    public Object clone() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HashedId8 hashedId8 = this.f12102id;
        HashedId8 hashedId82 = ((ETSIRecipientID) obj).f12102id;
        return hashedId8 != null ? hashedId8.equals(hashedId82) : hashedId82 == null;
    }

    public int hashCode() {
        HashedId8 hashedId8 = this.f12102id;
        if (hashedId8 != null) {
            return hashedId8.hashCode();
        }
        return 0;
    }

    public ETSIRecipientID(byte[] bArr) {
        this(new HashedId8(bArr));
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(ETSIRecipientInfo eTSIRecipientInfo) {
        if (eTSIRecipientInfo.getRecipientInfo().getChoice() == 2) {
            return Arrays.areEqual(PKRecipientInfo.getInstance(eTSIRecipientInfo.getRecipientInfo().getRecipientInfo()).getRecipientId().getHashBytes(), this.f12102id.getHashBytes());
        }
        return false;
    }
}
