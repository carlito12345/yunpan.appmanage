package com.hierynomus.ntlm.messages;

import com.hierynomus.ntlm.av.AvId;
import com.hierynomus.ntlm.av.AvPair;
import com.hierynomus.ntlm.av.AvPairEnd;
import com.hierynomus.ntlm.av.AvPairFactory;
import com.hierynomus.protocol.commons.buffer.Buffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class TargetInfo {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) TargetInfo.class);
    private List<AvPair<?>> targetInfo = new ArrayList();

    public TargetInfo copy() {
        TargetInfo targetInfo = new TargetInfo();
        targetInfo.targetInfo = new ArrayList(this.targetInfo);
        return targetInfo;
    }

    public <T extends AvPair<?>> T getAvPair(AvId avId) {
        Iterator<AvPair<?>> it = this.targetInfo.iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (t10.getAvId() == avId) {
                return t10;
            }
        }
        return null;
    }

    public boolean hasAvPair(AvId avId) {
        Iterator<AvPair<?>> it = this.targetInfo.iterator();
        while (it.hasNext()) {
            if (it.next().getAvId() == avId) {
                return true;
            }
        }
        return false;
    }

    public void putAvPair(AvPair<?> avPair) {
        Iterator<AvPair<?>> it = this.targetInfo.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AvPair<?> next = it.next();
            if (next.getAvId() == avPair.getAvId()) {
                this.targetInfo.remove(next);
                break;
            }
        }
        this.targetInfo.add(avPair);
    }

    public TargetInfo readFrom(Buffer.PlainBuffer plainBuffer) {
        while (true) {
            AvPair<?> avPair = AvPairFactory.read(plainBuffer);
            if (avPair.getAvId() == AvId.MsvAvEOL) {
                return this;
            }
            logger.trace("Read TargetInfo {} --> {}", avPair.getAvId(), avPair.getValue());
            this.targetInfo.add(avPair);
        }
    }

    public String toString() {
        return "TargetInfo{targetInfo=" + this.targetInfo + '}';
    }

    public void writeTo(Buffer.PlainBuffer plainBuffer) {
        for (AvPair<?> avPair : this.targetInfo) {
            logger.trace("Writing TargetInfo {} --> {}", avPair.getAvId(), avPair.getValue());
            avPair.write(plainBuffer);
        }
        new AvPairEnd().write(plainBuffer);
    }
}
