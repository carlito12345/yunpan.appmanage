package com.rapid7.client.dcerpc.mssamr.dto;

import java.util.Arrays;

/* loaded from: classes.dex */
public class LogonHours {
    private byte[] logonHours;
    private UnitsPerWeek unitsPerWeek;

    public enum UnitsPerWeek {
        DAYS,
        HOURS,
        MINUTES;

        public static UnitsPerWeek fromLogonHoursLength(int i10) {
            if (i10 == 1) {
                return DAYS;
            }
            if (i10 == 21) {
                return HOURS;
            }
            if (i10 == 1260) {
                return MINUTES;
            }
            throw new IllegalArgumentException(String.format("Invalid logonHours length: %d", Integer.valueOf(i10)));
        }
    }

    public LogonHours(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Expecting non-null logonHours");
        }
        this.unitsPerWeek = UnitsPerWeek.fromLogonHoursLength(bArr.length);
        this.logonHours = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LogonHours) {
            return Arrays.equals(this.logonHours, ((LogonHours) obj).logonHours);
        }
        return false;
    }

    public byte[] getLogonHours() {
        return this.logonHours;
    }

    public UnitsPerWeek getUnitsPerWeek() {
        return this.unitsPerWeek;
    }

    public int hashCode() {
        return Arrays.hashCode(this.logonHours);
    }

    public String toString() {
        return String.format("LogonHours{unitsPerWeek: %s, size(logonHours): %d", this.unitsPerWeek, Integer.valueOf(this.logonHours.length));
    }
}
