package com.yunpan.appmanage.bean;

import j$.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class LogcatBean {
    private static final Pattern LOG_PATTERN = Pattern.compile("(\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d{3})\\s+(.+\\d+)\\s+(\\d+)\\s+([ADEIVWF])\\s+(.+?): (.*)");
    private static final Pattern LOG_PATTERN_LEGACY = Pattern.compile("(\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d{3})\\s+([ADEIVWF])/([^(].+)\\(\\s*(\\d+)(?:\\*\\s*\\d+)?\\): (.*)");
    public String appName;
    public String level;
    public String log;
    public String msg;
    public String packName;
    public String pid;
    public String tag;
    public String tid;
    public String time;

    private static boolean matchPattern(String str, LogcatBean logcatBean) {
        Matcher matcher = LOG_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        logcatBean.time = matcher.group(1);
        String strGroup = matcher.group(2);
        Objects.requireNonNull(strGroup);
        String[] strArrSplit = strGroup.split("\\s+", 2);
        if (strArrSplit.length == 2) {
            logcatBean.pid = strArrSplit[0];
            logcatBean.tid = strArrSplit[1];
        } else {
            logcatBean.pid = strArrSplit[0];
            logcatBean.tid = matcher.group(3);
        }
        logcatBean.packName = "";
        logcatBean.appName = "";
        String strGroup2 = matcher.group(4);
        Objects.requireNonNull(strGroup2);
        logcatBean.level = String.valueOf(strGroup2.charAt(0));
        String strGroup3 = matcher.group(5);
        Objects.requireNonNull(strGroup3);
        logcatBean.tag = strGroup3.trim();
        String strGroup4 = matcher.group(6);
        Objects.requireNonNull(strGroup4);
        logcatBean.msg = strGroup4;
        logcatBean.log = str;
        return true;
    }

    private static boolean matchPatternLegacy(String str, LogcatBean logcatBean) {
        Matcher matcher = LOG_PATTERN_LEGACY.matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        logcatBean.time = matcher.group(1);
        logcatBean.level = matcher.group(2);
        String strGroup = matcher.group(3);
        Objects.requireNonNull(strGroup);
        logcatBean.tag = strGroup.trim();
        logcatBean.pid = matcher.group(4);
        logcatBean.packName = "";
        logcatBean.appName = "";
        logcatBean.msg = matcher.group(5);
        logcatBean.log = str;
        return true;
    }

    public static LogcatBean newLogLine(String str) {
        LogcatBean logcatBean = new LogcatBean();
        if (matchPattern(str, logcatBean) || matchPatternLegacy(str, logcatBean)) {
            return logcatBean;
        }
        return null;
    }
}
