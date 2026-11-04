.class public final Lac/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\\r|\\n|\\r\\n"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "compile(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 4

    .line 1
    const-string v0, "editor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lgf/g;

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lbc/a;

    .line 17
    .line 18
    invoke-direct {v1}, Lbc/a;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lm7/e;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lbc/a;->a(Lbc/b;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lm7/e;

    .line 35
    .line 36
    const/16 v3, 0xb

    .line 37
    .line 38
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lbc/a;->a(Lbc/b;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lgf/g;

    .line 45
    .line 46
    const/16 v3, 0xc

    .line 47
    .line 48
    invoke-direct {v2, v3}, Lgf/g;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lbc/a;->a(Lbc/b;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lm7/e;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lbc/a;->a(Lbc/b;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lbc/a;->a(Lbc/b;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lac/a;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v0, p0, v1}, Lac/a;-><init>(Lac/b;I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 72
    .line 73
    const-class v2, Ldb/x;

    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lac/a;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-direct {v0, p0, v1}, Lac/a;-><init>(Lac/b;I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 85
    .line 86
    const-class v1, Ldb/d;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Ldb/p;->f(Ljava/lang/Class;Ldb/q;)Ldb/z;

    .line 89
    .line 90
    .line 91
    return-void
.end method
