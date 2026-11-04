.class public final Lx9/s1;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e014d

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lx9/w3;

    .line 4
    .line 5
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    const v2, 0x7f0b0531

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "/storage/emulated/0"

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "/sdcard"

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p2, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "\u5931\u8d25\u539f\u56e0\uff1a"

    .line 86
    .line 87
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p3, p3, Lx9/w3;->j:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const p3, 0x7f0b057b

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
