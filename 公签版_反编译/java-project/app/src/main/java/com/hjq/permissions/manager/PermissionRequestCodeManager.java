package com.hjq.permissions.manager;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public final class PermissionRequestCodeManager {
    public static final int REQUEST_CODE_LIMIT_HIGH_VALUE = 65535;
    public static final int REQUEST_CODE_LIMIT_LOW_VALUE = 255;
    private static final List<Integer> REQUEST_CODE_ARRAY = new ArrayList();
    private static final Random RANDOM = new Random();

    private PermissionRequestCodeManager() {
    }

    public static synchronized int generateRandomRequestCode(int i10) {
        int iNextInt;
        while (true) {
            int i11 = i10 > 20000 ? i10 - 10000 : i10 / 2;
            iNextInt = RANDOM.nextInt(i10 - i11) + i11;
            if (iNextInt != 1025) {
                List<Integer> list = REQUEST_CODE_ARRAY;
                if (!list.contains(Integer.valueOf(iNextInt))) {
                    list.add(Integer.valueOf(iNextInt));
                }
            }
        }
        return iNextInt;
    }

    public static synchronized void releaseRequestCode(int i10) {
        REQUEST_CODE_ARRAY.remove(Integer.valueOf(i10));
    }
}
