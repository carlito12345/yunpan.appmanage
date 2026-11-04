package eh;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class k extends j {

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f4996e = Pattern.compile("(.*?);([0-9]{1,20})\\s{0,80}.{0,80}");

    public k(dh.f fVar) {
        a(fVar);
    }

    @Override // dh.h
    public final void c(LinkedList linkedList) throws NumberFormatException {
        Pattern pattern;
        HashMap map = new HashMap();
        ListIterator listIterator = linkedList.listIterator();
        while (true) {
            boolean zHasNext = listIterator.hasNext();
            pattern = f4996e;
            if (!zHasNext) {
                break;
            }
            Matcher matcher = pattern.matcher(((String) listIterator.next()).trim());
            if (matcher.matches()) {
                MatchResult matchResult = matcher.toMatchResult();
                String strGroup = matchResult.group(1);
                Integer numValueOf = Integer.valueOf(matchResult.group(2));
                Integer num = (Integer) map.get(strGroup);
                if (num == null || numValueOf.intValue() >= num.intValue()) {
                    map.put(strGroup, numValueOf);
                } else {
                    listIterator.remove();
                }
            }
        }
        while (listIterator.hasPrevious()) {
            Matcher matcher2 = pattern.matcher(((String) listIterator.previous()).trim());
            if (matcher2.matches()) {
                MatchResult matchResult2 = matcher2.toMatchResult();
                String strGroup2 = matchResult2.group(1);
                int i10 = Integer.parseInt(matchResult2.group(2));
                Integer num2 = (Integer) map.get(strGroup2);
                if (num2 != null && i10 < num2.intValue()) {
                    listIterator.remove();
                }
            }
        }
    }
}
