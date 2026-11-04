.class public Lcom/yunpan/appmanage/ui/ActivityShell;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic M:I


# instance fields
.field public C:Landroid/widget/EditText;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/ImageView;

.field public F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public G:Lx9/v4;

.field public H:Lha/lc;

.field public final I:Ljava/text/SimpleDateFormat;

.field public K:Landroidx/core/widget/NestedScrollView;

.field public L:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->I:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    return-void
.end method

.method public static D(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "adb tcpip "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "adb version"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    const-string v0, "adb kill"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    const-string v0, "adb devices"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    const-string v0, "adb track-devies"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    const-string v0, "adb emulator"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "adb transport"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    const-string v0, "adb transport-usb"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    const-string v0, "adb transport-local"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "adb transport-any"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    const-string v0, "adb tcp"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return v1

    .line 95
    :cond_3
    :goto_0
    return v2
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityShell;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "[\u5f53\u524d\u7528\u6237]"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 32
    .line 33
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v1, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->A(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 45
    .line 46
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 63
    .line 64
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->B(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 74
    .line 75
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->z(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->A(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->y(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "adb shell"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->I:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "\u672c\u8eab\u5c31\u662fshell\u4f1a\u8bdd\u5f53\u4e2d\n\n"

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lcom/yunpan/appmanage/ui/ActivityShell;->D(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "\u4e0d\u652f\u6301\u6b64\u6307\u4ee4\uff0c\u5982\u6709\u9700\u8981\u8bf7\u7528\u8d85\u7ea7\u7ec8\u7aef\uff08termux\uff09\n\n"

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-static {p2}, La2/w0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string v0, "adb "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "\u672c\u673a\u6267\u884c\u4e0d\u652f\u6301\u6267\u884c\u6b64adb\u6307\u4ee4\uff0c\u4ec5\u652f\u6301adb shell\u4f1a\u8bdd\u6307\u4ee4\n\n"

    .line 102
    .line 103
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 130
    .line 131
    new-instance v1, Lx9/j1;

    .line 132
    .line 133
    const-string v2, "\u6267\u884c\u4e2d"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Ljava/lang/String;

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    aput-object p2, v0, v1

    .line 146
    .line 147
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v0, Lua/i6;

    .line 152
    .line 153
    invoke-direct {v0, p0, p1}, Lua/i6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Ls1/g;->e0(Lua/i6;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final B(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 2
    .line 3
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lua/v0;

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lmc/c;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lha/l4;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v1, p0, p1, p2, v2}, Lha/l4;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yunpan/appmanage/ui/ActivityShell;->C(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final C(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "adb shell"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->I:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "\u672c\u8eab\u5c31\u662fshell\u4f1a\u8bdd\u5f53\u4e2d\n\n"

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lcom/yunpan/appmanage/ui/ActivityShell;->D(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "\u4e0d\u652f\u6301\u6b64\u6307\u4ee4\uff0c\u5982\u6709\u9700\u8981\u8bf7\u7528\u8d85\u7ea7\u7ec8\u7aef\uff08termux\uff09\n\n"

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-static {p2}, La2/w0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string v0, "adb "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "\u4e0d\u652f\u6301\u6267\u884c\u6b64adb\u6307\u4ee4\uff0c\u4ec5\u652f\u6301shell\u6307\u4ee4\n\n"

    .line 102
    .line 103
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 130
    .line 131
    new-instance v1, Lx9/j1;

    .line 132
    .line 133
    const-string v2, "\u6267\u884c\u4e2d"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lb8/a;

    .line 142
    .line 143
    const/16 v1, 0xf

    .line 144
    .line 145
    invoke-direct {v0, p2, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    new-instance p2, Lmc/c;

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-direct {p2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 155
    .line 156
    invoke-virtual {p2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    new-instance v0, Lua/l6;

    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-direct {v0, p0, p1, v1}, Lua/l6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const-string v0, "input_method"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return v1

    .line 41
    :cond_1
    invoke-super {p0, p1}, Lq/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lda/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lua/g6;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lmc/c;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lha/h3;

    .line 43
    .line 44
    const/16 v2, 0x10

    .line 45
    .line 46
    invoke-direct {v1, p0, v2, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    new-instance v1, Lcom/gj/server/a;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, v2}, Lcom/gj/server/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onReceiveMsg(Lja/a;)V
    .locals 4
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p1, Lja/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lja/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v3, "adb shell "

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->A(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-ne v2, v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, v2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->y(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 87
    .line 88
    invoke-virtual {v2}, Lfa/j;->i()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    sget-object v2, Lfa/l;->a:Lfa/m;

    .line 95
    .line 96
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->A(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->y(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_1
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0051

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f0b053c

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "/qrCode_cmd"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "file://"

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const v1, 0x7f0b0430

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/EditText;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 84
    .line 85
    const v1, 0x7f0b052c

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 95
    .line 96
    const v1, 0x7f0b04f6

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 108
    .line 109
    new-instance v2, Lua/j6;

    .line 110
    .line 111
    invoke-direct {v2, p0, v0}, Lua/j6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    .line 116
    .line 117
    const v1, 0x7f0b055d

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->K:Landroidx/core/widget/NestedScrollView;

    .line 127
    .line 128
    const v1, 0x7f0b04b2

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->L:Landroid/widget/HorizontalScrollView;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 140
    .line 141
    const-string v2, "\u8f93\u5165\u8981\u6267\u884c\u7684\u547d\u4ee4,\u65e0\u9700\u8f93\u5165\u524d\u7f00(adb shell)\n\n\u5982\u679c\u60a8\u5df2\u8fde\u63a5adb\u7684\u5219\u70b9\u51fb [adb\u6267\u884c]\n\n\u5982\u679c\u4f60root\u5df2\u6388\u6743 \u6216\u8005 \u6ca1\u8fde\u63a5adb\uff0c\u8bf7\u70b9\u51fb [\u672c\u673a\u6267\u884c] \u5373\u53ef\n\n\n\n\u6ce8\uff1a\u53ea\u652f\u6301\u7b80\u5355\u7684shell\u547d\u4ee4\uff0c\u4e0d\u652f\u6301\u6587\u4ef6\u7f16\u8f91\u547d\u4ee4 \u6216 \u6d41\u5f0f\u547d\u4ee4 \u6216 \u76d1\u542c\u5237\u65b0\u547d\u4ee4\uff01\u5982\u9700\u6267\u884c\u9ad8\u7ea7\u7684\u547d\u4ee4\uff0c\u8bf7\u7528\u8d85\u7ea7\u7ec8\u7aef(termux)\n\u6bd4\u5982\u8bfb\u53d6\u65e5\u5fd7\u547d\u4ee4\uff0c\u4f60\u9700\u8981\u8fd9\u6837\u5199(\u53ea\u770b\u6700\u65b0500\u6761)\uff1alogcat -d -t 500\n\u6bd4\u5982top\uff0c\u9700\u8fd9\u6837\u5199(\u4ec5\u5237\u65b0\u4e00\u6b21)\uff1atop -n 1"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 147
    .line 148
    new-instance v2, Lua/j6;

    .line 149
    .line 150
    const/4 v3, 0x1

    .line 151
    invoke-direct {v2, p0, v3}, Lua/j6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 158
    .line 159
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 160
    .line 161
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 162
    .line 163
    invoke-direct {v2, v3, v0, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lx9/v4;

    .line 170
    .line 171
    invoke-direct {v0}, Lx9/v4;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 182
    .line 183
    new-instance v1, Lx9/j1;

    .line 184
    .line 185
    const-string v2, "\u672c\u673a\u6267\u884c"

    .line 186
    .line 187
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 194
    .line 195
    new-instance v1, Lx9/j1;

    .line 196
    .line 197
    const-string v2, "adb\u6267\u884c"

    .line 198
    .line 199
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 206
    .line 207
    const/16 v1, 0x17

    .line 208
    .line 209
    if-lt v0, v1, :cond_1

    .line 210
    .line 211
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 212
    .line 213
    new-instance v2, Lx9/j1;

    .line 214
    .line 215
    const-string v3, "\u96eb\u6267\u884c"

    .line 216
    .line 217
    invoke-direct {v2, v3}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_1
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 224
    .line 225
    new-instance v2, Lx9/j1;

    .line 226
    .line 227
    const-string v3, "\u5feb\u6377\u6307\u4ee4"

    .line 228
    .line 229
    invoke-direct {v2, v3}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_2

    .line 244
    .line 245
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 246
    .line 247
    new-instance v2, Lx9/j1;

    .line 248
    .line 249
    const-string v3, "\u63a8\u9001"

    .line 250
    .line 251
    invoke-direct {v2, v3}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_2
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 258
    .line 259
    new-instance v2, Lx9/j1;

    .line 260
    .line 261
    const-string v3, "\u626b\u7801\u8f93\u5165"

    .line 262
    .line 263
    invoke-direct {v2, v3}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    const/16 v1, 0x15

    .line 270
    .line 271
    if-lt v0, v1, :cond_4

    .line 272
    .line 273
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {}, La2/w0;->P()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_3

    .line 283
    .line 284
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 285
    .line 286
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 287
    .line 288
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 289
    .line 290
    if-eqz v0, :cond_4

    .line 291
    .line 292
    :cond_3
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 293
    .line 294
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_4

    .line 303
    .line 304
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 305
    .line 306
    new-instance v1, Lx9/j1;

    .line 307
    .line 308
    const-string v2, "\u6fc0\u6d3b\u7b2c\u4e09\u65b9"

    .line 309
    .line 310
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 317
    .line 318
    new-instance v1, Lx9/j1;

    .line 319
    .line 320
    const-string v2, "\u7c98\u8d34"

    .line 321
    .line 322
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 329
    .line 330
    new-instance v1, Lx9/j1;

    .line 331
    .line 332
    const-string v2, "\u6e05\u7a7a"

    .line 333
    .line 334
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 341
    .line 342
    new-instance v1, Lx9/j1;

    .line 343
    .line 344
    const-string v2, "\u5bfc\u51fa"

    .line 345
    .line 346
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 353
    .line 354
    new-instance v1, Lx9/j1;

    .line 355
    .line 356
    const-string v2, "\u8fd4\u56de"

    .line 357
    .line 358
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 367
    .line 368
    .line 369
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 370
    .line 371
    new-instance v1, Lua/h6;

    .line 372
    .line 373
    const/4 v2, 0x3

    .line 374
    invoke-direct {v1, p0, v2}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 375
    .line 376
    .line 377
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 378
    .line 379
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 380
    .line 381
    new-instance v1, Lua/m6;

    .line 382
    .line 383
    invoke-direct {v1, p0}, Lua/m6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 390
    .line 391
    new-instance v1, Lua/h6;

    .line 392
    .line 393
    const/4 v2, 0x4

    .line 394
    invoke-direct {v1, p0, v2}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "adb shell"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->I:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "\u65e0\u9700\u6267\u884cadb shell\uff0c\u672c\u8eab\u5df2\u5728shell\u4f1a\u8bdd\u5f53\u4e2d\n\n"

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lcom/yunpan/appmanage/ui/ActivityShell;->D(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "\u4e0d\u652f\u6301\u6b64\u6307\u4ee4\uff0c\u5982\u6709\u9700\u8981\u8bf7\u7528\u8d85\u7ea7\u7ec8\u7aef\uff08termux\uff09\n\n"

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const-string v0, "adb install "

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v0, "\u4e0d\u652f\u6301adb install\uff0c\u8bf7\u7528pm install\n\n"

    .line 98
    .line 99
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 126
    .line 127
    new-instance v1, Lx9/j1;

    .line 128
    .line 129
    const-string v2, "\u6267\u884c\u4e2d"

    .line 130
    .line 131
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, La2/w0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 142
    .line 143
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    new-instance v0, Lb8/a;

    .line 150
    .line 151
    const/16 v1, 0x10

    .line 152
    .line 153
    invoke-direct {v0, p2, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Lmc/c;

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-direct {p2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 163
    .line 164
    invoke-virtual {p2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    new-instance v0, Lua/l6;

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-direct {v0, p0, p1, v1}, Lua/l6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 187
    .line 188
    new-instance v1, Lua/i6;

    .line 189
    .line 190
    invoke-direct {v1, p0, p1}, Lua/i6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 191
    .line 192
    .line 193
    iput-object v1, v0, Lfa/j;->a:Lfa/g;

    .line 194
    .line 195
    sget-object p1, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 196
    .line 197
    new-instance v1, La2/c0;

    .line 198
    .line 199
    const/16 v2, 0x15

    .line 200
    .line 201
    invoke-direct {v1, v0, v2, p2}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    .line 206
    .line 207
    :goto_0
    return-void
.end method

.method public final z(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "adb shell"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->I:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "\u672c\u8eab\u5c31\u662fshell\u4f1a\u8bdd\u5f53\u4e2d\n\n"

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lcom/yunpan/appmanage/ui/ActivityShell;->D(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "\u4e0d\u652f\u6301\u6b64\u6307\u4ee4\uff0c\u5982\u6709\u9700\u8981\u8bf7\u7528\u8d85\u7ea7\u7ec8\u7aef\uff08termux\uff09\n\n"

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-static {p2}, La2/w0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string v0, "adb "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, "\u4ec5\u652f\u6301adb shell\u4f1a\u8bdd\u6307\u4ee4\n\n"

    .line 102
    .line 103
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 130
    .line 131
    new-instance v1, Lx9/j1;

    .line 132
    .line 133
    const-string v2, "\u6267\u884c\u4e2d"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lb8/a;

    .line 142
    .line 143
    const/16 v1, 0xe

    .line 144
    .line 145
    invoke-direct {v0, p2, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    new-instance p2, Lmc/c;

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-direct {p2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 155
    .line 156
    invoke-virtual {p2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    new-instance v0, Lua/l6;

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-direct {v0, p0, p1, v1}, Lua/l6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method
