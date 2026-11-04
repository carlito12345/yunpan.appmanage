.class public final Lu4/a;
.super Lu4/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lu4/x;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lu4/f;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lu4/f;->a:Lu4/w;

    .line 2
    .line 3
    return-void
.end method

.method public final b()Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->r:Lu4/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Lu4/x;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "uninternable instance"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final i(Lu4/w;I)V
    .locals 0

    .line 1
    const/16 p1, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lu4/x;->j(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Lu4/f;Lb5/b;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lb5/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lu4/x;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " annotations directory"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, v0, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "  class_annotations_off: "

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-virtual {p2, v1, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "  fields_size:           "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, v1, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v2, "  methods_size:          "

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, v1, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v2, "  parameters_size:       "

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, v1, p1}, Lb5/b;->b(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Lb5/b;->j(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
