package eh;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public abstract class b extends dh.h implements dh.a {

    /* renamed from: a, reason: collision with root package name */
    public Pattern f4978a;

    /* renamed from: b, reason: collision with root package name */
    public MatchResult f4979b;

    /* renamed from: c, reason: collision with root package name */
    public Matcher f4980c;

    /* renamed from: d, reason: collision with root package name */
    public final d f4981d;

    public b(String str) {
        e(0, str);
        this.f4981d = new d();
    }

    @Override // dh.a
    public final void a(dh.f fVar) {
        d dVar = this.f4981d;
        if (dVar instanceof dh.a) {
            dh.f fVarF = f();
            if (fVar == null) {
                dVar.a(fVarF);
                return;
            }
            if (fVar.f4661b == null) {
                fVar.f4661b = fVarF.f4661b;
            }
            if (fVar.f4662c == null) {
                fVar.f4662c = fVarF.f4662c;
            }
            dVar.a(fVar);
        }
    }

    public final void e(int i10, String str) {
        try {
            this.f4978a = Pattern.compile(str, i10);
        } catch (PatternSyntaxException unused) {
            throw new IllegalArgumentException("Unparseable regex supplied: ".concat(str));
        }
    }

    public abstract dh.f f();

    public final String g(int i10) {
        MatchResult matchResult = this.f4979b;
        if (matchResult == null) {
            return null;
        }
        return matchResult.group(i10);
    }

    public final boolean h(String str) {
        this.f4979b = null;
        Matcher matcher = this.f4978a.matcher(str);
        this.f4980c = matcher;
        if (matcher.matches()) {
            this.f4979b = this.f4980c.toMatchResult();
        }
        return this.f4979b != null;
    }

    public b() {
        e(32, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)");
        this.f4981d = new d();
    }
}
