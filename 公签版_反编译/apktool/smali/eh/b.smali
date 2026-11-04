.class public abstract Leh/b;
.super Ldh/h;
.source "SourceFile"

# interfaces
.implements Ldh/a;


# instance fields
.field public a:Ljava/util/regex/Pattern;

.field public b:Ljava/util/regex/MatchResult;

.field public c:Ljava/util/regex/Matcher;

.field public final d:Leh/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ldh/h;-><init>()V

    .line 5
    const-string v0, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Leh/b;->e(ILjava/lang/String;)V

    .line 6
    new-instance v0, Leh/d;

    invoke-direct {v0}, Leh/d;-><init>()V

    iput-object v0, p0, Leh/b;->d:Leh/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldh/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Leh/b;->e(ILjava/lang/String;)V

    .line 3
    new-instance p1, Leh/d;

    invoke-direct {p1}, Leh/d;-><init>()V

    iput-object p1, p0, Leh/b;->d:Leh/d;

    return-void
.end method


# virtual methods
.method public final a(Ldh/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/b;->d:Leh/d;

    .line 2
    .line 3
    instance-of v1, v0, Ldh/a;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Leh/b;->f()Ldh/f;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v2, p1, Ldh/f;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Ldh/f;->b:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v2, p1, Ldh/f;->b:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v2, p1, Ldh/f;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Ldh/f;->c:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p1, Ldh/f;->c:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    invoke-interface {v0, p1}, Ldh/a;->a(Ldh/f;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v0, v1}, Ldh/a;->a(Ldh/f;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Leh/b;->a:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Unparseable regex supplied: "

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public abstract f()Ldh/f;
.end method

.method public final g(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Leh/b;->b:Ljava/util/regex/MatchResult;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Leh/b;->b:Ljava/util/regex/MatchResult;

    .line 3
    .line 4
    iget-object v0, p0, Leh/b;->a:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Leh/b;->c:Ljava/util/regex/Matcher;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Leh/b;->c:Ljava/util/regex/Matcher;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Leh/b;->b:Ljava/util/regex/MatchResult;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Leh/b;->b:Ljava/util/regex/MatchResult;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method
