package com.android.internal.telephony.lgdata;

import android.os.SystemProperties;

public class LgDataFeature {
    private static LgDataFeature sLgDataFeature = null;
    public boolean LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG = false;

    private LgDataFeature(String paramString) {}

    public static LgDataFeature getInstance() {
        sLgDataFeature = new LgDataFeature("none");
        return sLgDataFeature;
    }
}
